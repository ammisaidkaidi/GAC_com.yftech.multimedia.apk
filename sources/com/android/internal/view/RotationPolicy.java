package com.android.internal.view;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class RotationPolicy {
    private static final int CURRENT_ROTATION = -1;
    public static final int NATURAL_ROTATION = 0;
    private static final String TAG = "RotationPolicy";

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class RotationPolicyListener {
        final ContentObserver mObserver = new ContentObserver(new Handler()) { // from class: com.android.internal.view.RotationPolicy.RotationPolicyListener.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                RotationPolicyListener.this.onChange();
            }
        };

        public abstract void onChange();
    }

    private RotationPolicy() {
    }

    public static boolean isRotationSupported(Context context) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager.hasSystemFeature("android.hardware.sensor.accelerometer") && packageManager.hasSystemFeature("android.hardware.screen.portrait") && packageManager.hasSystemFeature("android.hardware.screen.landscape") && context.getResources().getBoolean(17957033);
    }

    public static int getRotationLockOrientation(Context context) {
        if (!areAllRotationsAllowed(context)) {
            Point point = new Point();
            try {
                WindowManagerGlobal.getWindowManagerService().getInitialDisplaySize(0, point);
                return point.x < point.y ? 1 : 2;
            } catch (RemoteException unused) {
                Log.w(TAG, "Unable to get the display size");
            }
        }
        return 0;
    }

    public static boolean isRotationLockToggleVisible(Context context) {
        return isRotationSupported(context) && Settings.System.getIntForUser(context.getContentResolver(), "hide_rotation_lock_toggle_for_accessibility", 0, -2) == 0;
    }

    public static boolean isRotationLocked(Context context) {
        return Settings.System.getIntForUser(context.getContentResolver(), "accelerometer_rotation", 0, -2) == 0;
    }

    public static void setRotationLock(Context context, boolean z) {
        setRotationLockAtAngle(context, z, areAllRotationsAllowed(context) ? -1 : 0);
    }

    public static void setRotationLockAtAngle(Context context, boolean z, int i) {
        Settings.System.putIntForUser(context.getContentResolver(), "hide_rotation_lock_toggle_for_accessibility", 0, -2);
        setRotationLock(z, i);
    }

    public static void setRotationLockForAccessibility(Context context, boolean z) {
        Settings.System.putIntForUser(context.getContentResolver(), "hide_rotation_lock_toggle_for_accessibility", z ? 1 : 0, -2);
        setRotationLock(z, 0);
    }

    private static boolean areAllRotationsAllowed(Context context) {
        return context.getResources().getBoolean(17956870);
    }

    private static void setRotationLock(final boolean z, final int i) {
        AsyncTask.execute(new Runnable() { // from class: com.android.internal.view.RotationPolicy.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    IWindowManager windowManagerService = WindowManagerGlobal.getWindowManagerService();
                    if (z) {
                        windowManagerService.freezeRotation(i);
                    } else {
                        windowManagerService.thawRotation();
                    }
                } catch (RemoteException unused) {
                    Log.w(RotationPolicy.TAG, "Unable to save auto-rotate setting");
                }
            }
        });
    }

    public static void registerRotationPolicyListener(Context context, RotationPolicyListener rotationPolicyListener) {
        registerRotationPolicyListener(context, rotationPolicyListener, UserHandle.getCallingUserId());
    }

    public static void registerRotationPolicyListener(Context context, RotationPolicyListener rotationPolicyListener, int i) {
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, rotationPolicyListener.mObserver, i);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("hide_rotation_lock_toggle_for_accessibility"), false, rotationPolicyListener.mObserver, i);
    }

    public static void unregisterRotationPolicyListener(Context context, RotationPolicyListener rotationPolicyListener) {
        context.getContentResolver().unregisterContentObserver(rotationPolicyListener.mObserver);
    }
}
