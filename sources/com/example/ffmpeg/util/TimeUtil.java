package com.example.ffmpeg.util;

import com.media.common.util.AppConstants;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TimeUtil {
    public static String secdsToDateFormat(int i, int i2) {
        long j = i / 3600;
        long j2 = (i % 3600) / 60;
        long j3 = i % 60;
        String str = "00";
        if (j > 0) {
            if (j < 10) {
                str = AppConstants.VALUE_HIDE + j;
            } else {
                str = j + "";
            }
        }
        String str2 = "00";
        if (j2 > 0) {
            if (j2 < 10) {
                str2 = AppConstants.VALUE_HIDE + j2;
            } else {
                str2 = j2 + "";
            }
        }
        String str3 = "00";
        if (j3 > 0) {
            if (j3 < 10) {
                str3 = AppConstants.VALUE_HIDE + j3;
            } else {
                str3 = j3 + "";
            }
        }
        if (i2 >= 3600) {
            return str + ":" + str2 + ":" + str3;
        }
        return str2 + ":" + str3;
    }
}
