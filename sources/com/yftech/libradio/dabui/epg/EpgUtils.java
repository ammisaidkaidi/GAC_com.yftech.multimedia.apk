package com.yftech.libradio.dabui.epg;

import android.os.Build;
import android.text.TextUtils;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.entity.epg.Location;
import com.yftech.car.media.radio.dab.entity.epg.Programme;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class EpgUtils {
    public static List<Programme> sortProgramList(Calendar calendar, List<Programme> list) {
        if (list == null || list.isEmpty()) {
            return list;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            list.sort(new Comparator<Programme>() { // from class: com.yftech.libradio.dabui.epg.EpgUtils.1
                @Override // java.util.Comparator
                public int compare(Programme programme, Programme programme2) {
                    Calendar time = EpgUtils.getTime(programme);
                    Calendar time2 = EpgUtils.getTime(programme2);
                    if (time == null || time2 == null) {
                        return 0;
                    }
                    long timeInMillis = time.getTimeInMillis() - time2.getTimeInMillis();
                    if (timeInMillis > 0) {
                        return 1;
                    }
                    return timeInMillis == 0 ? 0 : -1;
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Programme programme : list) {
            if (isProgramPlaying(calendar, programme)) {
                arrayList.add(programme);
            } else {
                Calendar actualTime = getActualTime(programme);
                if (actualTime == null || !calendar.getTime().after(actualTime.getTime())) {
                    arrayList2.add(programme);
                }
            }
        }
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        return arrayList3;
    }

    public static Calendar getTime(Programme programme) {
        if (programme == null) {
            return null;
        }
        List<Location> list = programme.mLocations;
        if (list == null || list.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("locations is empty, programme name: ");
            sb.append(programme.name == null ? "" : programme.name);
            LogUtil.d(sb.toString());
            return null;
        }
        for (Location location : list) {
            if (location.time == null || TextUtils.isEmpty(location.time)) {
                LogUtil.d("locatin time is empty ---");
            } else {
                Date fomatTime = TimeUtils.fomatTime(location.time);
                if (fomatTime == null) {
                    LogUtil.d("programTime is null ---");
                } else {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(fomatTime);
                    return calendar;
                }
            }
        }
        return null;
    }

    public static Calendar getActualTime(Programme programme) {
        if (programme == null) {
            return null;
        }
        List<Location> list = programme.mLocations;
        if (list == null || list.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("locations is empty, programme name: ");
            sb.append(programme.name == null ? "" : programme.name);
            LogUtil.d(sb.toString());
            return null;
        }
        for (Location location : list) {
            if (location.actualTime == null || TextUtils.isEmpty(location.actualTime)) {
                LogUtil.d("locatin time is empty ---");
            } else {
                Date fomatTime = TimeUtils.fomatTime(location.actualTime);
                if (fomatTime == null) {
                    LogUtil.d("programTime is null ---");
                } else {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(fomatTime);
                    return calendar;
                }
            }
        }
        return null;
    }

    public static boolean isProgramPlaying(Calendar calendar, Programme programme) {
        if (programme == null) {
            return false;
        }
        if (programme.mLocations == null || programme.mLocations.isEmpty()) {
            LogUtil.w("location is empty -----");
            return false;
        }
        for (Location location : programme.mLocations) {
            if (TextUtils.isEmpty(location.actualTime)) {
                LogUtil.d("location.actualTime is empty -----");
            } else if (TextUtils.isEmpty(location.actualDuration)) {
                LogUtil.d("location.actualDuration is empty -----");
            } else {
                Date fomatTime = TimeUtils.fomatTime(location.actualTime);
                if (fomatTime == null) {
                    LogUtil.w("programTime is null -----");
                } else {
                    Duration formatDuration = TimeUtils.formatDuration(location.actualDuration);
                    if (formatDuration == null) {
                        LogUtil.w("duration is null -----");
                    } else if (calendar.getTime().after(fomatTime) && fomatTime.getTime() + formatDuration.toMillis() > calendar.getTime().getTime()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
