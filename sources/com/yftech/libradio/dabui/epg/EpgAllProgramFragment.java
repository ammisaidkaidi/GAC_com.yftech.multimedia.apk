package com.yftech.libradio.dabui.epg;

import android.os.AsyncTask;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.car.media.radio.dab.entity.epg.Programme;
import com.yftech.car.media.radio.dab.entity.epg.Schedule;
import com.yftech.libradio.DabDataManager;
import com.yftech.libradio.R;
import com.yftech.libradio.bean.DabChannelInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class EpgAllProgramFragment extends EpgBaseFragment {
    private boolean isStopRequst;
    private CarDabRadioManager.CarDabRadioControlCallback mCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dabui.epg.EpgAllProgramFragment.1
        public void onPlayStatusChange(DabPlayInfo dabPlayInfo) {
            super.onPlayStatusChange(dabPlayInfo);
            EpgAllProgramFragment.this.saveDabPlayInfo(dabPlayInfo);
        }
    };
    private DabPlayInfo mDabPlayInfo;

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    public void onStart() {
        super.onStart();
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.mCallback);
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    public void onStop() {
        super.onStop();
        this.isStopRequst = true;
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.mCallback);
        recoverDabPlay();
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    void getProgrammeList(Calendar calendar) {
        saveDabPlayInfo(CarDabRadioManager.getInstance().getPlayInfo());
        this.isStopRequst = false;
        new UpdateAllProgrammeData(calendar).execute(new Object[0]);
    }

    @Override // com.yftech.libradio.dabui.epg.EpgBaseFragment
    String getTipsForEmptyContent() {
        return getString(R.string.dab_epg_none_of_list_tips);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recoverDabPlay() {
        if (this.mDabPlayInfo != null) {
            DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
            if (playInfo != null && playInfo.getServiceId() == this.mDabPlayInfo.getServiceId() && playInfo.getEnsembleId() == this.mDabPlayInfo.getEnsembleId() && playInfo.getFrequency() == this.mDabPlayInfo.getFrequency()) {
                return;
            }
            CarDabRadioManager.getInstance().setFreq(this.mDabPlayInfo.getFrequency(), this.mDabPlayInfo.getEnsembleId(), this.mDabPlayInfo.getServiceId());
            LogUtil.d("mDabPlayInfo: " + this.mDabPlayInfo.toString());
            return;
        }
        LogUtil.w("mDabPlayInfo is null ----");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDabPlayInfo(DabPlayInfo dabPlayInfo) {
        if (dabPlayInfo != null) {
            if (this.mDabPlayInfo != null && dabPlayInfo.getFrequency() == this.mDabPlayInfo.getFrequency() && dabPlayInfo.getEnsembleId() == this.mDabPlayInfo.getEnsembleId() && dabPlayInfo.getServiceId() == this.mDabPlayInfo.getServiceId()) {
                return;
            }
            List<DabChannelInfo> dabChannelInfoList = DabDataManager.getInstance().getDabChannelInfoList();
            if (dabChannelInfoList == null || dabChannelInfoList.isEmpty()) {
                LogUtil.w("dabChannelInfoList is empty ----");
                return;
            }
            for (DabChannelInfo dabChannelInfo : dabChannelInfoList) {
                if (dabPlayInfo.getFrequency() == dabChannelInfo.getFrequency() && dabPlayInfo.getEnsembleId() == dabChannelInfo.getEnsembleId() && dabPlayInfo.getServiceId() == dabChannelInfo.getServiceId()) {
                    this.mDabPlayInfo = dabPlayInfo;
                    LogUtil.d("save success , dabPlayInfo: " + dabPlayInfo);
                    return;
                }
            }
            LogUtil.w("none dabChannelInfo is matched ----,dabPlayInfo: " + dabPlayInfo);
            return;
        }
        LogUtil.w("dabPlayInfo is null ----");
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class UpdateAllProgrammeData extends AsyncTask<Object, Void, Object> {
        private Calendar mTime;

        UpdateAllProgrammeData(Calendar calendar) {
            this.mTime = calendar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00cd, code lost:
        
            if (r1.isEmpty() == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d0, code lost:
        
            r0 = new java.text.SimpleDateFormat("MMdd", java.util.Locale.ENGLISH).format(r8.mTime.getTime());
            r2 = new java.util.ArrayList();
            r1 = r1.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
        
            if (r1.hasNext() == false) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
        
            r3 = (java.lang.String) r1.next();
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00fc, code lost:
        
            if (r3.contains(r0) == false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00fe, code lost:
        
            r2.addAll(getProgrammesByFileName(r3));
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x010a, code lost:
        
            if (r2.isEmpty() != false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0114, code lost:
        
            return com.yftech.libradio.dabui.epg.EpgUtils.sortProgramList(r8.this$0.currentDate, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0115, code lost:
        
            return null;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected final Object doInBackground(Object[] objArr) {
            try {
                if (this.mTime == null) {
                    LogUtil.w("time parameter request---");
                    return null;
                }
                List<DabChannelInfo> dataDabChannelInfoList = DabDataManager.getInstance().getDataDabChannelInfoList();
                if (dataDabChannelInfoList != null && !dataDabChannelInfoList.isEmpty()) {
                    Iterator<DabChannelInfo> it = dataDabChannelInfoList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DabChannelInfo next = it.next();
                        DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                        if (next.isEpg()) {
                            if (playInfo == null || playInfo.getFrequency() != next.getFrequency() || playInfo.getEnsembleId() != next.getEnsembleId() || playInfo.getServiceId() != next.getServiceId()) {
                                LogUtil.d("set setFreq to epg, Frequency: " + next.getFrequency() + " ,serviceId: " + next.getServiceId());
                                CarDabRadioManager.getInstance().setFreq(next.getFrequency(), next.getEnsembleId(), next.getServiceId());
                            }
                        }
                    }
                } else {
                    LogUtil.w("there are none dab channels ----");
                }
                int i = 30;
                List epgDataNameList = CarDabRadioManager.getInstance().getEpgDataNameList();
                while (true) {
                    if ((epgDataNameList != null && !epgDataNameList.isEmpty()) || i <= 0 || EpgAllProgramFragment.this.isStopRequst) {
                        break;
                    }
                    i--;
                    Thread.sleep(2000L);
                    epgDataNameList = CarDabRadioManager.getInstance().getEpgDataNameList();
                }
                LogUtil.w("epgNameList is empty---");
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
                EpgAllProgramFragment.this.onProgrameGot(null);
            } else {
                EpgAllProgramFragment.this.onProgrameGot((List) obj);
            }
            EpgAllProgramFragment.this.recoverDabPlay();
        }

        private List<Programme> getProgrammesByFileName(String str) {
            if (str == null) {
                LogUtil.w("fileName is request ---");
                return null;
            }
            List data = CarDabRadioManager.getInstance().getNameEpgData(str).getData();
            if (data == null || data.isEmpty()) {
                LogUtil.d("scheduleList is empty ---");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = data.iterator();
            while (it.hasNext()) {
                List programmes = ((Schedule) it.next()).getProgrammes();
                if (programmes == null || programmes.isEmpty()) {
                    LogUtil.d("programmes is empty ---");
                } else {
                    Iterator it2 = programmes.iterator();
                    while (it2.hasNext()) {
                        arrayList.add((Programme) it2.next());
                    }
                }
            }
            return arrayList;
        }
    }
}
