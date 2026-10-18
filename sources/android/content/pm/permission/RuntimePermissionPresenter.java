package android.content.pm.permission;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.permission.IRuntimePermissionPresenter;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.SomeArgs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class RuntimePermissionPresenter {
    public static final String KEY_RESULT = "android.content.pm.permission.RuntimePermissionPresenter.key.result";
    private static final String TAG = "RuntimePermPresenter";

    @GuardedBy("sLock")
    private static RuntimePermissionPresenter sInstance;
    private static final Object sLock = new Object();
    private final RemoteService mRemoteService;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class OnResultCallback {
        public void onGetAppPermissions(List<RuntimePermissionPresentationInfo> list) {
        }
    }

    public static RuntimePermissionPresenter getInstance(Context context) {
        RuntimePermissionPresenter runtimePermissionPresenter;
        synchronized (sLock) {
            if (sInstance == null) {
                sInstance = new RuntimePermissionPresenter(context.getApplicationContext());
            }
            runtimePermissionPresenter = sInstance;
        }
        return runtimePermissionPresenter;
    }

    private RuntimePermissionPresenter(Context context) {
        this.mRemoteService = new RemoteService(context);
    }

    public void getAppPermissions(String str, OnResultCallback onResultCallback, Handler handler) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = str;
        obtain.arg2 = onResultCallback;
        obtain.arg3 = handler;
        this.mRemoteService.processMessage(this.mRemoteService.obtainMessage(1, obtain));
    }

    public void revokeRuntimePermission(String str, String str2) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = str;
        obtain.arg2 = str2;
        this.mRemoteService.processMessage(this.mRemoteService.obtainMessage(4, obtain));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class RemoteService extends Handler implements ServiceConnection {
        public static final int MSG_GET_APPS_USING_PERMISSIONS = 2;
        public static final int MSG_GET_APP_PERMISSIONS = 1;
        public static final int MSG_REVOKE_APP_PERMISSIONS = 4;
        public static final int MSG_UNBIND = 3;
        private static final long UNBIND_TIMEOUT_MILLIS = 10000;

        @GuardedBy("mLock")
        private boolean mBound;
        private final Context mContext;
        private final Object mLock;

        @GuardedBy("mLock")
        private final List<Message> mPendingWork;

        @GuardedBy("mLock")
        private IRuntimePermissionPresenter mRemoteInstance;

        public RemoteService(Context context) {
            super(context.getMainLooper(), null, false);
            this.mLock = new Object();
            this.mPendingWork = new ArrayList();
            this.mContext = context;
        }

        public void processMessage(Message message) {
            synchronized (this.mLock) {
                if (!this.mBound) {
                    Intent intent = new Intent("android.permissionpresenterservice.RuntimePermissionPresenterService");
                    intent.setPackage(this.mContext.getPackageManager().getPermissionControllerPackageName());
                    this.mBound = this.mContext.bindService(intent, this, 1);
                }
                this.mPendingWork.add(message);
                scheduleNextMessageIfNeededLocked();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this.mLock) {
                this.mRemoteInstance = IRuntimePermissionPresenter.Stub.asInterface(iBinder);
                scheduleNextMessageIfNeededLocked();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (this.mLock) {
                this.mRemoteInstance = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IRuntimePermissionPresenter iRuntimePermissionPresenter;
            IRuntimePermissionPresenter iRuntimePermissionPresenter2;
            int i = message.what;
            if (i == 1) {
                SomeArgs someArgs = (SomeArgs) message.obj;
                String str = (String) someArgs.arg1;
                final OnResultCallback onResultCallback = (OnResultCallback) someArgs.arg2;
                final Handler handler = (Handler) someArgs.arg3;
                someArgs.recycle();
                synchronized (this.mLock) {
                    iRuntimePermissionPresenter = this.mRemoteInstance;
                }
                if (iRuntimePermissionPresenter == null) {
                    return;
                }
                try {
                    iRuntimePermissionPresenter.getAppPermissions(str, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: android.content.pm.permission.RuntimePermissionPresenter.RemoteService.1
                        public void onResult(Bundle bundle) {
                            final List<RuntimePermissionPresentationInfo> parcelableArrayList = bundle != null ? bundle.getParcelableArrayList(RuntimePermissionPresenter.KEY_RESULT) : null;
                            if (parcelableArrayList == null) {
                                parcelableArrayList = Collections.emptyList();
                            }
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: android.content.pm.permission.RuntimePermissionPresenter.RemoteService.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        onResultCallback.onGetAppPermissions(parcelableArrayList);
                                    }
                                });
                            } else {
                                onResultCallback.onGetAppPermissions(parcelableArrayList);
                            }
                        }
                    }, this));
                } catch (RemoteException e) {
                    Log.e(RuntimePermissionPresenter.TAG, "Error getting app permissions", e);
                }
                scheduleUnbind();
            } else {
                switch (i) {
                    case 3:
                        synchronized (this.mLock) {
                            if (this.mBound) {
                                this.mContext.unbindService(this);
                                this.mBound = false;
                            }
                            this.mRemoteInstance = null;
                        }
                        break;
                    case 4:
                        SomeArgs someArgs2 = (SomeArgs) message.obj;
                        String str2 = (String) someArgs2.arg1;
                        String str3 = (String) someArgs2.arg2;
                        someArgs2.recycle();
                        synchronized (this.mLock) {
                            iRuntimePermissionPresenter2 = this.mRemoteInstance;
                        }
                        if (iRuntimePermissionPresenter2 != null) {
                            try {
                                iRuntimePermissionPresenter2.revokeRuntimePermission(str2, str3);
                                break;
                            } catch (RemoteException e2) {
                                Log.e(RuntimePermissionPresenter.TAG, "Error getting app permissions", e2);
                                break;
                            }
                        } else {
                            return;
                        }
                }
            }
            synchronized (this.mLock) {
                scheduleNextMessageIfNeededLocked();
            }
        }

        @GuardedBy("mLock")
        private void scheduleNextMessageIfNeededLocked() {
            if (!this.mBound || this.mRemoteInstance == null || this.mPendingWork.isEmpty()) {
                return;
            }
            sendMessage(this.mPendingWork.remove(0));
        }

        private void scheduleUnbind() {
            removeMessages(3);
            sendEmptyMessageDelayed(3, 10000L);
        }
    }
}
