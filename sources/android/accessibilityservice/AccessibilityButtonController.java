package android.accessibilityservice;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.Preconditions;

/* loaded from: /home/user/work/dex/classes.dex */
public final class AccessibilityButtonController {
    private static final String LOG_TAG = "A11yButtonController";
    private ArrayMap<AccessibilityButtonCallback, Handler> mCallbacks;
    private final Object mLock = new Object();
    private final IAccessibilityServiceConnection mServiceConnection;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AccessibilityButtonCallback {
        public void onAvailabilityChanged(AccessibilityButtonController accessibilityButtonController, boolean z) {
        }

        public void onClicked(AccessibilityButtonController accessibilityButtonController) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessibilityButtonController(IAccessibilityServiceConnection iAccessibilityServiceConnection) {
        this.mServiceConnection = iAccessibilityServiceConnection;
    }

    public boolean isAccessibilityButtonAvailable() {
        try {
            return this.mServiceConnection.isAccessibilityButtonAvailable();
        } catch (RemoteException e) {
            Slog.w(LOG_TAG, "Failed to get accessibility button availability.", e);
            e.rethrowFromSystemServer();
            return false;
        }
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback) {
        registerAccessibilityButtonCallback(accessibilityButtonCallback, new Handler(Looper.getMainLooper()));
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback, Handler handler) {
        Preconditions.checkNotNull(accessibilityButtonCallback);
        Preconditions.checkNotNull(handler);
        synchronized (this.mLock) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new ArrayMap<>();
            }
            this.mCallbacks.put(accessibilityButtonCallback, handler);
        }
    }

    public void unregisterAccessibilityButtonCallback(AccessibilityButtonCallback accessibilityButtonCallback) {
        Preconditions.checkNotNull(accessibilityButtonCallback);
        synchronized (this.mLock) {
            if (this.mCallbacks == null) {
                return;
            }
            int indexOfKey = this.mCallbacks.indexOfKey(accessibilityButtonCallback);
            if (indexOfKey >= 0) {
                this.mCallbacks.removeAt(indexOfKey);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchAccessibilityButtonClicked() {
        synchronized (this.mLock) {
            if (this.mCallbacks != null && !this.mCallbacks.isEmpty()) {
                ArrayMap arrayMap = new ArrayMap(this.mCallbacks);
                int size = arrayMap.size();
                for (int i = 0; i < size; i++) {
                    final AccessibilityButtonCallback accessibilityButtonCallback = (AccessibilityButtonCallback) arrayMap.keyAt(i);
                    ((Handler) arrayMap.valueAt(i)).post(new Runnable() { // from class: android.accessibilityservice.-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU
                        @Override // java.lang.Runnable
                        public final void run() {
                            accessibilityButtonCallback.onClicked(AccessibilityButtonController.this);
                        }
                    });
                }
                return;
            }
            Slog.w(LOG_TAG, "Received accessibility button click with no callbacks!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchAccessibilityButtonAvailabilityChanged(final boolean z) {
        synchronized (this.mLock) {
            if (this.mCallbacks != null && !this.mCallbacks.isEmpty()) {
                ArrayMap arrayMap = new ArrayMap(this.mCallbacks);
                int size = arrayMap.size();
                for (int i = 0; i < size; i++) {
                    final AccessibilityButtonCallback accessibilityButtonCallback = (AccessibilityButtonCallback) arrayMap.keyAt(i);
                    ((Handler) arrayMap.valueAt(i)).post(new Runnable() { // from class: android.accessibilityservice.-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM
                        @Override // java.lang.Runnable
                        public final void run() {
                            accessibilityButtonCallback.onAvailabilityChanged(AccessibilityButtonController.this, z);
                        }
                    });
                }
                return;
            }
            Slog.w(LOG_TAG, "Received accessibility button availability change with no callbacks!");
        }
    }
}
