package android.bluetooth;

import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothHearingAid;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class BluetoothHearingAid implements BluetoothProfile {
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYING_STATE_CHANGED = "android.bluetooth.hearingaid.profile.action.PLAYING_STATE_CHANGED";
    private static final boolean DBG = false;
    public static final long HI_SYNC_ID_INVALID = 0;
    public static final int MODE_BINAURAL = 1;
    public static final int MODE_MONAURAL = 0;
    public static final int SIDE_LEFT = 0;
    public static final int SIDE_RIGHT = 1;
    public static final int STATE_NOT_PLAYING = 11;
    public static final int STATE_PLAYING = 10;
    private static final String TAG = "BluetoothHearingAid";
    private static final boolean VDBG = false;
    private final BluetoothProfileConnector<IBluetoothHearingAid> mProfileConnector = new BluetoothProfileConnector(this, 21, TAG, IBluetoothHearingAid.class.getName()) { // from class: android.bluetooth.BluetoothHearingAid.1
        @Override // android.bluetooth.BluetoothProfileConnector
        public IBluetoothHearingAid getServiceInterface(IBinder iBinder) {
            return IBluetoothHearingAid.Stub.asInterface(Binder.allowBlocking(iBinder));
        }
    };
    private BluetoothAdapter mAdapter = BluetoothAdapter.getDefaultAdapter();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothHearingAid(Context context, BluetoothProfile.ServiceListener serviceListener) {
        this.mProfileConnector.connect(context, serviceListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothHearingAid getService() {
        return this.mProfileConnector.getService();
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.connect(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.disconnect(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled()) {
                    return service.getConnectedDevices();
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return new ArrayList();
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled()) {
                    return service.getDevicesMatchingConnectionStates(iArr);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return new ArrayList();
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.getConnectionState(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public boolean setActiveDevice(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && (bluetoothDevice == null || isValidDevice(bluetoothDevice))) {
                    service.setActiveDevice(bluetoothDevice);
                    return true;
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public List<BluetoothDevice> getActiveDevices() {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled()) {
                    return service.getActiveDevices();
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return new ArrayList();
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    if (i == 0 || i == 100) {
                        return service.setPriority(bluetoothDevice, i);
                    }
                    return false;
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.getPriority(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public static String stateToString(int i) {
        switch (i) {
            case 0:
                return "disconnected";
            case 1:
                return "connecting";
            case 2:
                return "connected";
            case 3:
                return "disconnecting";
            default:
                switch (i) {
                    case 10:
                        return "playing";
                    case 11:
                        return "not playing";
                    default:
                        return "<unknown state " + i + ">";
                }
        }
    }

    public int getVolume() {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled()) {
                    return service.getVolume();
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public void adjustVolume(int i) {
        IBluetoothHearingAid service = getService();
        try {
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
            } else if (isEnabled()) {
                service.adjustVolume(i);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void setVolume(int i) {
        IBluetoothHearingAid service = getService();
        try {
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
            } else if (isEnabled()) {
                service.setVolume(i);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
        }
    }

    public long getHiSyncId(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        try {
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
                return 0L;
            }
            if (isEnabled() && isValidDevice(bluetoothDevice)) {
                return service.getHiSyncId(bluetoothDevice);
            }
            return 0L;
        } catch (RemoteException unused) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return 0L;
        }
    }

    public int getDeviceSide(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.getDeviceSide(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    public int getDeviceMode(BluetoothDevice bluetoothDevice) {
        IBluetoothHearingAid service = getService();
        if (service != null) {
            try {
                if (isEnabled() && isValidDevice(bluetoothDevice)) {
                    return service.getDeviceMode(bluetoothDevice);
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        }
        return 0;
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice != null && BluetoothAdapter.checkBluetoothAddress(bluetoothDevice.getAddress());
    }

    private static void log(String str) {
        Log.d(TAG, str);
    }
}
