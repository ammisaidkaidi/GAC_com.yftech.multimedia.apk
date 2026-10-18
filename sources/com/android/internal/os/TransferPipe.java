package com.android.internal.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Slog;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TransferPipe implements Runnable, Closeable {
    static final boolean DEBUG = false;
    static final long DEFAULT_TIMEOUT = 5000;
    static final String TAG = "TransferPipe";
    String mBufferPrefix;
    boolean mComplete;
    long mEndTime;
    String mFailure;
    final ParcelFileDescriptor[] mFds;
    FileDescriptor mOutFd;
    final Thread mThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Caller {
        void go(IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr) throws RemoteException;
    }

    public TransferPipe() throws IOException {
        this(null);
    }

    public TransferPipe(String str) throws IOException {
        this(str, TAG);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TransferPipe(String str, String str2) throws IOException {
        this.mThread = new Thread(this, str2);
        this.mFds = ParcelFileDescriptor.createPipe();
        this.mBufferPrefix = str;
    }

    ParcelFileDescriptor getReadFd() {
        return this.mFds[0];
    }

    public ParcelFileDescriptor getWriteFd() {
        return this.mFds[1];
    }

    public void setBufferPrefix(String str) {
        this.mBufferPrefix = str;
    }

    public static void dumpAsync(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr) throws IOException, RemoteException {
        goDump(iBinder, fileDescriptor, strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static byte[] dumpAsync(IBinder iBinder, String... strArr) throws IOException, RemoteException {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        try {
            try {
                dumpAsync(iBinder, createPipe[1].getFileDescriptor(), strArr);
                createPipe[1].close();
                iBinder = 0;
                ?? r8 = 0;
                createPipe[1] = null;
                byte[] bArr = new byte[4096];
                byteArrayOutputStream = new ByteArrayOutputStream();
                FileInputStream fileInputStream = new FileInputStream(createPipe[0].getFileDescriptor());
                while (true) {
                    try {
                        int read = fileInputStream.read(bArr);
                        if (read != -1) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        } else {
                            $closeResource(null, fileInputStream);
                            return byteArrayOutputStream.toByteArray();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        th = null;
                        $closeResource(th, fileInputStream);
                        throw th;
                    }
                }
            } finally {
                $closeResource(iBinder, byteArrayOutputStream);
            }
        } finally {
            createPipe[0].close();
            IoUtils.closeQuietly(createPipe[1]);
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    static void go(Caller caller, IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr) throws IOException, RemoteException {
        go(caller, iInterface, fileDescriptor, str, strArr, DEFAULT_TIMEOUT);
    }

    static void go(Caller caller, IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr, long j) throws IOException, RemoteException {
        if (iInterface.asBinder() instanceof Binder) {
            try {
                caller.go(iInterface, fileDescriptor, str, strArr);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        TransferPipe transferPipe = new TransferPipe();
        try {
            caller.go(iInterface, transferPipe.getWriteFd().getFileDescriptor(), str, strArr);
            transferPipe.go(fileDescriptor, j);
        } finally {
            $closeResource(null, transferPipe);
        }
    }

    static void goDump(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr) throws IOException, RemoteException {
        goDump(iBinder, fileDescriptor, strArr, DEFAULT_TIMEOUT);
    }

    static void goDump(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr, long j) throws IOException, RemoteException {
        if (iBinder instanceof Binder) {
            try {
                iBinder.dump(fileDescriptor, strArr);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        TransferPipe transferPipe = new TransferPipe();
        try {
            iBinder.dumpAsync(transferPipe.getWriteFd().getFileDescriptor(), strArr);
            transferPipe.go(fileDescriptor, j);
        } finally {
            $closeResource(null, transferPipe);
        }
    }

    public void go(FileDescriptor fileDescriptor) throws IOException {
        go(fileDescriptor, DEFAULT_TIMEOUT);
    }

    public void go(FileDescriptor fileDescriptor, long j) throws IOException {
        try {
            synchronized (this) {
                this.mOutFd = fileDescriptor;
                this.mEndTime = SystemClock.uptimeMillis() + j;
                closeFd(1);
                this.mThread.start();
                while (this.mFailure == null && !this.mComplete) {
                    long uptimeMillis = this.mEndTime - SystemClock.uptimeMillis();
                    if (uptimeMillis <= 0) {
                        this.mThread.interrupt();
                        throw new IOException("Timeout");
                    }
                    try {
                        wait(uptimeMillis);
                    } catch (InterruptedException unused) {
                    }
                }
                if (this.mFailure != null) {
                    throw new IOException(this.mFailure);
                }
            }
        } finally {
            kill();
        }
    }

    void closeFd(int i) {
        if (this.mFds[i] != null) {
            try {
                this.mFds[i].close();
            } catch (IOException unused) {
            }
            this.mFds[i] = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        kill();
    }

    public void kill() {
        synchronized (this) {
            closeFd(0);
            closeFd(1);
        }
    }

    protected OutputStream getNewOutputStream() {
        return new FileOutputStream(this.mOutFd);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        byte[] bArr = new byte[1024];
        synchronized (this) {
            ParcelFileDescriptor readFd = getReadFd();
            if (readFd == null) {
                Slog.w(TAG, "Pipe has been closed...");
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(readFd.getFileDescriptor());
            OutputStream newOutputStream = getNewOutputStream();
            byte[] bytes = this.mBufferPrefix != null ? this.mBufferPrefix.getBytes() : null;
            boolean z = true;
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        this.mThread.isInterrupted();
                        synchronized (this) {
                            this.mComplete = true;
                            notifyAll();
                        }
                        return;
                    }
                    if (bytes == null) {
                        newOutputStream.write(bArr, 0, read);
                    } else {
                        boolean z2 = z;
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < read) {
                            if (bArr[i2] != 10) {
                                if (i2 > i3) {
                                    newOutputStream.write(bArr, i3, i2 - i3);
                                }
                                if (z2) {
                                    newOutputStream.write(bytes);
                                    i = i2;
                                    z2 = false;
                                } else {
                                    i = i2;
                                }
                                do {
                                    i++;
                                    if (i >= read) {
                                        break;
                                    }
                                } while (bArr[i] != 10);
                                if (i < read) {
                                    z2 = true;
                                }
                            } else {
                                int i4 = i3;
                                i = i2;
                                i2 = i4;
                            }
                            int i5 = i + 1;
                            i3 = i2;
                            i2 = i5;
                        }
                        if (read > i3) {
                            newOutputStream.write(bArr, i3, read - i3);
                        }
                        z = z2;
                    }
                } catch (IOException e) {
                    synchronized (this) {
                        this.mFailure = e.toString();
                        notifyAll();
                        return;
                    }
                }
            }
        }
    }
}
