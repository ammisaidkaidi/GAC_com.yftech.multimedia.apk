package com.media.common.util;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ValueUtil {
    public static String format(double d) {
        return new DecimalFormat("#,##0.00").format(d);
    }

    public static String format1(double d) {
        return new DecimalFormat("#,##0.0").format(d);
    }

    public static double getDPoint(double d, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("The bit must be a positive integer or zero");
        }
        if (i == 0) {
            return parseDouble(new DecimalFormat(AppConstants.VALUE_HIDE).format(d));
        }
        StringBuilder sb = new StringBuilder("0.");
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(AppConstants.VALUE_HIDE);
        }
        return parseDouble(new DecimalFormat(sb.toString()).format(d - Math.round(d)));
    }

    public static Double add(Double d, Double d2) {
        return Double.valueOf(new BigDecimal(Double.toString(d.doubleValue())).add(new BigDecimal(Double.toString(d2.doubleValue()))).doubleValue());
    }

    public static double sub(Double d, Double d2) {
        return new BigDecimal(Double.toString(d.doubleValue())).subtract(new BigDecimal(Double.toString(d2.doubleValue()))).doubleValue();
    }

    public static Double mul(Double d, Double d2) {
        return Double.valueOf(new BigDecimal(Double.toString(d.doubleValue())).multiply(new BigDecimal(Double.toString(d2.doubleValue()))).doubleValue());
    }

    public static Double divide(Double d, Double d2) {
        return divide(d, d2, 4);
    }

    public static Double divide(Double d, Double d2, Integer num) {
        if (num.intValue() < 0) {
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        return Double.valueOf(new BigDecimal(Double.toString(d.doubleValue())).divide(new BigDecimal(Double.toString(d2.doubleValue())), num.intValue(), RoundingMode.HALF_UP).doubleValue());
    }

    public static double round(double d, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        return new BigDecimal(Double.toString(d)).divide(new BigDecimal(AppConstants.VALUE_SHOW), i, RoundingMode.HALF_UP).doubleValue();
    }

    public static String subZeroAndDot(String str) {
        return str.indexOf(".") > 0 ? str.replaceAll("0+?$", "").replaceAll("[.]$", "") : str;
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int sp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int px2dp(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2sp(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int parseInt(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static long parseLong(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0L;
            }
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static double parseDouble(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return 0.0d;
            }
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    public static double parseFloat(String str) {
        float f = 0.0f;
        try {
            if (!TextUtils.isEmpty(str)) {
                f = Float.parseFloat(str);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return f;
    }

    public static double getDouble(double d) {
        return new BigDecimal(d).setScale(2, 4).doubleValue();
    }

    public static boolean parseBoolean(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return Boolean.parseBoolean(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return false;
        }
    }
}
