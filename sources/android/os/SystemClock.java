package android.os;

import android.app.IAlarmManager;
import android.service.notification.ZenModeConfig;
import android.util.Slog;
import dalvik.annotation.optimization.CriticalNative;
import java.time.Clock;
import java.time.DateTimeException;
import java.time.ZoneOffset;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SystemClock {
    private static final String TAG = "SystemClock";

    @CriticalNative
    public static native long currentThreadTimeMicro();

    @CriticalNative
    public static native long currentThreadTimeMillis();

    @CriticalNative
    public static native long currentTimeMicro();

    @CriticalNative
    public static native long elapsedRealtime();

    @CriticalNative
    public static native long elapsedRealtimeNanos();

    @CriticalNative
    public static native long uptimeMillis();

    private SystemClock() {
    }

    public static void sleep(long j) {
        long uptimeMillis = uptimeMillis();
        boolean z = false;
        long j2 = j;
        do {
            try {
                Thread.sleep(j2);
            } catch (InterruptedException unused) {
                z = true;
            }
            j2 = (uptimeMillis + j) - uptimeMillis();
        } while (j2 > 0);
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static boolean setCurrentTimeMillis(long j) {
        IAlarmManager asInterface = IAlarmManager.Stub.asInterface(ServiceManager.getService(ZenModeConfig.IS_ALARM_PATH));
        if (asInterface == null) {
            return false;
        }
        try {
            return asInterface.setTime(j);
        } catch (RemoteException e) {
            Slog.e(TAG, "Unable to set RTC", e);
            return false;
        } catch (SecurityException e2) {
            Slog.e(TAG, "Unable to set RTC", e2);
            return false;
        }
    }

    @Deprecated
    public static Clock uptimeMillisClock() {
        return uptimeClock();
    }

    public static Clock uptimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.1
            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.uptimeMillis();
            }
        };
    }

    public static Clock elapsedRealtimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.2
            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.elapsedRealtime();
            }
        };
    }

    public static long currentNetworkTimeMillis() {
        IAlarmManager asInterface = IAlarmManager.Stub.asInterface(ServiceManager.getService(ZenModeConfig.IS_ALARM_PATH));
        if (asInterface != null) {
            try {
                return asInterface.currentNetworkTimeMillis();
            } catch (ParcelableException e) {
                e.maybeRethrow(DateTimeException.class);
                throw new RuntimeException(e);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        throw new RuntimeException(new DeadSystemException());
    }

    public static Clock currentNetworkTimeClock() {
        return new SimpleClock(ZoneOffset.UTC) { // from class: android.os.SystemClock.3
            @Override // android.os.SimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.currentNetworkTimeMillis();
            }
        };
    }
}
