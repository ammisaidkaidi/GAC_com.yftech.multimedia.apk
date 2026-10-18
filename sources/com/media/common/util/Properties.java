package com.media.common.util;

import com.wuyr.pathlayoutmanager.PathLayoutManager;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes3.dex */
public class Properties {
    public static String getProperty(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void setProperty(String str, String str2) {
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
        }
    }

    public static int test(PathLayoutManager pathLayoutManager, int i) {
        try {
            Method declaredMethod = pathLayoutManager.getClass().getDeclaredMethod("getDistance", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(pathLayoutManager, Integer.valueOf(i));
            return ValueUtil.parseInt(invoke == null ? "" : invoke.toString());
        } catch (Exception unused) {
            return -1;
        }
    }
}
