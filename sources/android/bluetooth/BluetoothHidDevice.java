package android.bluetooth;

import android.bluetooth.BluetoothHidDevice;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothHidDevice;
import android.bluetooth.IBluetoothHidDeviceCallback;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: /home/user/work/dex/classes.dex */
public final class BluetoothHidDevice implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED";
    public static final byte ERROR_RSP_INVALID_PARAM = 4;
    public static final byte ERROR_RSP_INVALID_RPT_ID = 2;
    public static final byte ERROR_RSP_NOT_READY = 1;
    public static final byte ERROR_RSP_SUCCESS = 0;
    public static final byte ERROR_RSP_UNKNOWN = 14;
    public static final byte ERROR_RSP_UNSUPPORTED_REQ = 3;
    public static final byte PROTOCOL_BOOT_MODE = 0;
    public static final byte PROTOCOL_REPORT_MODE = 1;
    public static final byte REPORT_TYPE_FEATURE = 3;
    public static final byte REPORT_TYPE_INPUT = 1;
    public static final byte REPORT_TYPE_OUTPUT = 2;
    public static final byte SUBCLASS1_COMBO = -64;
    public static final byte SUBCLASS1_KEYBOARD = 64;
    public static final byte SUBCLASS1_MOUSE = Byte.MIN_VALUE;
    public static final byte SUBCLASS1_NONE = 0;
    public static final byte SUBCLASS2_CARD_READER = 6;
    public static final byte SUBCLASS2_DIGITIZER_TABLET = 5;
    public static final byte SUBCLASS2_GAMEPAD = 2;
    public static final byte SUBCLASS2_JOYSTICK = 1;
    public static final byte SUBCLASS2_REMOTE_CONTROL = 3;
    public static final byte SUBCLASS2_SENSING_DEVICE = 4;
    public static final byte SUBCLASS2_UNCATEGORIZED = 0;
    private static final String TAG = "BluetoothHidDevice";
    private final BluetoothProfileConnector<IBluetoothHidDevice> mProfileConnector = new BluetoothProfileConnector(this, 19, TAG, IBluetoothHidDevice.class.getName()) { // from class: android.bluetooth.BluetoothHidDevice.1
        @Override // android.bluetooth.BluetoothProfileConnector
        public IBluetoothHidDevice getServiceInterface(IBinder iBinder) {
            return IBluetoothHidDevice.Stub.asInterface(Binder.allowBlocking(iBinder));
        }
    };
    private BluetoothAdapter mAdapter = BluetoothAdapter.getDefaultAdapter();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Callback {
        private static final String TAG = "BluetoothHidDevCallback";

        public void onAppStatusChanged(BluetoothDevice bluetoothDevice, boolean z) {
            Log.d(TAG, "onAppStatusChanged: pluggedDevice=" + bluetoothDevice + " registered=" + z);
        }

        public void onConnectionStateChanged(BluetoothDevice bluetoothDevice, int i) {
            Log.d(TAG, "onConnectionStateChanged: device=" + bluetoothDevice + " state=" + i);
        }

        public void onGetReport(BluetoothDevice bluetoothDevice, byte b, byte b2, int i) {
            Log.d(TAG, "onGetReport: device=" + bluetoothDevice + " type=" + ((int) b) + " id=" + ((int) b2) + " bufferSize=" + i);
        }

        public void onSetReport(BluetoothDevice bluetoothDevice, byte b, byte b2, byte[] bArr) {
            Log.d(TAG, "onSetReport: device=" + bluetoothDevice + " type=" + ((int) b) + " id=" + ((int) b2));
        }

        public void onSetProtocol(BluetoothDevice bluetoothDevice, byte b) {
            Log.d(TAG, "onSetProtocol: device=" + bluetoothDevice + " protocol=" + ((int) b));
        }

        public void onInterruptData(BluetoothDevice bluetoothDevice, byte b, byte[] bArr) {
            Log.d(TAG, "onInterruptData: device=" + bluetoothDevice + " reportId=" + ((int) b));
        }

        public void onVirtualCableUnplug(BluetoothDevice bluetoothDevice) {
            Log.d(TAG, "onVirtualCableUnplug: device=" + bluetoothDevice);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CallbackWrapper extends IBluetoothHidDeviceCallback.Stub {
        private final Callback mCallback;
        private final Executor mExecutor;

        CallbackWrapper(Executor executor, Callback callback) {
            this.mExecutor = executor;
            this.mCallback = callback;
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onAppStatusChanged(final BluetoothDevice bluetoothDevice, final boolean z) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$NFluHjT4zTfYBRXClu_2k6mPKFI
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onAppStatusChanged(bluetoothDevice, z);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onConnectionStateChanged(final BluetoothDevice bluetoothDevice, final int i) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$qtStwQVkGfOs2iJIiePWqJJpi0w
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onConnectionStateChanged(bluetoothDevice, i);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onGetReport(final BluetoothDevice bluetoothDevice, final byte b, final byte b2, final int i) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$Eyz_qG6mvTlh6a8Bp41ZoEJzQCQ
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onGetReport(bluetoothDevice, b, b2, i);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetReport(final BluetoothDevice bluetoothDevice, final byte b, final byte b2, final byte[] bArr) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$3bTGVlfKj7Y0SZdifW_Ya2myDKs
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onSetReport(bluetoothDevice, b, b2, bArr);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetProtocol(final BluetoothDevice bluetoothDevice, final byte b) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$ypkr5GGxsAkGSBiLjIRwg-PzqCM
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onSetProtocol(bluetoothDevice, b);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onInterruptData(final BluetoothDevice bluetoothDevice, final byte b, final byte[] bArr) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$xW99-tc95OmGApoKnpQ9q1TXb9k
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onInterruptData(bluetoothDevice, b, bArr);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onVirtualCableUnplug(final BluetoothDevice bluetoothDevice) {
            clearCallingIdentity();
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.-$$Lambda$BluetoothHidDevice$CallbackWrapper$jiodzbAJAcleQCwlDcBjvDddELM
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothHidDevice.CallbackWrapper.this.mCallback.onVirtualCableUnplug(bluetoothDevice);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothHidDevice(Context context, BluetoothProfile.ServiceListener serviceListener) {
        this.mProfileConnector.connect(context, serviceListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothHidDevice getService() {
        return this.mProfileConnector.getService();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.getConnectedDevices();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.getDevicesMatchingConnectionStates(iArr);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return new ArrayList();
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.getConnectionState(bluetoothDevice);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
                return 0;
            }
        }
        Log.w(TAG, "Proxy not attached to service");
        return 0;
    }

    public boolean registerApp(BluetoothHidDeviceAppSdpSettings bluetoothHidDeviceAppSdpSettings, BluetoothHidDeviceAppQosSettings bluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings bluetoothHidDeviceAppQosSettings2, Executor executor, Callback callback) {
        if (bluetoothHidDeviceAppSdpSettings == null) {
            throw new IllegalArgumentException("sdp parameter cannot be null");
        }
        if (executor == null) {
            throw new IllegalArgumentException("executor parameter cannot be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback parameter cannot be null");
        }
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.registerApp(bluetoothHidDeviceAppSdpSettings, bluetoothHidDeviceAppQosSettings, bluetoothHidDeviceAppQosSettings2, new CallbackWrapper(executor, callback));
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean unregisterApp() {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.unregisterApp();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean sendReport(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.sendReport(bluetoothDevice, i, bArr);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean replyReport(BluetoothDevice bluetoothDevice, byte b, byte b2, byte[] bArr) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.replyReport(bluetoothDevice, b, b2, bArr);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean reportError(BluetoothDevice bluetoothDevice, byte b) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.reportError(bluetoothDevice, b);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public String getUserAppName() {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.getUserAppName();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
                return "";
            }
        }
        Log.w(TAG, "Proxy not attached to service");
        return "";
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.connect(bluetoothDevice);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        IBluetoothHidDevice service = getService();
        if (service != null) {
            try {
                return service.disconnect(bluetoothDevice);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.w(TAG, "Proxy not attached to service");
        }
        return false;
    }
}
