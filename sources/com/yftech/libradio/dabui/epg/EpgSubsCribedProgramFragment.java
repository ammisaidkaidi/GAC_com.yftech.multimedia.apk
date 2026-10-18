package com.yftech.libradio.dabui.epg;

import android.os.AsyncTask;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.epg.Location;
import com.yftech.car.media.radio.dab.entity.epg.Programme;
import com.yftech.libradio.R;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class EpgSubsCribedProgramFragment extends EpgBaseFragment {
    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    public void onStart() {
        super.onStart();
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    public void onStop() {
        super.onStop();
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    void getProgrammeList(Calendar calendar) {
        new UpdateSubsCribedProgrammeData(calendar).execute(new Object[0]);
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    String getTipsForEmptyContent() {
        return getString(R.string.dab_epg_none_of_subscribed_tips);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class UpdateSubsCribedProgrammeData extends AsyncTask<Object, Void, Object> {
        private Calendar mTime;

        UpdateSubsCribedProgrammeData(Calendar calendar) {
            this.mTime = calendar;
        }

        @Override // android.os.AsyncTask
        protected final Object doInBackground(Object[] objArr) {
            try {
                if (this.mTime == null) {
                    LogUtil.w("time parameter request---");
                    return null;
                }
                List<Programme> epgProgrammeList = CarDabRadioManager.getInstance().getEpgProgrammeList();
                if (epgProgrammeList != null && !epgProgrammeList.isEmpty()) {
                    return EpgUtils.sortProgramList(EpgSubsCribedProgramFragment.this.currentDate, filterEpgData(epgProgrammeList));
                }
                LogUtil.w("subsCribed programmeList is empty---");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                LogUtil.i("error ---");
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (obj == null) {
                EpgSubsCribedProgramFragment.this.onProgrameGot(null);
            } else {
                EpgSubsCribedProgramFragment.this.onProgrameGot((List) obj);
            }
        }

        private List<Programme> filterEpgData(List<Programme> list) {
            ArrayList arrayList = new ArrayList();
            if (list == null || list.isEmpty()) {
                LogUtil.w("programmeList is empty !!!!");
                return arrayList;
            }
            for (Programme programme : list) {
                List list2 = programme.mLocations;
                if (list2 == null || list2.isEmpty()) {
                    LogUtil.w("locations is empty !!!!");
                } else {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        Date fomatTime = TimeUtils.fomatTime(((Location) it.next()).time);
                        if (fomatTime == null) {
                            LogUtil.d("programTime is null ---");
                        } else {
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(fomatTime);
                            if (calendar.get(1) == this.mTime.get(1) && calendar.get(2) == this.mTime.get(2) && calendar.get(5) == this.mTime.get(5)) {
                                arrayList.add(programme);
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
    }
}
