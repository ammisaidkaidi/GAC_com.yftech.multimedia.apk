package android.media.midi;

import android.bluetooth.BluetoothDevice;
import android.media.midi.IMidiDeviceListener;
import android.media.midi.IMidiDeviceOpenCallback;
import android.media.midi.MidiDeviceServer;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MidiManager {
    public static final String BLUETOOTH_MIDI_SERVICE_CLASS = "com.android.bluetoothmidiservice.BluetoothMidiService";
    public static final String BLUETOOTH_MIDI_SERVICE_INTENT = "android.media.midi.BluetoothMidiService";
    public static final String BLUETOOTH_MIDI_SERVICE_PACKAGE = "com.android.bluetoothmidiservice";
    private static final String TAG = "MidiManager";
    private final IMidiManager mService;
    private final IBinder mToken = new Binder();
    private ConcurrentHashMap<DeviceCallback, DeviceListener> mDeviceListeners = new ConcurrentHashMap<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class DeviceCallback {
        public void onDeviceAdded(MidiDeviceInfo midiDeviceInfo) {
        }

        public void onDeviceRemoved(MidiDeviceInfo midiDeviceInfo) {
        }

        public void onDeviceStatusChanged(MidiDeviceStatus midiDeviceStatus) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDeviceOpenedListener {
        void onDeviceOpened(MidiDevice midiDevice);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class DeviceListener extends IMidiDeviceListener.Stub {
        private final DeviceCallback mCallback;
        private final Handler mHandler;

        public DeviceListener(DeviceCallback deviceCallback, Handler handler) {
            this.mCallback = deviceCallback;
            this.mHandler = handler;
        }

        @Override // android.media.midi.IMidiDeviceListener
        public void onDeviceAdded(final MidiDeviceInfo midiDeviceInfo) {
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: android.media.midi.MidiManager.DeviceListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DeviceListener.this.mCallback.onDeviceAdded(midiDeviceInfo);
                    }
                });
            } else {
                this.mCallback.onDeviceAdded(midiDeviceInfo);
            }
        }

        @Override // android.media.midi.IMidiDeviceListener
        public void onDeviceRemoved(final MidiDeviceInfo midiDeviceInfo) {
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: android.media.midi.MidiManager.DeviceListener.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DeviceListener.this.mCallback.onDeviceRemoved(midiDeviceInfo);
                    }
                });
            } else {
                this.mCallback.onDeviceRemoved(midiDeviceInfo);
            }
        }

        @Override // android.media.midi.IMidiDeviceListener
        public void onDeviceStatusChanged(final MidiDeviceStatus midiDeviceStatus) {
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: android.media.midi.MidiManager.DeviceListener.3
                    @Override // java.lang.Runnable
                    public void run() {
                        DeviceListener.this.mCallback.onDeviceStatusChanged(midiDeviceStatus);
                    }
                });
            } else {
                this.mCallback.onDeviceStatusChanged(midiDeviceStatus);
            }
        }
    }

    public MidiManager(IMidiManager iMidiManager) {
        this.mService = iMidiManager;
    }

    public void registerDeviceCallback(DeviceCallback deviceCallback, Handler handler) {
        DeviceListener deviceListener = new DeviceListener(deviceCallback, handler);
        try {
            this.mService.registerListener(this.mToken, deviceListener);
            this.mDeviceListeners.put(deviceCallback, deviceListener);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unregisterDeviceCallback(DeviceCallback deviceCallback) {
        DeviceListener remove = this.mDeviceListeners.remove(deviceCallback);
        if (remove != null) {
            try {
                this.mService.unregisterListener(this.mToken, remove);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public MidiDeviceInfo[] getDevices() {
        try {
            return this.mService.getDevices();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendOpenDeviceResponse(final MidiDevice midiDevice, final OnDeviceOpenedListener onDeviceOpenedListener, Handler handler) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: android.media.midi.MidiManager.1
                @Override // java.lang.Runnable
                public void run() {
                    onDeviceOpenedListener.onDeviceOpened(midiDevice);
                }
            });
        } else {
            onDeviceOpenedListener.onDeviceOpened(midiDevice);
        }
    }

    public void openDevice(final MidiDeviceInfo midiDeviceInfo, final OnDeviceOpenedListener onDeviceOpenedListener, final Handler handler) {
        try {
            this.mService.openDevice(this.mToken, midiDeviceInfo, new IMidiDeviceOpenCallback.Stub() { // from class: android.media.midi.MidiManager.2
                @Override // android.media.midi.IMidiDeviceOpenCallback
                public void onDeviceOpened(IMidiDeviceServer iMidiDeviceServer, IBinder iBinder) {
                    MidiManager.this.sendOpenDeviceResponse(iMidiDeviceServer != null ? new MidiDevice(midiDeviceInfo, iMidiDeviceServer, MidiManager.this.mService, MidiManager.this.mToken, iBinder) : null, onDeviceOpenedListener, handler);
                }
            });
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void openBluetoothDevice(BluetoothDevice bluetoothDevice, final OnDeviceOpenedListener onDeviceOpenedListener, final Handler handler) {
        try {
            this.mService.openBluetoothDevice(this.mToken, bluetoothDevice, new IMidiDeviceOpenCallback.Stub() { // from class: android.media.midi.MidiManager.3
                @Override // android.media.midi.IMidiDeviceOpenCallback
                public void onDeviceOpened(IMidiDeviceServer iMidiDeviceServer, IBinder iBinder) {
                    MidiDevice midiDevice;
                    if (iMidiDeviceServer != null) {
                        try {
                            midiDevice = new MidiDevice(iMidiDeviceServer.getDeviceInfo(), iMidiDeviceServer, MidiManager.this.mService, MidiManager.this.mToken, iBinder);
                        } catch (RemoteException unused) {
                            Log.e(MidiManager.TAG, "remote exception in getDeviceInfo()");
                        }
                        MidiManager.this.sendOpenDeviceResponse(midiDevice, onDeviceOpenedListener, handler);
                    }
                    midiDevice = null;
                    MidiManager.this.sendOpenDeviceResponse(midiDevice, onDeviceOpenedListener, handler);
                }
            });
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public MidiDeviceServer createDeviceServer(MidiReceiver[] midiReceiverArr, int i, String[] strArr, String[] strArr2, Bundle bundle, int i2, MidiDeviceServer.Callback callback) {
        try {
            MidiDeviceServer midiDeviceServer = new MidiDeviceServer(this.mService, midiReceiverArr, i, callback);
            if (this.mService.registerDeviceServer(midiDeviceServer.getBinderInterface(), midiReceiverArr.length, i, strArr, strArr2, bundle, i2) != null) {
                return midiDeviceServer;
            }
            Log.e(TAG, "registerVirtualDevice failed");
            return null;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
