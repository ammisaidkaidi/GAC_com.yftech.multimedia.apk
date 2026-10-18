package android.os;

import android.os.IBinder;
import android.view.textclassifier.TextClassifier;
import java.net.InetSocketAddress;
import java.util.NoSuchElementException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class CommonClock {
    public static final int ERROR_ESTIMATE_UNKNOWN = Integer.MAX_VALUE;
    public static final long INVALID_TIMELINE_ID = 0;
    private static final int METHOD_CBK_ON_TIMELINE_CHANGED = 1;
    private static final int METHOD_COMMON_TIME_TO_LOCAL_TIME = 2;
    private static final int METHOD_GET_COMMON_FREQ = 5;
    private static final int METHOD_GET_COMMON_TIME = 4;
    private static final int METHOD_GET_ESTIMATED_ERROR = 8;
    private static final int METHOD_GET_LOCAL_FREQ = 7;
    private static final int METHOD_GET_LOCAL_TIME = 6;
    private static final int METHOD_GET_MASTER_ADDRESS = 11;
    private static final int METHOD_GET_STATE = 10;
    private static final int METHOD_GET_TIMELINE_ID = 9;
    private static final int METHOD_IS_COMMON_TIME_VALID = 1;
    private static final int METHOD_LOCAL_TIME_TO_COMMON_TIME = 3;
    private static final int METHOD_REGISTER_LISTENER = 12;
    private static final int METHOD_UNREGISTER_LISTENER = 13;
    public static final String SERVICE_NAME = "common_time.clock";
    public static final int STATE_CLIENT = 1;
    public static final int STATE_INITIAL = 0;
    public static final int STATE_INVALID = -1;
    public static final int STATE_MASTER = 2;
    public static final int STATE_RONIN = 3;
    public static final int STATE_WAIT_FOR_ELECTION = 4;
    public static final long TIME_NOT_SYNCED = -1;
    private String mInterfaceDesc;
    private IBinder mRemote;
    private CommonTimeUtils mUtils;
    private final Object mListenerLock = new Object();
    private OnTimelineChangedListener mTimelineChangedListener = null;
    private OnServerDiedListener mServerDiedListener = null;
    private IBinder.DeathRecipient mDeathHandler = new IBinder.DeathRecipient() { // from class: android.os.CommonClock.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (CommonClock.this.mListenerLock) {
                if (CommonClock.this.mServerDiedListener != null) {
                    CommonClock.this.mServerDiedListener.onServerDied();
                }
            }
        }
    };
    private TimelineChangedListener mCallbackTgt = null;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnServerDiedListener {
        void onServerDied();
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnTimelineChangedListener {
        void onTimelineChanged(long j);
    }

    public CommonClock() throws RemoteException {
        this.mRemote = null;
        this.mInterfaceDesc = TextClassifier.TYPE_UNKNOWN;
        this.mRemote = ServiceManager.getService(SERVICE_NAME);
        if (this.mRemote == null) {
            throw new RemoteException();
        }
        this.mInterfaceDesc = this.mRemote.getInterfaceDescriptor();
        this.mUtils = new CommonTimeUtils(this.mRemote, this.mInterfaceDesc);
        this.mRemote.linkToDeath(this.mDeathHandler, 0);
        registerTimelineChangeListener();
    }

    public static CommonClock create() {
        try {
            return new CommonClock();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void release() {
        unregisterTimelineChangeListener();
        if (this.mRemote != null) {
            try {
                this.mRemote.unlinkToDeath(this.mDeathHandler, 0);
            } catch (NoSuchElementException unused) {
            }
            this.mRemote = null;
        }
        this.mUtils = null;
    }

    public long getTime() throws RemoteException {
        throwOnDeadServer();
        return this.mUtils.transactGetLong(4, -1L);
    }

    public int getEstimatedError() throws RemoteException {
        throwOnDeadServer();
        return this.mUtils.transactGetInt(8, Integer.MAX_VALUE);
    }

    public long getTimelineId() throws RemoteException {
        throwOnDeadServer();
        return this.mUtils.transactGetLong(9, 0L);
    }

    public int getState() throws RemoteException {
        throwOnDeadServer();
        return this.mUtils.transactGetInt(10, -1);
    }

    public InetSocketAddress getMasterAddr() throws RemoteException {
        throwOnDeadServer();
        return this.mUtils.transactGetSockaddr(11);
    }

    public void setTimelineChangedListener(OnTimelineChangedListener onTimelineChangedListener) {
        synchronized (this.mListenerLock) {
            this.mTimelineChangedListener = onTimelineChangedListener;
        }
    }

    public void setServerDiedListener(OnServerDiedListener onServerDiedListener) {
        synchronized (this.mListenerLock) {
            this.mServerDiedListener = onServerDiedListener;
        }
    }

    protected void finalize() throws Throwable {
        release();
    }

    private void throwOnDeadServer() throws RemoteException {
        if (this.mRemote == null || this.mUtils == null) {
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class TimelineChangedListener extends Binder {
        private static final String DESCRIPTOR = "android.os.ICommonClockListener";

        private TimelineChangedListener() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                long readLong = parcel.readLong();
                synchronized (CommonClock.this.mListenerLock) {
                    if (CommonClock.this.mTimelineChangedListener != null) {
                        CommonClock.this.mTimelineChangedListener.onTimelineChanged(readLong);
                    }
                }
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    private void registerTimelineChangeListener() throws RemoteException {
        if (this.mCallbackTgt != null) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        this.mCallbackTgt = new TimelineChangedListener();
        boolean z = false;
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            obtain.writeStrongBinder(this.mCallbackTgt);
            this.mRemote.transact(12, obtain, obtain2, 0);
            if (obtain2.readInt() == 0) {
                z = true;
            }
        } catch (RemoteException unused) {
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        obtain2.recycle();
        obtain.recycle();
        if (z) {
            return;
        }
        this.mCallbackTgt = null;
        this.mRemote = null;
        this.mUtils = null;
    }

    private void unregisterTimelineChangeListener() {
        if (this.mCallbackTgt == null) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.mInterfaceDesc);
            obtain.writeStrongBinder(this.mCallbackTgt);
            this.mRemote.transact(13, obtain, obtain2, 0);
        } catch (RemoteException unused) {
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            this.mCallbackTgt = null;
            throw th;
        }
        obtain2.recycle();
        obtain.recycle();
        this.mCallbackTgt = null;
    }
}
