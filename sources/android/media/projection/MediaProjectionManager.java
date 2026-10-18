package android.media.projection;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionManager;
import android.media.projection.IMediaProjectionWatcherCallback;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.ArrayMap;
import android.util.Log;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MediaProjectionManager {
    public static final String EXTRA_APP_TOKEN = "android.media.projection.extra.EXTRA_APP_TOKEN";
    public static final String EXTRA_MEDIA_PROJECTION = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION";
    private static final String TAG = "MediaProjectionManager";
    public static final int TYPE_MIRRORING = 1;
    public static final int TYPE_PRESENTATION = 2;
    public static final int TYPE_SCREEN_CAPTURE = 0;
    private Context mContext;
    private IMediaProjectionManager mService = IMediaProjectionManager.Stub.asInterface(ServiceManager.getService(Context.MEDIA_PROJECTION_SERVICE));
    private Map<Callback, CallbackDelegate> mCallbacks = new ArrayMap();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Callback {
        public abstract void onStart(MediaProjectionInfo mediaProjectionInfo);

        public abstract void onStop(MediaProjectionInfo mediaProjectionInfo);
    }

    public MediaProjectionManager(Context context) {
        this.mContext = context;
    }

    public Intent createScreenCaptureIntent() {
        Intent intent = new Intent();
        intent.setComponent(ComponentName.unflattenFromString(this.mContext.getResources().getString(17039695)));
        return intent;
    }

    public MediaProjection getMediaProjection(int i, Intent intent) {
        IBinder iBinderExtra;
        if (i != -1 || intent == null || (iBinderExtra = intent.getIBinderExtra(EXTRA_MEDIA_PROJECTION)) == null) {
            return null;
        }
        return new MediaProjection(this.mContext, IMediaProjection.Stub.asInterface(iBinderExtra));
    }

    public MediaProjectionInfo getActiveProjectionInfo() {
        try {
            return this.mService.getActiveProjectionInfo();
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to get the active projection info", e);
            return null;
        }
    }

    public void stopActiveProjection() {
        try {
            this.mService.stopActiveProjection();
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to stop the currently active media projection", e);
        }
    }

    public void addCallback(Callback callback, Handler handler) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        CallbackDelegate callbackDelegate = new CallbackDelegate(callback, handler);
        this.mCallbacks.put(callback, callbackDelegate);
        try {
            this.mService.addCallback(callbackDelegate);
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to add callbacks to MediaProjection service", e);
        }
    }

    public void removeCallback(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        CallbackDelegate remove = this.mCallbacks.remove(callback);
        if (remove != null) {
            try {
                this.mService.removeCallback(remove);
            } catch (RemoteException e) {
                Log.e(TAG, "Unable to add callbacks to MediaProjection service", e);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class CallbackDelegate extends IMediaProjectionWatcherCallback.Stub {
        private Callback mCallback;
        private Handler mHandler;

        public CallbackDelegate(Callback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler == null ? new Handler() : handler;
        }

        @Override // android.media.projection.IMediaProjectionWatcherCallback
        public void onStart(final MediaProjectionInfo mediaProjectionInfo) {
            this.mHandler.post(new Runnable() { // from class: android.media.projection.MediaProjectionManager.CallbackDelegate.1
                @Override // java.lang.Runnable
                public void run() {
                    CallbackDelegate.this.mCallback.onStart(mediaProjectionInfo);
                }
            });
        }

        @Override // android.media.projection.IMediaProjectionWatcherCallback
        public void onStop(final MediaProjectionInfo mediaProjectionInfo) {
            this.mHandler.post(new Runnable() { // from class: android.media.projection.MediaProjectionManager.CallbackDelegate.2
                @Override // java.lang.Runnable
                public void run() {
                    CallbackDelegate.this.mCallback.onStop(mediaProjectionInfo);
                }
            });
        }
    }
}
