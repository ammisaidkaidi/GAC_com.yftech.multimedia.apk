package android.app;

import android.content.pm.IPackageManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppGlobals {
    public static Application getInitialApplication() {
        return ActivityThread.currentApplication();
    }

    public static String getInitialPackage() {
        return ActivityThread.currentPackageName();
    }

    public static IPackageManager getPackageManager() {
        return ActivityThread.getPackageManager();
    }

    public static int getIntCoreSetting(String str, int i) {
        ActivityThread currentActivityThread = ActivityThread.currentActivityThread();
        return currentActivityThread != null ? currentActivityThread.getIntCoreSetting(str, i) : i;
    }
}
