package android.service.dreams;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.service.dreams.IDreamManager;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class Sandman {
    private static final ComponentName SOMNAMBULATOR_COMPONENT = new ComponentName("com.android.systemui", "com.android.systemui.Somnambulator");
    private static final String TAG = "Sandman";

    private Sandman() {
    }

    public static boolean shouldStartDockApp(Context context, Intent intent) {
        ComponentName resolveActivity = intent.resolveActivity(context.getPackageManager());
        return (resolveActivity == null || resolveActivity.equals(SOMNAMBULATOR_COMPONENT)) ? false : true;
    }

    public static void startDreamByUserRequest(Context context) {
        startDream(context, false);
    }

    public static void startDreamWhenDockedIfAppropriate(Context context) {
        if (!isScreenSaverEnabled(context) || !isScreenSaverActivatedOnDock(context)) {
            Slog.i(TAG, "Dreams currently disabled for docks.");
        } else {
            startDream(context, true);
        }
    }

    private static void startDream(Context context, boolean z) {
        try {
            IDreamManager asInterface = IDreamManager.Stub.asInterface(ServiceManager.getService(DreamService.DREAM_SERVICE));
            if (asInterface == null || asInterface.isDreaming()) {
                return;
            }
            if (z) {
                Slog.i(TAG, "Activating dream while docked.");
                ((PowerManager) context.getSystemService("power")).wakeUp(SystemClock.uptimeMillis(), "android.service.dreams:DREAM");
            } else {
                Slog.i(TAG, "Activating dream by user request.");
            }
            asInterface.dream();
        } catch (RemoteException e) {
            Slog.e(TAG, "Could not start dream when docked.", e);
        }
    }

    private static boolean isScreenSaverEnabled(Context context) {
        return Settings.Secure.getIntForUser(context.getContentResolver(), Settings.Secure.SCREENSAVER_ENABLED, context.getResources().getBoolean(R.^attr-private.fromTop) ? 1 : 0, -2) != 0;
    }

    private static boolean isScreenSaverActivatedOnDock(Context context) {
        return Settings.Secure.getIntForUser(context.getContentResolver(), Settings.Secure.SCREENSAVER_ACTIVATE_ON_DOCK, context.getResources().getBoolean(R.^attr-private.fromLeft) ? 1 : 0, -2) != 0;
    }
}
