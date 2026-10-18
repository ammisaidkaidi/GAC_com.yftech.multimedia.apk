package android.app.trust;

import android.app.trust.ITrustListener;
import android.app.trust.ITrustManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.ArrayMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class TrustManager {
    private static final String DATA_FLAGS = "initiatedByUser";
    private static final String DATA_MESSAGE = "message";
    private static final int MSG_TRUST_CHANGED = 1;
    private static final int MSG_TRUST_ERROR = 3;
    private static final int MSG_TRUST_MANAGED_CHANGED = 2;
    private static final String TAG = "TrustManager";
    private final ITrustManager mService;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: android.app.trust.TrustManager.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((TrustListener) message.obj).onTrustChanged(message.arg1 != 0, message.arg2, message.peekData() != null ? message.peekData().getInt(TrustManager.DATA_FLAGS) : 0);
                    return;
                case 2:
                    ((TrustListener) message.obj).onTrustManagedChanged(message.arg1 != 0, message.arg2);
                    return;
                case 3:
                    ((TrustListener) message.obj).onTrustError(message.peekData().getCharSequence("message"));
                    return;
                default:
                    return;
            }
        }
    };
    private final ArrayMap<TrustListener, ITrustListener> mTrustListeners = new ArrayMap<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TrustListener {
        void onTrustChanged(boolean z, int i, int i2);

        void onTrustError(CharSequence charSequence);

        void onTrustManagedChanged(boolean z, int i);
    }

    public TrustManager(IBinder iBinder) {
        this.mService = ITrustManager.Stub.asInterface(iBinder);
    }

    public void setDeviceLockedForUser(int i, boolean z) {
        try {
            this.mService.setDeviceLockedForUser(i, z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void reportUnlockAttempt(boolean z, int i) {
        try {
            this.mService.reportUnlockAttempt(z, i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void reportUnlockLockout(int i, int i2) {
        try {
            this.mService.reportUnlockLockout(i, i2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void reportEnabledTrustAgentsChanged(int i) {
        try {
            this.mService.reportEnabledTrustAgentsChanged(i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void reportKeyguardShowingChanged() {
        try {
            this.mService.reportKeyguardShowingChanged();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerTrustListener(final TrustListener trustListener) {
        try {
            ITrustListener.Stub stub = new ITrustListener.Stub() { // from class: android.app.trust.TrustManager.1
                @Override // android.app.trust.ITrustListener
                public void onTrustChanged(boolean z, int i, int i2) {
                    Message obtainMessage = TrustManager.this.mHandler.obtainMessage(1, z ? 1 : 0, i, trustListener);
                    if (i2 != 0) {
                        obtainMessage.getData().putInt(TrustManager.DATA_FLAGS, i2);
                    }
                    obtainMessage.sendToTarget();
                }

                @Override // android.app.trust.ITrustListener
                public void onTrustManagedChanged(boolean z, int i) {
                    TrustManager.this.mHandler.obtainMessage(2, z ? 1 : 0, i, trustListener).sendToTarget();
                }

                @Override // android.app.trust.ITrustListener
                public void onTrustError(CharSequence charSequence) {
                    Message obtainMessage = TrustManager.this.mHandler.obtainMessage(3);
                    obtainMessage.getData().putCharSequence("message", charSequence);
                    obtainMessage.sendToTarget();
                }
            };
            this.mService.registerTrustListener(stub);
            this.mTrustListeners.put(trustListener, stub);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unregisterTrustListener(TrustListener trustListener) {
        ITrustListener remove = this.mTrustListeners.remove(trustListener);
        if (remove != null) {
            try {
                this.mService.unregisterTrustListener(remove);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public boolean isTrustUsuallyManaged(int i) {
        try {
            return this.mService.isTrustUsuallyManaged(i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unlockedByFingerprintForUser(int i) {
        try {
            this.mService.unlockedByFingerprintForUser(i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void clearAllFingerprints() {
        try {
            this.mService.clearAllFingerprints();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
