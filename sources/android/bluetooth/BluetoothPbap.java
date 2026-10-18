package android.bluetooth;

import android.bluetooth.IBluetoothPbap;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothPbap implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = false;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    private static final String TAG = "BluetoothPbap";
    private final Context mContext;
    private volatile IBluetoothPbap mService;
    private ServiceListener mServiceListener;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothPbap.1
        @Override // android.bluetooth.IBluetoothStateChangeCallback
        public void onBluetoothStateChange(boolean z) {
            BluetoothPbap.log("onBluetoothStateChange: up=" + z);
            if (!z) {
                BluetoothPbap.this.doUnbind();
            } else {
                BluetoothPbap.this.doBind();
            }
        }
    };
    private final ServiceConnection mConnection = new ServiceConnection() { // from class: android.bluetooth.BluetoothPbap.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BluetoothPbap.log("Proxy object connected");
            BluetoothPbap.this.mService = IBluetoothPbap.Stub.asInterface(iBinder);
            if (BluetoothPbap.this.mServiceListener != null) {
                BluetoothPbap.this.mServiceListener.onServiceConnected(BluetoothPbap.this);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            BluetoothPbap.log("Proxy object disconnected");
            BluetoothPbap.this.doUnbind();
            if (BluetoothPbap.this.mServiceListener != null) {
                BluetoothPbap.this.mServiceListener.onServiceDisconnected();
            }
        }
    };
    private BluetoothAdapter mAdapter = BluetoothAdapter.getDefaultAdapter();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ServiceListener {
        void onServiceConnected(BluetoothPbap bluetoothPbap);

        void onServiceDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String str) {
    }

    public BluetoothPbap(Context context, ServiceListener serviceListener) {
        this.mContext = context;
        this.mServiceListener = serviceListener;
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.registerStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
        }
        doBind();
    }

    boolean doBind() {
        synchronized (this.mConnection) {
            try {
                try {
                    if (this.mService == null) {
                        log("Binding service...");
                        Intent intent = new Intent(IBluetoothPbap.class.getName());
                        ComponentName resolveSystemService = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
                        intent.setComponent(resolveSystemService);
                        if (resolveSystemService == null || !this.mContext.bindServiceAsUser(intent, this.mConnection, 0, UserHandle.CURRENT_OR_SELF)) {
                            Log.e(TAG, "Could not bind to Bluetooth Pbap Service with " + intent);
                            return false;
                        }
                    }
                    return true;
                } catch (SecurityException e) {
                    Log.e(TAG, "", e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doUnbind() {
        synchronized (this.mConnection) {
            if (this.mService != null) {
                log("Unbinding service...");
                try {
                    try {
                        this.mContext.unbindService(this.mConnection);
                    } catch (IllegalArgumentException e) {
                        Log.e(TAG, "", e);
                    }
                } finally {
                    this.mService = null;
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public synchronized void close() {
        IBluetoothManager bluetoothManager = this.mAdapter.getBluetoothManager();
        if (bluetoothManager != null) {
            try {
                bluetoothManager.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
        }
        doUnbind();
        this.mServiceListener = null;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            return new ArrayList();
        }
        try {
            return iBluetoothPbap.getConnectedDevices();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        log("getConnectionState: device=" + bluetoothDevice);
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            return 0;
        }
        try {
            return iBluetoothPbap.getConnectionState(bluetoothDevice);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        log("getDevicesMatchingConnectionStates: states=" + Arrays.toString(iArr));
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            return new ArrayList();
        }
        try {
            return iBluetoothPbap.getDevicesMatchingConnectionStates(iArr);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return new ArrayList();
        }
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        return getConnectionState(bluetoothDevice) == 2;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        log("disconnect()");
        IBluetoothPbap iBluetoothPbap = this.mService;
        if (iBluetoothPbap == null) {
            Log.w(TAG, "Proxy not attached to service");
            return false;
        }
        try {
            iBluetoothPbap.disconnect(bluetoothDevice);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }
}
