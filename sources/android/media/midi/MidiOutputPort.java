package android.media.midi;

import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.midi.MidiDispatcher;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MidiOutputPort extends MidiSender implements Closeable {
    private static final String TAG = "MidiOutputPort";
    private IMidiDeviceServer mDeviceServer;
    private final MidiDispatcher mDispatcher;
    private final CloseGuard mGuard;
    private final FileInputStream mInputStream;
    private boolean mIsClosed;
    private final int mPortNumber;
    private final Thread mThread;
    private final IBinder mToken;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MidiOutputPort(IMidiDeviceServer iMidiDeviceServer, IBinder iBinder, FileDescriptor fileDescriptor, int i) {
        this.mDispatcher = new MidiDispatcher();
        this.mGuard = CloseGuard.get();
        this.mThread = new Thread() { // from class: android.media.midi.MidiOutputPort.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                int read;
                byte[] bArr = new byte[1024];
                while (true) {
                    try {
                        try {
                            read = MidiOutputPort.this.mInputStream.read(bArr);
                        } catch (IOException e) {
                            Log.e(MidiOutputPort.TAG, "read failed", e);
                        }
                        if (read >= 0) {
                            int packetType = MidiPortImpl.getPacketType(bArr, read);
                            switch (packetType) {
                                case 1:
                                    MidiOutputPort.this.mDispatcher.send(bArr, MidiPortImpl.getDataOffset(bArr, read), MidiPortImpl.getDataSize(bArr, read), MidiPortImpl.getPacketTimestamp(bArr, read));
                                    break;
                                case 2:
                                    MidiOutputPort.this.mDispatcher.flush();
                                    break;
                                default:
                                    Log.e(MidiOutputPort.TAG, "Unknown packet type " + packetType);
                                    break;
                            }
                        } else {
                            return;
                        }
                    } finally {
                        IoUtils.closeQuietly(MidiOutputPort.this.mInputStream);
                    }
                }
            }
        };
        this.mDeviceServer = iMidiDeviceServer;
        this.mToken = iBinder;
        this.mPortNumber = i;
        this.mInputStream = new ParcelFileDescriptor.AutoCloseInputStream(new ParcelFileDescriptor(fileDescriptor));
        this.mThread.start();
        this.mGuard.open("close");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MidiOutputPort(FileDescriptor fileDescriptor, int i) {
        this(null, null, fileDescriptor, i);
    }

    public final int getPortNumber() {
        return this.mPortNumber;
    }

    @Override // android.media.midi.MidiSender
    public void onConnect(MidiReceiver midiReceiver) {
        this.mDispatcher.getSender().connect(midiReceiver);
    }

    @Override // android.media.midi.MidiSender
    public void onDisconnect(MidiReceiver midiReceiver) {
        this.mDispatcher.getSender().disconnect(midiReceiver);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.mGuard) {
            if (this.mIsClosed) {
                return;
            }
            this.mGuard.close();
            this.mInputStream.close();
            if (this.mDeviceServer != null) {
                try {
                    this.mDeviceServer.closePort(this.mToken);
                } catch (RemoteException unused) {
                    Log.e(TAG, "RemoteException in MidiOutputPort.close()");
                }
            }
            this.mIsClosed = true;
        }
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mGuard != null) {
                this.mGuard.warnIfOpen();
            }
            this.mDeviceServer = null;
            close();
        } finally {
            super.finalize();
        }
    }
}
