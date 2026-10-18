package android.net.lowpan;

import android.net.IpPrefix;
import android.net.lowpan.ILowpanInterfaceListener;
import android.net.lowpan.LowpanCommissioningSession;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public class LowpanCommissioningSession {
    private final LowpanBeaconInfo mBeaconInfo;
    private final ILowpanInterface mBinder;
    private Handler mHandler;
    private final Looper mLooper;
    private final ILowpanInterfaceListener mInternalCallback = new InternalCallback();
    private Callback mCallback = null;
    private volatile boolean mIsClosed = false;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Callback {
        public void onClosed() {
        }

        public void onReceiveFromCommissioner(byte[] bArr) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class InternalCallback extends ILowpanInterfaceListener.Stub {
        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onConnectedChanged(boolean z) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onEnabledChanged(boolean z) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressAdded(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressRemoved(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkAdded(IpPrefix ipPrefix) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkRemoved(IpPrefix ipPrefix) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLowpanIdentityChanged(LowpanIdentity lowpanIdentity) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onRoleChanged(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onUpChanged(boolean z) {
        }

        private InternalCallback() {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onStateChanged(String str) {
            if (LowpanCommissioningSession.this.mIsClosed) {
                return;
            }
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1548612125) {
                if (hashCode == 97204770 && str.equals("fault")) {
                    c = 1;
                }
            } else if (str.equals("offline")) {
                c = 0;
            }
            switch (c) {
                case 0:
                case 1:
                    synchronized (LowpanCommissioningSession.this) {
                        LowpanCommissioningSession.this.lockedCleanup();
                    }
                    return;
                default:
                    return;
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onReceiveFromCommissioner(final byte[] bArr) {
            LowpanCommissioningSession.this.mHandler.post(new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanCommissioningSession$InternalCallback$TrrmDykqIWeXNdgrXO7t2-rqCTo
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanCommissioningSession.InternalCallback.lambda$onReceiveFromCommissioner$0(LowpanCommissioningSession.InternalCallback.this, bArr);
                }
            });
        }

        public static /* synthetic */ void lambda$onReceiveFromCommissioner$0(InternalCallback internalCallback, byte[] bArr) {
            synchronized (LowpanCommissioningSession.this) {
                if (!LowpanCommissioningSession.this.mIsClosed && LowpanCommissioningSession.this.mCallback != null) {
                    LowpanCommissioningSession.this.mCallback.onReceiveFromCommissioner(bArr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LowpanCommissioningSession(ILowpanInterface iLowpanInterface, LowpanBeaconInfo lowpanBeaconInfo, Looper looper) {
        this.mBinder = iLowpanInterface;
        this.mBeaconInfo = lowpanBeaconInfo;
        this.mLooper = looper;
        if (this.mLooper != null) {
            this.mHandler = new Handler(this.mLooper);
        } else {
            this.mHandler = new Handler();
        }
        try {
            this.mBinder.addListener(this.mInternalCallback);
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockedCleanup() {
        if (!this.mIsClosed) {
            try {
                this.mBinder.removeListener(this.mInternalCallback);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
            if (this.mCallback != null) {
                this.mHandler.post(new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag
                    @Override // java.lang.Runnable
                    public final void run() {
                        LowpanCommissioningSession.this.mCallback.onClosed();
                    }
                });
            }
        }
        this.mCallback = null;
        this.mIsClosed = true;
    }

    public LowpanBeaconInfo getBeaconInfo() {
        return this.mBeaconInfo;
    }

    public void sendToCommissioner(byte[] bArr) {
        if (this.mIsClosed) {
            return;
        }
        try {
            this.mBinder.sendToCommissioner(bArr);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    public synchronized void setCallback(Callback callback, Handler handler) {
        if (!this.mIsClosed) {
            if (handler != null) {
                this.mHandler = handler;
            } else if (this.mLooper != null) {
                this.mHandler = new Handler(this.mLooper);
            } else {
                this.mHandler = new Handler();
            }
            this.mCallback = callback;
        }
    }

    public synchronized void close() {
        if (!this.mIsClosed) {
            try {
                this.mBinder.closeCommissioningSession();
                lockedCleanup();
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }
    }
}
