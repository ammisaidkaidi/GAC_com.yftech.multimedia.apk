package android.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.IMediaScannerListener;
import android.media.IMediaScannerService;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaScannerConnection implements ServiceConnection {
    private static final String TAG = "MediaScannerConnection";
    private MediaScannerConnectionClient mClient;
    private boolean mConnected;
    private Context mContext;
    private final IMediaScannerListener.Stub mListener = new IMediaScannerListener.Stub() { // from class: android.media.MediaScannerConnection.1
        @Override // android.media.IMediaScannerListener
        public void scanCompleted(String str, Uri uri) {
            MediaScannerConnectionClient mediaScannerConnectionClient = MediaScannerConnection.this.mClient;
            if (mediaScannerConnectionClient != null) {
                mediaScannerConnectionClient.onScanCompleted(str, uri);
            }
        }
    };
    private IMediaScannerService mService;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface MediaScannerConnectionClient extends OnScanCompletedListener {
        void onMediaScannerConnected();

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        void onScanCompleted(String str, Uri uri);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnScanCompletedListener {
        void onScanCompleted(String str, Uri uri);
    }

    public MediaScannerConnection(Context context, MediaScannerConnectionClient mediaScannerConnectionClient) {
        this.mContext = context;
        this.mClient = mediaScannerConnectionClient;
    }

    public void connect() {
        synchronized (this) {
            if (!this.mConnected) {
                Intent intent = new Intent(IMediaScannerService.class.getName());
                intent.setComponent(new ComponentName("com.android.providers.media", "com.android.providers.media.MediaScannerService"));
                this.mContext.bindService(intent, this, 1);
                this.mConnected = true;
            }
        }
    }

    public void disconnect() {
        synchronized (this) {
            if (this.mConnected) {
                try {
                    this.mContext.unbindService(this);
                    if (this.mClient instanceof ClientProxy) {
                        this.mClient = null;
                    }
                    this.mService = null;
                } catch (IllegalArgumentException unused) {
                }
                this.mConnected = false;
            }
        }
    }

    public synchronized boolean isConnected() {
        boolean z;
        if (this.mService != null) {
            z = this.mConnected;
        }
        return z;
    }

    public void scanFile(String str, String str2) {
        synchronized (this) {
            if (this.mService == null || !this.mConnected) {
                throw new IllegalStateException("not connected to MediaScannerService");
            }
            try {
                this.mService.requestScanFile(str, str2, this.mListener);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ClientProxy implements MediaScannerConnectionClient {
        final OnScanCompletedListener mClient;
        MediaScannerConnection mConnection;
        final String[] mMimeTypes;
        int mNextPath;
        final String[] mPaths;

        ClientProxy(String[] strArr, String[] strArr2, OnScanCompletedListener onScanCompletedListener) {
            this.mPaths = strArr;
            this.mMimeTypes = strArr2;
            this.mClient = onScanCompletedListener;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            scanNextPath();
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient, android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            if (this.mClient != null) {
                this.mClient.onScanCompleted(str, uri);
            }
            scanNextPath();
        }

        void scanNextPath() {
            if (this.mNextPath >= this.mPaths.length) {
                this.mConnection.disconnect();
                this.mConnection = null;
            } else {
                this.mConnection.scanFile(this.mPaths[this.mNextPath], this.mMimeTypes != null ? this.mMimeTypes[this.mNextPath] : null);
                this.mNextPath++;
            }
        }
    }

    public static void scanFile(Context context, String[] strArr, String[] strArr2, OnScanCompletedListener onScanCompletedListener) {
        ClientProxy clientProxy = new ClientProxy(strArr, strArr2, onScanCompletedListener);
        MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(context, clientProxy);
        clientProxy.mConnection = mediaScannerConnection;
        mediaScannerConnection.connect();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.mService = IMediaScannerService.Stub.asInterface(iBinder);
            if (this.mService != null && this.mClient != null) {
                this.mClient.onMediaScannerConnected();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.mService = null;
        }
    }
}
