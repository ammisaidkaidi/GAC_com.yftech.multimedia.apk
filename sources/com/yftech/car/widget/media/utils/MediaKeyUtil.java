package com.yftech.car.widget.media.utils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaKeyUtil {
    public static String getVideoKeyValue(int i) {
        switch (i) {
            case 1:
                return "play";
            case 2:
                return "pause";
            case 3:
                return "play pause switch";
            case 4:
                return "next";
            case 5:
                return "prev";
            default:
                return String.valueOf(i);
        }
    }

    public static String getInputKeyValue(int i) {
        if (i == 37) {
            return "PLAY pause";
        }
        switch (i) {
            case 1:
                return "seek inc";
            case 2:
                return "seek dec";
            default:
                return String.valueOf(i);
        }
    }
}
