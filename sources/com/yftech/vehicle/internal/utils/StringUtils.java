package com.yftech.vehicle.internal.utils;

import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes4.dex */
public class StringUtils {
    public static boolean isNumeric(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static boolean isContainChinese(String str) {
        return str != null && Pattern.compile("[一-龥]").matcher(str).find();
    }
}
