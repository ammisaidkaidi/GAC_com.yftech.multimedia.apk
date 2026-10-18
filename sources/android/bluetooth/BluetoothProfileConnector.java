package android.bluetooth;

import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BluetoothProfileConnector<T> {
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothProfileConnector.1
        @Override // android.bluetooth.IBluetoothStateChangeCallback
        public void onBluetoothStateChange(boolean z) {
            if (z) {
                BluetoothProfileConnector.this.doBind();
            } else {
                BluetoothProfileConnector.this.doUnbind();
            }
        }
    };
    private final ServiceConnection mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothProfileConnector.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BluetoothProfileConnector.this.logDebug("Proxy object connected");
            BluetoothProfileConnector.this.mService = BluetoothProfileConnector.this.getServiceInterface(iBinder);
            if (BluetoothProfileConnector.this.mServiceListener != null) {
                BluetoothProfileConnector.this.mServiceListener.onServiceConnected(BluetoothProfileConnector.this.mProfileId, BluetoothProfileConnector.this.mProfileProxy);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            BluetoothProfileConnector.this.logDebug("Proxy object disconnected");
            BluetoothProfileConnector.this.doUnbind();
            if (BluetoothProfileConnector.this.mServiceListener != null) {
                BluetoothProfileConnector.this.mServiceListener.onServiceDisconnected(BluetoothProfileConnector.this.mProfileId);
            }
        }
    };
    private Context mContext;
    private final int mProfileId;
    private final String mProfileName;
    private final BluetoothProfile mProfileProxy;
    private volatile T mService;
    private BluetoothProfile.ServiceListener mServiceListener;
    private final String mServiceName;

    public abstract T getServiceInterface(IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothProfileConnector(BluetoothProfile bluetoothProfile, int i, String str, String str2) {
        this.mProfileId = i;
        this.mProfileProxy = bluetoothProfile;
        this.mProfileName = str;
        this.mServiceName = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doBind() {
        synchronized (this.mConnection) {
            if (this.mService == null) {
                logDebug("Binding service...");
                try {
                    Intent intent = new Intent(this.mServiceName);
                    ComponentName resolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
                    intent.setComponent(resolveSystemService);
                    if (resolveSystemService == null || !this.mContext.bindServiceAsUser(intent, this.mConnection, 0, UserHandle.CURRENT_OR_SELF)) {
                        logError("Could not bind to Bluetooth Service with " + intent);
                        return false;
                    }
                } catch (SecurityException e) {
                    logError("Failed to bind service. " + e);
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doUnbind() {
        synchronized (this.mConnection) {
            if (this.mService != null) {
                logDebug("Unbinding service...");
                try {
                    try {
                        this.mContext.unbindService(this.mConnection);
                    } catch (IllegalArgumentException e) {
                        logError("Unable to unbind service: " + e);
                    }
                } finally {
                    this.mService = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void connect(Context context, BluetoothProfile.ServiceListener serviceListener) {
        this.mContext = context;
        this.mServiceListener = serviceListener;
        IBluetoothManager bluetoothManager = BluetoothAdapter.getDefaultAdapter().getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.registerStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e) {
                logError("Failed to register state change callback. " + e);
            }
        }
        doBind();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disconnect() {
        this.mServiceListener = null;
        IBluetoothManager bluetoothManager = BluetoothAdapter.getDefaultAdapter().getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e) {
                logError("Failed to unregister state change callback" + e);
            }
        }
        doUnbind();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T getService() {
        return this.mService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logDebug(String str) {
        Log.d(this.mProfileName, str);
    }

    private void logError(String str) {
        Log.e(this.mProfileName, str);
    }
}
