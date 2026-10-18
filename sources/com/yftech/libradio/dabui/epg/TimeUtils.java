package com.yftech.libradio.dabui.epg;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes4.dex */
public class TimeUtils {
    public static Date fomatTime(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Duration formatDuration(String str) {
        return Duration.parse(str);
    }
}
