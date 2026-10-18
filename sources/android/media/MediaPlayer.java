package android.media;

import android.app.ActivityThread;
import android.app.Application;
import android.app.backup.FullBackup;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.AudioRouting;
import android.media.MediaDrm;
import android.media.MediaTimeProvider;
import android.media.SubtitleController;
import android.media.SubtitleTrack;
import android.media.VolumeShaper;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import com.yftech.libgallery.BuildConfig;
import dalvik.system.DexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.URL;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.UUID;
import java.util.Vector;
import libcore.io.IoBridge;
import libcore.io.Libcore;
import libcore.io.Streams;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaPlayer extends PlayerBase implements SubtitleController.Listener, VolumeAutomation, AudioRouting {
    public static final boolean APPLY_METADATA_FILTER = true;
    private static boolean ATC_AOSP_ENHANCEMENT = false;
    public static final boolean BYPASS_METADATA_FILTER = false;
    private static boolean DEBUG = SystemProperties.getBoolean("persist.mediaplayer.log.on", false);
    private static final String IMEDIA_PLAYER = "android.media.IMediaPlayer";
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE = 2;
    private static final int INVOKE_ID_ADD_EXTERNAL_SOURCE_FD = 3;
    private static final int INVOKE_ID_DESELECT_TRACK = 5;
    private static final int INVOKE_ID_GET_SELECTED_TRACK = 7;
    private static final int INVOKE_ID_GET_TRACK_INFO = 1;
    private static final int INVOKE_ID_SELECT_TRACK = 4;
    private static final int INVOKE_ID_SET_VIDEO_SCALE_MODE = 6;
    private static final int KEY_PARAMETER_AUDIO_ATTRIBUTES = 1400;
    private static final int MEDIA_AUDIO_ROUTING_CHANGED = 10000;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_DRM_INFO = 210;
    private static final int MEDIA_ERROR = 100;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_SYSTEM = Integer.MIN_VALUE;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    private static final int MEDIA_INFO = 200;
    public static final int MEDIA_INFO_AUDIO_NOT_PLAYING = 804;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NETWORK_BANDWIDTH = 703;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_STARTED_AS_NEXT = 2;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_TIMED_TEXT_ERROR = 900;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_NOT_PLAYING = 805;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    private static final int MEDIA_META_DATA = 202;
    public static final String MEDIA_MIMETYPE_TEXT_CEA_608 = "text/cea-608";
    public static final String MEDIA_MIMETYPE_TEXT_CEA_708 = "text/cea-708";
    public static final String MEDIA_MIMETYPE_TEXT_SUBRIP = "application/x-subrip";
    public static final String MEDIA_MIMETYPE_TEXT_VTT = "text/vtt";
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_NOTIFY_TIME = 98;
    private static final int MEDIA_PAUSED = 7;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final int MEDIA_SKIPPED = 9;
    private static final int MEDIA_STARTED = 6;
    private static final int MEDIA_STOPPED = 8;
    private static final int MEDIA_SUBTITLE_DATA = 201;
    private static final int MEDIA_TIMED_TEXT = 99;
    private static final int MEDIA_TIME_DISCONTINUITY = 211;
    public static final boolean METADATA_ALL = false;
    public static final boolean METADATA_UPDATE_ONLY = true;
    public static final int PLAYBACK_RATE_AUDIO_MODE_DEFAULT = 0;
    public static final int PLAYBACK_RATE_AUDIO_MODE_RESAMPLE = 2;
    public static final int PLAYBACK_RATE_AUDIO_MODE_STRETCH = 1;
    public static final int PREPARE_DRM_STATUS_PREPARATION_ERROR = 3;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR = 1;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR = 2;
    public static final int PREPARE_DRM_STATUS_SUCCESS = 0;
    public static final int SEEK_CLOSEST = 3;
    public static final int SEEK_CLOSEST_SYNC = 2;
    public static final int SEEK_NEXT_SYNC = 1;
    public static final int SEEK_PREVIOUS_SYNC = 0;
    private static final String TAG = "MediaPlayer";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    private boolean mActiveDrmScheme;
    private boolean mBypassInterruptionPolicy;
    private boolean mDrmConfigAllowed;
    private DrmInfo mDrmInfo;
    private boolean mDrmInfoResolved;
    private final Object mDrmLock;
    private MediaDrm mDrmObj;
    private boolean mDrmProvisioningInProgress;
    private ProvisioningThread mDrmProvisioningThread;
    private byte[] mDrmSessionId;
    private UUID mDrmUUID;
    private EventHandler mEventHandler;
    private Handler mExtSubtitleDataHandler;
    private OnSubtitleDataListener mExtSubtitleDataListener;
    private BitSet mInbandTrackIndices;
    private Vector<Pair<Integer, SubtitleTrack>> mIndexTrackPairs;
    private final OnSubtitleDataListener mIntSubtitleDataListener;
    private int mListenerContext;
    private long mNativeContext;
    private long mNativeSurfaceTexture;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private final OnCompletionListener mOnCompletionInternalListener;
    private OnCompletionListener mOnCompletionListener;
    private OnDrmConfigHelper mOnDrmConfigHelper;
    private OnDrmInfoHandlerDelegate mOnDrmInfoHandlerDelegate;
    private OnDrmPreparedHandlerDelegate mOnDrmPreparedHandlerDelegate;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private Handler mOnMediaTimeDiscontinuityHandler;
    private OnMediaTimeDiscontinuityListener mOnMediaTimeDiscontinuityListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnTimedMetaDataAvailableListener mOnTimedMetaDataAvailableListener;
    private OnTimedTextListener mOnTimedTextListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private Vector<InputStream> mOpenSubtitleSources;
    private AudioDeviceInfo mPreferredDevice;
    private boolean mPrepareDrmInProgress;

    @GuardedBy("mRoutingChangeListeners")
    private ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> mRoutingChangeListeners;
    private boolean mScreenOnWhilePlaying;
    private int mSelectedSubtitleTrackIndex;
    private boolean mStayAwake;
    private int mStreamType;
    private SubtitleController mSubtitleController;
    private boolean mSubtitleDataListenerDisabled;
    private SurfaceHolder mSurfaceHolder;
    private TimeProvider mTimeProvider;
    private int mUsage;
    private PowerManager.WakeLock mWakeLock;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrmConfigHelper {
        void onDrmConfig(MediaPlayer mediaPlayer);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrmInfoListener {
        void onDrmInfo(MediaPlayer mediaPlayer, DrmInfo drmInfo);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrmPreparedListener {
        void onDrmPrepared(MediaPlayer mediaPlayer, int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i, int i2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i, int i2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnMediaTimeDiscontinuityListener {
        void onMediaTimeDiscontinuity(MediaPlayer mediaPlayer, MediaTimestamp mediaTimestamp);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnPreparedListener {
        void onPrepared(MediaPlayer mediaPlayer);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnSeekCompleteListener {
        void onSeekComplete(MediaPlayer mediaPlayer);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnSubtitleDataListener {
        void onSubtitleData(MediaPlayer mediaPlayer, SubtitleData subtitleData);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnTimedMetaDataAvailableListener {
        void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, TimedMetaData timedMetaData);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnTimedTextListener {
        void onTimedText(MediaPlayer mediaPlayer, TimedText timedText);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface PlaybackRateAudioMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface PrepareDrmStatusCode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface SeekMode {
    }

    private native int _getAudioStreamType() throws IllegalStateException;

    private native void _notifyAt(long j);

    private native void _pause() throws IllegalStateException;

    private native void _prepare() throws IOException, IllegalStateException;

    private native void _prepareDrm(byte[] bArr, byte[] bArr2);

    private native void _release();

    private native void _releaseDrm();

    private native void _reset();

    private final native void _seekTo(long j, int i);

    private native void _setAudioStreamType(int i);

    private native void _setAuxEffectSendLevel(float f);

    private native void _setDataSource(MediaDataSource mediaDataSource) throws IllegalArgumentException, IllegalStateException;

    private native void _setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IOException, IllegalArgumentException, IllegalStateException;

    private native void _setVideoSurface(Surface surface);

    private native void _setVolume(float f, float f2);

    private native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    private boolean isVideoScalingModeSupported(int i) {
        return i == 1 || i == 2;
    }

    private native void nativeSetDataSource(IBinder iBinder, String str, String[] strArr, String[] strArr2) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    private native int native_applyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation);

    private final native void native_enableDeviceCallback(boolean z);

    private final native void native_finalize();

    private final native boolean native_getMetadata(boolean z, boolean z2, Parcel parcel);

    private native PersistableBundle native_getMetrics();

    private final native int native_getRoutedDeviceId();

    private native VolumeShaper.State native_getVolumeShaperState(int i);

    private static final native void native_init();

    private final native int native_invoke(Parcel parcel, Parcel parcel2);

    public static native int native_pullBatteryData(Parcel parcel);

    private final native int native_setMetadataFilter(Parcel parcel);

    private final native boolean native_setOutputDevice(int i);

    private final native int native_setRetransmitEndpoint(String str, int i);

    private final native void native_setup(Object obj);

    private native boolean setParameter(int i, Parcel parcel);

    public native void attachAuxEffect(int i);

    public native int getAudioSessionId();

    public native BufferingParams getBufferingParams();

    public native int getCurrentPosition();

    public native int getDuration();

    public native PlaybackParams getPlaybackParams();

    public native SyncParams getSyncParams();

    public native int getVideoHeight();

    public native int getVideoWidth();

    public native boolean isLooping();

    public native boolean isPlaying();

    public native void prepareAsync() throws IllegalStateException;

    public native void setAudioSessionId(int i) throws IllegalArgumentException, IllegalStateException;

    public native void setBufferingParams(BufferingParams bufferingParams);

    public native void setLooping(boolean z);

    public native void setNextMediaPlayer(MediaPlayer mediaPlayer);

    public native void setPlaybackParams(PlaybackParams playbackParams);

    public native void setSyncParams(SyncParams syncParams);

    static {
        System.loadLibrary("media_jni");
        native_init();
        ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    }

    public MediaPlayer() {
        super(new AudioAttributes.Builder().build(), 2);
        this.mWakeLock = null;
        this.mStreamType = Integer.MIN_VALUE;
        this.mUsage = -1;
        this.mDrmLock = new Object();
        this.mPreferredDevice = null;
        this.mRoutingChangeListeners = new ArrayMap<>();
        this.mIndexTrackPairs = new Vector<>();
        this.mInbandTrackIndices = new BitSet();
        this.mSelectedSubtitleTrackIndex = -1;
        this.mIntSubtitleDataListener = new OnSubtitleDataListener() { // from class: android.media.MediaPlayer.3
            @Override // android.media.MediaPlayer.OnSubtitleDataListener
            public void onSubtitleData(MediaPlayer mediaPlayer, SubtitleData subtitleData) {
                int trackIndex = subtitleData.getTrackIndex();
                synchronized (MediaPlayer.this.mIndexTrackPairs) {
                    Iterator it = MediaPlayer.this.mIndexTrackPairs.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        if (pair.first != null && ((Integer) pair.first).intValue() == trackIndex && pair.second != null) {
                            ((SubtitleTrack) pair.second).onData(subtitleData);
                        }
                    }
                }
            }
        };
        this.mOnCompletionInternalListener = new OnCompletionListener() { // from class: android.media.MediaPlayer.7
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                MediaPlayer.this.baseStop();
            }
        };
        Log.i(TAG, "[" + this + "] create MediaPlayer");
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.mEventHandler = new EventHandler(this, myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        this.mTimeProvider = new TimeProvider(this);
        this.mOpenSubtitleSources = new Vector<>();
        native_setup(new WeakReference(this));
        Log.i(TAG, "[" + this + "] baseRegisterPlayer");
        baseRegisterPlayer();
        Log.i(TAG, "[" + this + "] MediaPlayer created, mEventHandler:" + this.mEventHandler + ", mTimeProvider:" + this.mTimeProvider);
    }

    public Parcel newRequest() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(IMEDIA_PLAYER);
        return obtain;
    }

    public void invoke(Parcel parcel, Parcel parcel2) {
        Log.i(TAG, "[" + this + "] invoke");
        int native_invoke = native_invoke(parcel, parcel2);
        parcel2.setDataPosition(0);
        if (native_invoke == 0) {
            return;
        }
        throw new RuntimeException("failure code: " + native_invoke);
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        Log.i(TAG, "[" + this + "] setDisplay, SurfaceHolder:" + surfaceHolder);
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        updateSurfaceScreenOn();
    }

    public void setSurface(Surface surface) {
        Log.i(TAG, "[" + this + "] setSurface:" + surface);
        if (this.mScreenOnWhilePlaying && surface != null) {
            Log.w(TAG, "[" + this + "] setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    public void setVideoScalingMode(int i) {
        Log.i(TAG, "[" + this + "] setVideoScalingMode:" + i);
        if (!isVideoScalingModeSupported(i)) {
            throw new IllegalArgumentException("Scaling mode " + i + " is not supported");
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IMEDIA_PLAYER);
            obtain.writeInt(6);
            obtain.writeInt(i);
            invoke(obtain, obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    public static MediaPlayer create(Context context, Uri uri) {
        Log.i(TAG, "create, uri:" + uri);
        return create(context, uri, null);
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder surfaceHolder) {
        Log.i(TAG, "create, uri:" + uri + ", surfaceHolder:" + surfaceHolder);
        int newAudioSessionId = AudioSystem.newAudioSessionId();
        if (newAudioSessionId <= 0) {
            newAudioSessionId = 0;
        }
        return create(context, uri, surfaceHolder, null, newAudioSessionId);
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder surfaceHolder, AudioAttributes audioAttributes, int i) {
        try {
            Log.i(TAG, "create, uri:" + uri + ", surfaceHolder:" + surfaceHolder + ", sessionId:" + i);
            MediaPlayer mediaPlayer = new MediaPlayer();
            if (audioAttributes == null) {
                audioAttributes = new AudioAttributes.Builder().build();
            }
            mediaPlayer.setAudioAttributes(audioAttributes);
            mediaPlayer.setAudioSessionId(i);
            mediaPlayer.setDataSource(context, uri);
            if (surfaceHolder != null) {
                mediaPlayer.setDisplay(surfaceHolder);
            }
            mediaPlayer.prepare();
            Log.i(TAG, "create, uri:" + uri + ", surfaceHolder:" + surfaceHolder + ", sessionId:" + i + ", MediaPlayer:" + mediaPlayer);
            return mediaPlayer;
        } catch (IOException e) {
            Log.d(TAG, "create failed:", e);
            return null;
        } catch (IllegalArgumentException e2) {
            Log.d(TAG, "create failed:", e2);
            return null;
        } catch (SecurityException e3) {
            Log.d(TAG, "create failed:", e3);
            return null;
        }
    }

    public static MediaPlayer create(Context context, int i) {
        Log.i(TAG, "create, resid:" + i);
        int newAudioSessionId = AudioSystem.newAudioSessionId();
        if (newAudioSessionId <= 0) {
            newAudioSessionId = 0;
        }
        return create(context, i, null, newAudioSessionId);
    }

    public static MediaPlayer create(Context context, int i, AudioAttributes audioAttributes, int i2) {
        try {
            Log.i(TAG, "create, resid:" + i + ", sessionId:" + i2);
            AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(i);
            if (openRawResourceFd == null) {
                return null;
            }
            MediaPlayer mediaPlayer = new MediaPlayer();
            if (audioAttributes == null) {
                audioAttributes = new AudioAttributes.Builder().build();
            }
            mediaPlayer.setAudioAttributes(audioAttributes);
            mediaPlayer.setAudioSessionId(i2);
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.prepare();
            Log.i(TAG, "create, resid:" + i + ", sessionId:" + i2 + ", MediaPlayer:" + mediaPlayer);
            return mediaPlayer;
        } catch (IOException e) {
            Log.d(TAG, "create failed:", e);
            return null;
        } catch (IllegalArgumentException e2) {
            Log.d(TAG, "create failed:", e2);
            return null;
        } catch (SecurityException e3) {
            Log.d(TAG, "create failed:", e3);
            return null;
        }
    }

    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, uri:" + uri);
        setDataSource(context, uri, (Map<String, String>) null, (List<HttpCookie>) null);
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map, List<HttpCookie> list) throws IOException {
        CookieHandler cookieHandler;
        Log.i(TAG, "[" + this + "] setDataSource, uri:" + uri + ", headers:" + map);
        if (context == null) {
            throw new NullPointerException("context param can not be null.");
        }
        if (uri == null) {
            throw new NullPointerException("uri param can not be null.");
        }
        if (list != null && (cookieHandler = CookieHandler.getDefault()) != null && !(cookieHandler instanceof CookieManager)) {
            throw new IllegalArgumentException("The cookie handler has to be of CookieManager type when cookies are provided.");
        }
        ContentResolver contentResolver = context.getContentResolver();
        String scheme = uri.getScheme();
        String authorityWithoutUserId = ContentProvider.getAuthorityWithoutUserId(uri.getAuthority());
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            setDataSource(uri.getPath());
            return;
        }
        if ("content".equals(scheme) && "settings".equals(authorityWithoutUserId)) {
            int defaultType = RingtoneManager.getDefaultType(uri);
            Uri cacheForType = RingtoneManager.getCacheForType(defaultType, context.getUserId());
            Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(context, defaultType);
            if (attemptDataSource(contentResolver, cacheForType) || attemptDataSource(contentResolver, actualDefaultRingtoneUri)) {
                return;
            }
            setDataSource(uri.toString(), map, list);
            return;
        }
        if (attemptDataSource(contentResolver, uri)) {
            return;
        }
        setDataSource(uri.toString(), map, list);
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, uri:" + uri);
        setDataSource(context, uri, map, (List<HttpCookie>) null);
    }

    private boolean attemptDataSource(ContentResolver contentResolver, Uri uri) {
        try {
            AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            Throwable th = null;
            try {
                setDataSource(openAssetFileDescriptor);
                if (openAssetFileDescriptor != null) {
                    openAssetFileDescriptor.close();
                }
                return true;
            } catch (Throwable th2) {
                if (openAssetFileDescriptor != null) {
                    if (0 != 0) {
                        try {
                            openAssetFileDescriptor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        openAssetFileDescriptor.close();
                    }
                }
                throw th2;
            }
        } catch (IOException | NullPointerException | SecurityException e) {
            Log.w(TAG, "[" + this + "] Couldn't open " + uri + ": " + e);
            return false;
        }
    }

    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, path:" + str);
        setDataSource(str, (Map<String, String>) null, (List<HttpCookie>) null);
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, path:" + str);
        setDataSource(str, map, (List<HttpCookie>) null);
    }

    private void setDataSource(String str, Map<String, String> map, List<HttpCookie> list) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        String[] strArr;
        Log.i(TAG, "[" + this + "] setDataSource, path:" + str + ", cookies:" + list);
        String[] strArr2 = null;
        if (map != null) {
            strArr2 = new String[map.size()];
            strArr = new String[map.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr2[i] = entry.getKey();
                strArr[i] = entry.getValue();
                i++;
            }
        } else {
            strArr = null;
        }
        setDataSource(str, strArr2, strArr, list);
    }

    private void setDataSource(String str, String[] strArr, String[] strArr2, List<HttpCookie> list) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        FileInputStream fileInputStream;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            str = parse.getPath();
        } else if (scheme != null) {
            nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str, list), str, strArr, strArr2);
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            if (ATC_AOSP_ENHANCEMENT) {
                FileInputStream fileInputStream2 = null;
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    setDataSource(fileInputStream.getFD());
                    fileInputStream.close();
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    throw th;
                }
            }
            FileInputStream fileInputStream3 = new FileInputStream(file);
            setDataSource(fileInputStream3.getFD());
            fileInputStream3.close();
            return;
        }
        throw new IOException("setDataSource failed.");
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        Preconditions.checkNotNull(assetFileDescriptor);
        Log.d(TAG, "[" + this + "] setDataSource, afd:" + assetFileDescriptor);
        if (assetFileDescriptor.getDeclaredLength() < 0) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, fd:" + fileDescriptor);
        setDataSource(fileDescriptor, 0L, DataSourceDesc.LONG_MAX);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IOException, IllegalArgumentException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, fd:" + fileDescriptor + ", offset:" + j + ", length:" + j2);
        _setDataSource(fileDescriptor, j, j2);
    }

    public void setDataSource(MediaDataSource mediaDataSource) throws IllegalArgumentException, IllegalStateException {
        Log.i(TAG, "[" + this + "] setDataSource, dataSource:" + mediaDataSource);
        _setDataSource(mediaDataSource);
    }

    public void prepare() throws IOException, IllegalStateException {
        Log.i(TAG, "[" + this + "] prepare");
        _prepare();
        scanInternalSubtitleTracks();
        synchronized (this.mDrmLock) {
            this.mDrmInfoResolved = true;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.media.MediaPlayer$1] */
    public void start() throws IllegalStateException {
        Log.i(TAG, "[" + this + "] start");
        final int startDelayMs = getStartDelayMs();
        if (startDelayMs == 0) {
            startImpl();
        } else {
            new Thread() { // from class: android.media.MediaPlayer.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(startDelayMs);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    MediaPlayer.this.baseSetStartDelayMs(0);
                    try {
                        MediaPlayer.this.startImpl();
                    } catch (IllegalStateException e2) {
                        if (MediaPlayer.ATC_AOSP_ENHANCEMENT) {
                            throw e2;
                        }
                    }
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startImpl() {
        baseStart();
        stayAwake(true);
        _start();
    }

    private int getAudioStreamType() {
        if (this.mStreamType == Integer.MIN_VALUE) {
            this.mStreamType = _getAudioStreamType();
        }
        return this.mStreamType;
    }

    public void stop() throws IllegalStateException {
        Log.i(TAG, "[" + this + "] stop");
        stayAwake(false);
        _stop();
        baseStop();
    }

    public void pause() throws IllegalStateException {
        Log.i(TAG, "[" + this + "] pause");
        stayAwake(false);
        _pause();
        basePause();
    }

    @Override // android.media.PlayerBase
    void playerStart() {
        start();
    }

    @Override // android.media.PlayerBase
    void playerPause() {
        pause();
    }

    @Override // android.media.PlayerBase
    void playerStop() {
        stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.media.PlayerBase
    public int playerApplyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
        Log.i(TAG, "[" + this + "] playerApplyVolumeShaper, conf:" + configuration + ", oper:" + operation);
        return native_applyVolumeShaper(configuration, operation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.media.PlayerBase
    public VolumeShaper.State playerGetVolumeShaperState(int i) {
        return native_getVolumeShaperState(i);
    }

    @Override // android.media.VolumeAutomation
    public VolumeShaper createVolumeShaper(VolumeShaper.Configuration configuration) {
        return new VolumeShaper(configuration, this);
    }

    @Override // android.media.AudioRouting
    public boolean setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        if (audioDeviceInfo != null && !audioDeviceInfo.isSink()) {
            return false;
        }
        boolean native_setOutputDevice = native_setOutputDevice(audioDeviceInfo != null ? audioDeviceInfo.getId() : 0);
        if (native_setOutputDevice) {
            synchronized (this) {
                this.mPreferredDevice = audioDeviceInfo;
            }
        }
        return native_setOutputDevice;
    }

    @Override // android.media.AudioRouting
    public AudioDeviceInfo getPreferredDevice() {
        AudioDeviceInfo audioDeviceInfo;
        synchronized (this) {
            audioDeviceInfo = this.mPreferredDevice;
        }
        return audioDeviceInfo;
    }

    @Override // android.media.AudioRouting
    public AudioDeviceInfo getRoutedDevice() {
        int native_getRoutedDeviceId = native_getRoutedDeviceId();
        if (native_getRoutedDeviceId == 0) {
            return null;
        }
        AudioDeviceInfo[] devicesStatic = AudioManager.getDevicesStatic(2);
        for (int i = 0; i < devicesStatic.length; i++) {
            if (devicesStatic[i].getId() == native_getRoutedDeviceId) {
                return devicesStatic[i];
            }
        }
        return null;
    }

    @GuardedBy("mRoutingChangeListeners")
    private void enableNativeRoutingCallbacksLocked(boolean z) {
        if (this.mRoutingChangeListeners.size() == 0) {
            native_enableDeviceCallback(z);
        }
    }

    @Override // android.media.AudioRouting
    public void addOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
        synchronized (this.mRoutingChangeListeners) {
            if (onRoutingChangedListener != null) {
                try {
                    if (!this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                        enableNativeRoutingCallbacksLocked(true);
                        ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> arrayMap = this.mRoutingChangeListeners;
                        if (handler == null) {
                            handler = this.mEventHandler;
                        }
                        arrayMap.put(onRoutingChangedListener, new NativeRoutingEventHandlerDelegate(this, onRoutingChangedListener, handler));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.media.AudioRouting
    public void removeOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener) {
        synchronized (this.mRoutingChangeListeners) {
            if (this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                this.mRoutingChangeListeners.remove(onRoutingChangedListener);
                enableNativeRoutingCallbacksLocked(false);
            }
        }
    }

    public void setWakeMode(Context context, int i) {
        boolean z = true;
        if (SystemProperties.getBoolean("audio.offload.ignore_setawake", false)) {
            Log.w(TAG, "[" + this + "] IGNORING setWakeMode " + i);
            return;
        }
        if (this.mWakeLock != null) {
            if (this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            } else {
                z = false;
            }
            this.mWakeLock = null;
        } else {
            z = false;
        }
        this.mWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(i | 536870912, MediaPlayer.class.getName());
        this.mWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
        }
    }

    public void setScreenOnWhilePlaying(boolean z) {
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                Log.w(TAG, "[" + this + "] setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z;
            updateSurfaceScreenOn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stayAwake(boolean z) {
        if (this.mWakeLock != null) {
            if (z && !this.mWakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z;
        updateSurfaceScreenOn();
    }

    private void updateSurfaceScreenOn() {
        if (this.mSurfaceHolder != null) {
            this.mSurfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    public PlaybackParams easyPlaybackParams(float f, int i) {
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.allowDefaults();
        switch (i) {
            case 0:
                playbackParams.setSpeed(f).setPitch(1.0f);
                return playbackParams;
            case 1:
                playbackParams.setSpeed(f).setPitch(1.0f).setAudioFallbackMode(2);
                return playbackParams;
            case 2:
                playbackParams.setSpeed(f).setPitch(f);
                return playbackParams;
            default:
                throw new IllegalArgumentException("Audio playback mode " + i + " is not supported");
        }
    }

    public void seekTo(long j, int i) {
        Log.i(TAG, "[" + this + "] seekTo:" + j + ", mode:" + i);
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("Illegal seek mode: " + i);
        }
        if (j > 2147483647L) {
            Log.w(TAG, "[" + this + "] seekTo offset " + j + " is too large, cap to 2147483647");
            j = 2147483647L;
        } else if (j < -2147483648L) {
            Log.w(TAG, "[" + this + "] seekTo offset " + j + " is too small, cap to -2147483648");
            j = -2147483648L;
        }
        _seekTo(j, i);
    }

    public void seekTo(int i) throws IllegalStateException {
        Log.i(TAG, "[" + this + "] seekTo:" + i);
        seekTo((long) i, 0);
    }

    public MediaTimestamp getTimestamp() {
        try {
            return new MediaTimestamp(getCurrentPosition() * 1000, System.nanoTime(), isPlaying() ? getPlaybackParams().getSpeed() : 0.0f);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public Metadata getMetadata(boolean z, boolean z2) {
        Log.i(TAG, "[" + this + "] getMetadata, update:" + z + ", apply:" + z2);
        Parcel obtain = Parcel.obtain();
        Metadata metadata = new Metadata();
        if (!native_getMetadata(z, z2, obtain)) {
            obtain.recycle();
            return null;
        }
        if (metadata.parse(obtain)) {
            return metadata;
        }
        obtain.recycle();
        return null;
    }

    public int setMetadataFilter(Set<Integer> set, Set<Integer> set2) {
        Log.i(TAG, "[" + this + "] setMetadataFilter, allow:" + set + ", block:" + set2);
        Parcel newRequest = newRequest();
        int dataSize = newRequest.dataSize() + ((set.size() + 1 + 1 + set2.size()) * 4);
        if (newRequest.dataCapacity() < dataSize) {
            newRequest.setDataCapacity(dataSize);
        }
        newRequest.writeInt(set.size());
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            newRequest.writeInt(it.next().intValue());
        }
        newRequest.writeInt(set2.size());
        Iterator<Integer> it2 = set2.iterator();
        while (it2.hasNext()) {
            newRequest.writeInt(it2.next().intValue());
        }
        return native_setMetadataFilter(newRequest);
    }

    public void release() {
        Log.i(TAG, "[" + this + "] release");
        if (DEBUG) {
            new Exception(BuildConfig.BUILD_TYPE).printStackTrace();
        }
        baseRelease();
        stayAwake(false);
        updateSurfaceScreenOn();
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnTimedTextListener = null;
        if (ATC_AOSP_ENHANCEMENT) {
            synchronized (this.mOpenSubtitleSources) {
                Iterator<InputStream> it = this.mOpenSubtitleSources.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().close();
                    } catch (IOException unused) {
                    }
                }
                this.mOpenSubtitleSources.clear();
            }
        }
        if (this.mTimeProvider != null) {
            this.mTimeProvider.close();
            this.mTimeProvider = null;
        }
        synchronized (this) {
            this.mSubtitleDataListenerDisabled = false;
            this.mExtSubtitleDataListener = null;
            this.mExtSubtitleDataHandler = null;
            this.mOnMediaTimeDiscontinuityListener = null;
            this.mOnMediaTimeDiscontinuityHandler = null;
        }
        this.mOnDrmConfigHelper = null;
        this.mOnDrmInfoHandlerDelegate = null;
        this.mOnDrmPreparedHandlerDelegate = null;
        resetDrmState();
        _release();
        Log.i(TAG, "[" + this + "] released");
    }

    public void reset() {
        Log.i(TAG, "[" + this + "] reset");
        if (DEBUG) {
            new Exception("reset").printStackTrace();
        }
        this.mSelectedSubtitleTrackIndex = -1;
        synchronized (this.mOpenSubtitleSources) {
            Iterator<InputStream> it = this.mOpenSubtitleSources.iterator();
            while (it.hasNext()) {
                try {
                    it.next().close();
                } catch (IOException unused) {
                }
            }
            this.mOpenSubtitleSources.clear();
        }
        if (this.mSubtitleController != null) {
            this.mSubtitleController.reset();
        }
        if (this.mTimeProvider != null) {
            this.mTimeProvider.close();
            this.mTimeProvider = null;
        }
        stayAwake(false);
        _reset();
        if (this.mEventHandler != null) {
            this.mEventHandler.removeCallbacksAndMessages(null);
        }
        synchronized (this.mIndexTrackPairs) {
            this.mIndexTrackPairs.clear();
            this.mInbandTrackIndices.clear();
        }
        resetDrmState();
        Log.i(TAG, "[" + this + "] reset done");
    }

    public void notifyAt(long j) {
        _notifyAt(j);
    }

    public void setAudioStreamType(int i) {
        Log.i(TAG, "[" + this + "] setAudioStreamType:" + i);
        deprecateStreamTypeForPlayback(i, TAG, "setAudioStreamType()");
        baseUpdateAudioAttributes(new AudioAttributes.Builder().setInternalLegacyStreamType(i).build());
        _setAudioStreamType(i);
        this.mStreamType = i;
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) throws IllegalArgumentException {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Cannot set AudioAttributes to null");
        }
        baseUpdateAudioAttributes(audioAttributes);
        this.mUsage = audioAttributes.getUsage();
        this.mBypassInterruptionPolicy = (audioAttributes.getAllFlags() & 64) != 0;
        Parcel obtain = Parcel.obtain();
        audioAttributes.writeToParcel(obtain, 1);
        setParameter(KEY_PARAMETER_AUDIO_ATTRIBUTES, obtain);
        obtain.recycle();
    }

    public void setVolume(float f, float f2) {
        Log.i(TAG, "[" + this + "] setVolume, left:" + f + ", right:" + f2);
        baseSetVolume(f, f2);
    }

    @Override // android.media.PlayerBase
    void playerSetVolume(boolean z, float f, float f2) {
        Log.i(TAG, "[" + this + "] playerSetVolume, muting:" + z + ", left:" + f + ", right:" + f2);
        if (z) {
            f = 0.0f;
        }
        if (z) {
            f2 = 0.0f;
        }
        _setVolume(f, f2);
    }

    public void setVolume(float f) {
        Log.i(TAG, "[" + this + "] setVolume, volume:" + f);
        setVolume(f, f);
    }

    public void setAuxEffectSendLevel(float f) {
        Log.i(TAG, "[" + this + "] setAuxEffectSendLevel:" + f);
        baseSetAuxEffectSendLevel(f);
    }

    @Override // android.media.PlayerBase
    int playerSetAuxEffectSendLevel(boolean z, float f) {
        Log.i(TAG, "[" + this + "] playerSetAuxEffectSendLevel:" + f + ", muting:" + z);
        if (z) {
            f = 0.0f;
        }
        _setAuxEffectSendLevel(f);
        return 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TrackInfo implements Parcelable {
        static final Parcelable.Creator<TrackInfo> CREATOR = new Parcelable.Creator<TrackInfo>() { // from class: android.media.MediaPlayer.TrackInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfo createFromParcel(Parcel parcel) {
                return new TrackInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfo[] newArray(int i) {
                return new TrackInfo[i];
            }
        };
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_TIMEDTEXT = 3;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;
        final MediaFormat mFormat;
        final int mTrackType;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface TrackType {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getTrackType() {
            return this.mTrackType;
        }

        public String getLanguage() {
            String string = this.mFormat.getString(MediaFormat.KEY_LANGUAGE);
            return string == null ? "und" : string;
        }

        public MediaFormat getFormat() {
            if (this.mTrackType == 3 || this.mTrackType == 4) {
                return this.mFormat;
            }
            return null;
        }

        TrackInfo(Parcel parcel) {
            this.mTrackType = parcel.readInt();
            this.mFormat = MediaFormat.createSubtitleFormat(parcel.readString(), parcel.readString());
            if (this.mTrackType == 4) {
                this.mFormat.setInteger(MediaFormat.KEY_IS_AUTOSELECT, parcel.readInt());
                this.mFormat.setInteger(MediaFormat.KEY_IS_DEFAULT, parcel.readInt());
                this.mFormat.setInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE, parcel.readInt());
            }
        }

        TrackInfo(int i, MediaFormat mediaFormat) {
            this.mTrackType = i;
            this.mFormat = mediaFormat;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mTrackType);
            parcel.writeString(this.mFormat.getString(MediaFormat.KEY_MIME));
            parcel.writeString(getLanguage());
            if (this.mTrackType == 4) {
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_AUTOSELECT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_DEFAULT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE));
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(getClass().getName());
            sb.append('{');
            switch (this.mTrackType) {
                case 1:
                    sb.append("VIDEO");
                    break;
                case 2:
                    sb.append("AUDIO");
                    break;
                case 3:
                    sb.append("TIMEDTEXT");
                    break;
                case 4:
                    sb.append("SUBTITLE");
                    break;
                default:
                    sb.append("UNKNOWN");
                    break;
            }
            sb.append(", " + this.mFormat.toString());
            sb.append("}");
            return sb.toString();
        }
    }

    public TrackInfo[] getTrackInfo() throws IllegalStateException {
        TrackInfo[] trackInfoArr;
        Log.i(TAG, "[" + this + "] getTrackInfo");
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        synchronized (this.mIndexTrackPairs) {
            trackInfoArr = new TrackInfo[this.mIndexTrackPairs.size()];
            for (int i = 0; i < trackInfoArr.length; i++) {
                Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i);
                if (pair.first != null) {
                    trackInfoArr[i] = inbandTrackInfo[((Integer) pair.first).intValue()];
                } else {
                    SubtitleTrack subtitleTrack = (SubtitleTrack) pair.second;
                    trackInfoArr[i] = new TrackInfo(subtitleTrack.getTrackType(), subtitleTrack.getFormat());
                }
            }
            Log.i(TAG, "[" + this + "] getTrackInfo:" + trackInfoArr.length + ", inband:" + inbandTrackInfo.length);
        }
        return trackInfoArr;
    }

    private TrackInfo[] getInbandTrackInfo() throws IllegalStateException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IMEDIA_PLAYER);
            obtain.writeInt(1);
            invoke(obtain, obtain2);
            return (TrackInfo[]) obtain2.createTypedArray(TrackInfo.CREATOR);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    private static boolean availableMimeTypeForExternalSource(String str) {
        if (ATC_AOSP_ENHANCEMENT) {
            try {
                return ((Boolean) Class.forName("com.autochips.timedtext.TimedTextMaster", true, new DexClassLoader("/system/framework/autochips-timedtext.jar", ActivityThread.currentApplication().getDir("dex", 0).getAbsolutePath(), null, ClassLoader.getSystemClassLoader())).getDeclaredMethod("supportedByVendorExternalTimedText", String.class).invoke(null, str)).booleanValue();
            } catch (Exception e) {
                Log.e(TAG, "Can't found com.autochips.timedtext.TimedTextMaster, Exception:" + e);
            }
        }
        return "application/x-subrip".equals(str);
    }

    public void setSubtitleAnchor(SubtitleController subtitleController, SubtitleController.Anchor anchor) {
        Log.i(TAG, "[" + this + "] setSubtitleAnchor");
        this.mSubtitleController = subtitleController;
        this.mSubtitleController.setAnchor(anchor);
    }

    private synchronized void setSubtitleAnchor() {
        if (this.mSubtitleController == null && ActivityThread.currentApplication() != null) {
            final HandlerThread handlerThread = new HandlerThread("SetSubtitleAnchorThread");
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.2
                @Override // java.lang.Runnable
                public void run() {
                    Application currentApplication = ActivityThread.currentApplication();
                    MediaPlayer.this.mSubtitleController = new SubtitleController(currentApplication, MediaPlayer.this.mTimeProvider, MediaPlayer.this);
                    MediaPlayer.this.mSubtitleController.setAnchor(new SubtitleController.Anchor() { // from class: android.media.MediaPlayer.2.1
                        @Override // android.media.SubtitleController.Anchor
                        public void setSubtitleWidget(SubtitleTrack.RenderingWidget renderingWidget) {
                        }

                        @Override // android.media.SubtitleController.Anchor
                        public Looper getSubtitleLooper() {
                            return Looper.getMainLooper();
                        }
                    });
                    handlerThread.getLooper().quitSafely();
                }
            });
            try {
                handlerThread.join();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                Log.w(TAG, "[" + this + "] failed to join SetSubtitleAnchorThread");
            }
        }
    }

    @Override // android.media.SubtitleController.Listener
    public void onSubtitleTrackSelected(SubtitleTrack subtitleTrack) {
        if (subtitleTrack == null) {
            Log.i(TAG, "[" + this + "] onSubtitleTrackSelected, track:none");
        } else {
            Log.i(TAG, "[" + this + "] onSubtitleTrackSelected, track:" + subtitleTrack.getFormat());
        }
        if (this.mSelectedSubtitleTrackIndex >= 0) {
            try {
                selectOrDeselectInbandTrack(this.mSelectedSubtitleTrackIndex, false);
            } catch (IllegalStateException unused) {
            }
            this.mSelectedSubtitleTrackIndex = -1;
        }
        synchronized (this) {
            this.mSubtitleDataListenerDisabled = true;
        }
        if (subtitleTrack == null) {
            return;
        }
        synchronized (this.mIndexTrackPairs) {
            Iterator<Pair<Integer, SubtitleTrack>> it = this.mIndexTrackPairs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Pair<Integer, SubtitleTrack> next = it.next();
                if (next.first != null && next.second == subtitleTrack) {
                    this.mSelectedSubtitleTrackIndex = ((Integer) next.first).intValue();
                    break;
                }
            }
        }
        if (this.mSelectedSubtitleTrackIndex >= 0) {
            try {
                selectOrDeselectInbandTrack(this.mSelectedSubtitleTrackIndex, true);
            } catch (IllegalStateException unused2) {
            }
            synchronized (this) {
                this.mSubtitleDataListenerDisabled = false;
            }
        }
    }

    public void addSubtitleSource(final InputStream inputStream, final MediaFormat mediaFormat) throws IllegalStateException {
        Log.i(TAG, "[" + this + "] addSubtitleSource, format:" + mediaFormat.toString());
        if (inputStream != null) {
            synchronized (this.mOpenSubtitleSources) {
                this.mOpenSubtitleSources.add(inputStream);
            }
        } else {
            Log.w(TAG, "[" + this + "] addSubtitleSource called with null InputStream");
        }
        getMediaTimeProvider();
        final HandlerThread handlerThread = new HandlerThread("SubtitleReadThread", 9);
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.4
            private int addTrack() {
                SubtitleTrack addTrack;
                Log.i(MediaPlayer.TAG, "[" + this + "] addSubtitleSource, addTrack now");
                if (inputStream == null || MediaPlayer.this.mSubtitleController == null || (addTrack = MediaPlayer.this.mSubtitleController.addTrack(mediaFormat)) == null) {
                    return 901;
                }
                Scanner scanner = new Scanner(inputStream, "UTF-8");
                String next = scanner.useDelimiter("\\A").next();
                synchronized (MediaPlayer.this.mOpenSubtitleSources) {
                    MediaPlayer.this.mOpenSubtitleSources.remove(inputStream);
                }
                scanner.close();
                synchronized (MediaPlayer.this.mIndexTrackPairs) {
                    Log.i(MediaPlayer.TAG, "[" + this + "] addSubtitleSource, add track:" + addTrack.getFormat());
                    MediaPlayer.this.mIndexTrackPairs.add(Pair.create(null, addTrack));
                }
                Handler handler = MediaPlayer.this.mTimeProvider.mEventHandler;
                handler.sendMessage(handler.obtainMessage(1, 4, 0, Pair.create(addTrack, next.getBytes())));
                return 803;
            }

            @Override // java.lang.Runnable
            public void run() {
                int addTrack = addTrack();
                if (MediaPlayer.this.mEventHandler != null) {
                    MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, addTrack, 0, null));
                }
                handlerThread.getLooper().quitSafely();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanInternalSubtitleTracks() {
        setSubtitleAnchor();
        populateInbandTracks();
        if (this.mSubtitleController != null) {
            this.mSubtitleController.selectDefaultTrack();
        }
    }

    private void populateInbandTracks() {
        TrackInfo[] inbandTrackInfo = getInbandTrackInfo();
        synchronized (this.mIndexTrackPairs) {
            for (int i = 0; i < inbandTrackInfo.length; i++) {
                if (!this.mInbandTrackIndices.get(i)) {
                    this.mInbandTrackIndices.set(i);
                    if (inbandTrackInfo[i] == null) {
                        Log.w(TAG, "[" + this + "] unexpected NULL track at index " + i);
                    }
                    if (inbandTrackInfo[i] != null && inbandTrackInfo[i].getTrackType() == 4) {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i), this.mSubtitleController.addTrack(inbandTrackInfo[i].getFormat())));
                    } else {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i), null));
                    }
                }
            }
        }
    }

    public void addTimedTextSource(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        Log.i(TAG, "[" + this + "] addTimedTextSource, path:" + str + ", mimeType:" + str2);
        if (!availableMimeTypeForExternalSource(str2)) {
            throw new IllegalArgumentException("Illegal mimeType for timed text source: " + str2);
        }
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            addTimedTextSource(fileInputStream.getFD(), str2);
            fileInputStream.close();
            return;
        }
        throw new IOException(str);
    }

    public void addTimedTextSource(Context context, Uri uri, String str) throws IOException, IllegalArgumentException, IllegalStateException {
        if (DEBUG) {
            Log.d(TAG, "[" + this + "] addTimedTextSource, uri:" + uri + ", mimeType:" + str);
        }
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals(ContentResolver.SCHEME_FILE)) {
            addTimedTextSource(uri.getPath(), str);
            return;
        }
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            AssetFileDescriptor openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            if (openAssetFileDescriptor == null) {
                if (openAssetFileDescriptor != null) {
                    openAssetFileDescriptor.close();
                    return;
                }
                return;
            }
            try {
                addTimedTextSource(openAssetFileDescriptor.getFileDescriptor(), str);
                if (openAssetFileDescriptor != null) {
                    openAssetFileDescriptor.close();
                }
            } catch (IOException unused) {
                assetFileDescriptor = openAssetFileDescriptor;
                if (assetFileDescriptor == null) {
                    return;
                }
                assetFileDescriptor.close();
            } catch (SecurityException unused2) {
                assetFileDescriptor = openAssetFileDescriptor;
                if (assetFileDescriptor == null) {
                    return;
                }
                assetFileDescriptor.close();
            } catch (Throwable th) {
                th = th;
                assetFileDescriptor = openAssetFileDescriptor;
                if (assetFileDescriptor != null) {
                    assetFileDescriptor.close();
                }
                throw th;
            }
        } catch (IOException unused3) {
        } catch (SecurityException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void addTimedTextSource(FileDescriptor fileDescriptor, String str) throws IllegalArgumentException, IllegalStateException {
        if (DEBUG) {
            Log.d(TAG, "[" + this + "] addTimedTextSource, fd:" + fileDescriptor + ", mimeType:" + str);
        }
        addTimedTextSource(fileDescriptor, 0L, DataSourceDesc.LONG_MAX, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x02a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addTimedTextSource(FileDescriptor fileDescriptor, final long j, final long j2, String str) throws IllegalArgumentException, IllegalStateException {
        int i;
        if (DEBUG) {
            Log.d(TAG, "[" + this + "] addTimedTextSource, fd:" + fileDescriptor + ", offset:" + j + ", length:" + j2 + ", mime:" + str);
        }
        if (!availableMimeTypeForExternalSource(str)) {
            throw new IllegalArgumentException("Illegal mimeType for timed text source: " + str);
        }
        if (ATC_AOSP_ENHANCEMENT) {
            try {
                if (((Boolean) Class.forName("com.autochips.timedtext.TimedTextUtils", false, new DexClassLoader("/system/framework/autochips-timedtext.jar", ActivityThread.currentApplication().getDir("dex", 0).getAbsolutePath(), null, ClassLoader.getSystemClassLoader())).getDeclaredMethod("isSubFileOfVob", FileDescriptor.class, Long.TYPE, Long.TYPE).invoke(null, fileDescriptor, Long.valueOf(j), Long.valueOf(j2))).booleanValue()) {
                    Log.w(TAG, "[" + this + "] It's sub file of vob, return directly");
                    return;
                }
            } catch (Exception e) {
                Log.e(TAG, "[" + this + "] Can't found com.autochips.timedtext.TimedTextUtils, Exception:" + e);
            }
        }
        try {
            final FileDescriptor dup = Os.dup(fileDescriptor);
            MediaFormat mediaFormat = new MediaFormat();
            mediaFormat.setString(MediaFormat.KEY_MIME, str);
            mediaFormat.setInteger(MediaFormat.KEY_IS_TIMED_TEXT, 1);
            if (this.mSubtitleController == null) {
                setSubtitleAnchor();
            }
            if (!this.mSubtitleController.hasRendererFor(mediaFormat)) {
                Application currentApplication = ActivityThread.currentApplication();
                if (ATC_AOSP_ENHANCEMENT) {
                    try {
                        Object invoke = Class.forName("com.autochips.timedtext.TimedTextMaster", true, new DexClassLoader("/system/framework/autochips-timedtext.jar", currentApplication.getDir("dex", 0).getAbsolutePath(), null, ClassLoader.getSystemClassLoader())).getDeclaredMethod("getAllRenderersOfVendorExternalTimedText", Context.class, Handler.class).invoke(null, currentApplication, this.mEventHandler);
                        int length = Array.getLength(invoke);
                        for (int i2 = 0; i2 < length; i2++) {
                            SubtitleController.Renderer renderer = (SubtitleController.Renderer) Array.get(invoke, i2);
                            Log.d(TAG, "[" + this + "] create renderer:" + renderer);
                            if (renderer != null) {
                                this.mSubtitleController.registerRenderer(renderer);
                            }
                        }
                    } catch (Exception e2) {
                        Log.e(TAG, "[" + this + "] Can't found com.autochips.timedtext.TimedTextMaster, Exception:" + e2);
                        this.mSubtitleController.registerRenderer(new SRTRenderer(currentApplication, this.mEventHandler));
                    }
                } else {
                    this.mSubtitleController.registerRenderer(new SRTRenderer(currentApplication, this.mEventHandler));
                }
            }
            if (!ATC_AOSP_ENHANCEMENT) {
                i = 1;
            } else {
                if (!this.mSubtitleController.hasRendererFor(mediaFormat)) {
                    try {
                        Libcore.os.close(dup);
                    } catch (ErrnoException e3) {
                        Log.e(TAG, "[" + this + "] " + e3.getMessage(), e3);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("[");
                    sb.append(this);
                    sb.append("] Can't find subtitle renderer for ");
                    sb.append(mediaFormat);
                    Log.e(TAG, sb.toString() == null ? "" : mediaFormat.toString());
                    return;
                }
                try {
                    i = 1;
                } catch (Exception e4) {
                    e = e4;
                    i = 1;
                }
                try {
                    mediaFormat.setInteger("file-fd", ((Integer) Class.forName("com.autochips.timedtext.TimedTextUtils", true, new DexClassLoader("/system/framework/autochips-timedtext.jar", ActivityThread.currentApplication().getDir("dex", 0).getAbsolutePath(), null, ClassLoader.getSystemClassLoader())).getDeclaredMethod("getIntFromFileDescriptor", FileDescriptor.class).invoke(null, dup)).intValue());
                    mediaFormat.setLong("file-offset", j);
                    mediaFormat.setLong("file-length", j2);
                } catch (Exception e5) {
                    e = e5;
                    Log.e(TAG, "[" + this + "] Can't found com.autochips.timedtext.TimedTextUtils, Exception:" + e);
                    final SubtitleTrack addTrack = this.mSubtitleController.addTrack(mediaFormat);
                    synchronized (this.mIndexTrackPairs) {
                    }
                }
            }
            final SubtitleTrack addTrack2 = this.mSubtitleController.addTrack(mediaFormat);
            synchronized (this.mIndexTrackPairs) {
                this.mIndexTrackPairs.add(Pair.create(null, addTrack2));
            }
            final Vector vector = new Vector();
            if (ATC_AOSP_ENHANCEMENT) {
                MediaFormat format = addTrack2.getFormat();
                int integer = format.containsKey("track-count") ? format.getInteger("track-count") : i;
                if (DEBUG) {
                    Log.d(TAG, "[" + this + "] addTimedTextSource, format:" + format.toString());
                }
                while (i < integer) {
                    mediaFormat.setInteger("track-index", i);
                    Log.i(TAG, "[" + this + "] create multiple track, format:" + mediaFormat.toString());
                    SubtitleTrack addTrack3 = this.mSubtitleController.addTrack(mediaFormat);
                    synchronized (this.mIndexTrackPairs) {
                        this.mIndexTrackPairs.add(Pair.create(null, addTrack3));
                    }
                    vector.add(addTrack3);
                    i++;
                }
            }
            getMediaTimeProvider();
            final HandlerThread handlerThread = new HandlerThread("TimedTextReadThread", 9);
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer.5
                private int addTrack() {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        try {
                            Os.lseek(dup, j, OsConstants.SEEK_SET);
                            byte[] bArr = new byte[4096];
                            long j3 = 0;
                            while (j3 < j2) {
                                int read = IoBridge.read(dup, bArr, 0, (int) Math.min(bArr.length, j2 - j3));
                                if (read < 0) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                                j3 += read;
                            }
                            Handler handler = MediaPlayer.this.mTimeProvider.mEventHandler;
                            int i3 = MediaPlayer.ATC_AOSP_ENHANCEMENT ? 4 : 1;
                            handler.sendMessage(handler.obtainMessage(i3, 4, 0, Pair.create(addTrack2, byteArrayOutputStream.toByteArray())));
                            if (MediaPlayer.ATC_AOSP_ENHANCEMENT && vector.size() > 0) {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                for (int i4 = 0; i4 < vector.size(); i4++) {
                                    handler.sendMessage(handler.obtainMessage(i3, 4, 0, Pair.create((SubtitleTrack) vector.get(i4), byteArray)));
                                }
                                vector.removeAllElements();
                            }
                            try {
                                Os.close(dup);
                            } catch (ErrnoException e6) {
                                Log.e(MediaPlayer.TAG, "[" + this + "] " + e6.getMessage(), e6);
                            }
                            return 803;
                        } catch (Exception e7) {
                            Log.e(MediaPlayer.TAG, "[" + this + "] " + e7.getMessage(), e7);
                            try {
                                Os.close(dup);
                            } catch (ErrnoException e8) {
                                Log.e(MediaPlayer.TAG, "[" + this + "] " + e8.getMessage(), e8);
                            }
                            return 900;
                        }
                    } catch (Throwable th) {
                        try {
                            Os.close(dup);
                        } catch (ErrnoException e9) {
                            Log.e(MediaPlayer.TAG, "[" + this + "] " + e9.getMessage(), e9);
                        }
                        throw th;
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    int addTrack4 = addTrack();
                    if (MediaPlayer.this.mEventHandler != null) {
                        MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, addTrack4, 0, null));
                    }
                    handlerThread.getLooper().quitSafely();
                }
            });
        } catch (ErrnoException e6) {
            Log.e(TAG, "[" + this + "] " + e6.getMessage(), e6);
            throw new RuntimeException(e6);
        }
    }

    public int getSelectedTrack(int i) throws IllegalStateException {
        SubtitleTrack selectedTrack;
        Log.i(TAG, "[" + this + "] getSelectedTrack, trackType:" + i);
        if (this.mSubtitleController != null && ((i == 4 || i == 3) && (selectedTrack = this.mSubtitleController.getSelectedTrack()) != null)) {
            synchronized (this.mIndexTrackPairs) {
                for (int i2 = 0; i2 < this.mIndexTrackPairs.size(); i2++) {
                    if (this.mIndexTrackPairs.get(i2).second == selectedTrack && selectedTrack.getTrackType() == i) {
                        Log.i(TAG, "[" + this + "] getSelectedTrack, trackType:" + i + ", ret:" + i2);
                        return i2;
                    }
                }
            }
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IMEDIA_PLAYER);
            obtain.writeInt(7);
            obtain.writeInt(i);
            invoke(obtain, obtain2);
            int readInt = obtain2.readInt();
            synchronized (this.mIndexTrackPairs) {
                for (int i3 = 0; i3 < this.mIndexTrackPairs.size(); i3++) {
                    Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i3);
                    if (pair.first != null && ((Integer) pair.first).intValue() == readInt) {
                        Log.i(TAG, "[" + this + "] getSelectedTrack, trackType:" + i + ", ret:" + i3);
                        return i3;
                    }
                }
                Log.i(TAG, "[" + this + "] getSelectedTrack, trackType:" + i + ", ret: -1");
                return -1;
            }
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    public void selectTrack(int i) throws IllegalStateException {
        Log.i(TAG, "[" + this + "] selectTrack, index:" + i);
        selectOrDeselectTrack(i, true);
    }

    public void deselectTrack(int i) throws IllegalStateException {
        selectOrDeselectTrack(i, false);
    }

    private void selectOrDeselectTrack(int i, boolean z) throws IllegalStateException {
        populateInbandTracks();
        try {
            Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i);
            SubtitleTrack subtitleTrack = (SubtitleTrack) pair.second;
            if (subtitleTrack == null) {
                selectOrDeselectInbandTrack(((Integer) pair.first).intValue(), z);
                return;
            }
            if (this.mSubtitleController == null) {
                return;
            }
            if (!z) {
                if (this.mSubtitleController.getSelectedTrack() == subtitleTrack) {
                    this.mSubtitleController.selectTrack(null);
                    return;
                }
                Log.w(TAG, "[" + this + "] trying to deselect track that was not selected");
                return;
            }
            if (subtitleTrack.getTrackType() == 3) {
                int selectedTrack = getSelectedTrack(3);
                synchronized (this.mIndexTrackPairs) {
                    if (selectedTrack >= 0) {
                        try {
                            if (selectedTrack < this.mIndexTrackPairs.size()) {
                                Pair<Integer, SubtitleTrack> pair2 = this.mIndexTrackPairs.get(selectedTrack);
                                if (pair2.first != null && pair2.second == null) {
                                    selectOrDeselectInbandTrack(((Integer) pair2.first).intValue(), false);
                                }
                            }
                        } finally {
                        }
                    }
                }
            }
            this.mSubtitleController.selectTrack(subtitleTrack);
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
    }

    private void selectOrDeselectInbandTrack(int i, boolean z) throws IllegalStateException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IMEDIA_PLAYER);
            obtain.writeInt(z ? 4 : 5);
            obtain.writeInt(i);
            invoke(obtain, obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    public void setRetransmitEndpoint(InetSocketAddress inetSocketAddress) throws IllegalStateException, IllegalArgumentException {
        String str;
        int i;
        if (inetSocketAddress != null) {
            str = inetSocketAddress.getAddress().getHostAddress();
            i = inetSocketAddress.getPort();
        } else {
            str = null;
            i = 0;
        }
        int native_setRetransmitEndpoint = native_setRetransmitEndpoint(str, i);
        if (native_setRetransmitEndpoint == 0) {
            return;
        }
        throw new IllegalArgumentException("Illegal re-transmit endpoint; native ret " + native_setRetransmitEndpoint);
    }

    protected void finalize() {
        Log.i(TAG, "[" + this + "] MediaPlayer finalize");
        baseRelease();
        native_finalize();
        Log.i(TAG, "[" + this + "] MediaPlayer finalized");
    }

    public MediaTimeProvider getMediaTimeProvider() {
        if (this.mTimeProvider == null) {
            this.mTimeProvider = new TimeProvider(this);
        }
        return this.mTimeProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class EventHandler extends Handler {
        private MediaPlayer mMediaPlayer;

        public EventHandler(MediaPlayer mediaPlayer, Looper looper) {
            super(looper);
            this.mMediaPlayer = mediaPlayer;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnDrmInfoHandlerDelegate onDrmInfoHandlerDelegate;
            final OnMediaTimeDiscontinuityListener onMediaTimeDiscontinuityListener;
            Handler handler;
            final MediaTimestamp mediaTimestamp;
            if (this.mMediaPlayer.mNativeContext != 0) {
                if (!MediaPlayer.ATC_AOSP_ENHANCEMENT && (MediaPlayer.DEBUG || message.what != 211 || message.what != 99)) {
                    Log.d(MediaPlayer.TAG, "[" + this + "] mediaplayer[" + this.mMediaPlayer + "] handleMessage msg:(" + message.what + ", " + message.arg1 + ", " + message.arg2 + "), parcel:" + message.obj);
                }
                int i = message.what;
                if (i != 10000) {
                    DrmInfo drmInfo = null;
                    switch (i) {
                        case 0:
                            return;
                        case 1:
                            try {
                                MediaPlayer.this.scanInternalSubtitleTracks();
                            } catch (RuntimeException unused) {
                                sendMessage(obtainMessage(100, 1, -1010, null));
                            }
                            OnPreparedListener onPreparedListener = MediaPlayer.this.mOnPreparedListener;
                            if (onPreparedListener != null) {
                                onPreparedListener.onPrepared(this.mMediaPlayer);
                                return;
                            }
                            return;
                        case 2:
                            MediaPlayer.this.mOnCompletionInternalListener.onCompletion(this.mMediaPlayer);
                            OnCompletionListener onCompletionListener = MediaPlayer.this.mOnCompletionListener;
                            if (onCompletionListener != null) {
                                onCompletionListener.onCompletion(this.mMediaPlayer);
                            }
                            MediaPlayer.this.stayAwake(false);
                            return;
                        case 3:
                            OnBufferingUpdateListener onBufferingUpdateListener = MediaPlayer.this.mOnBufferingUpdateListener;
                            if (onBufferingUpdateListener != null) {
                                onBufferingUpdateListener.onBufferingUpdate(this.mMediaPlayer, message.arg1);
                                return;
                            }
                            return;
                        case 4:
                            OnSeekCompleteListener onSeekCompleteListener = MediaPlayer.this.mOnSeekCompleteListener;
                            if (onSeekCompleteListener != null) {
                                onSeekCompleteListener.onSeekComplete(this.mMediaPlayer);
                                break;
                            }
                            break;
                        case 5:
                            OnVideoSizeChangedListener onVideoSizeChangedListener = MediaPlayer.this.mOnVideoSizeChangedListener;
                            if (onVideoSizeChangedListener != null) {
                                onVideoSizeChangedListener.onVideoSizeChanged(this.mMediaPlayer, message.arg1, message.arg2);
                                return;
                            }
                            return;
                        case 6:
                        case 7:
                            TimeProvider timeProvider = MediaPlayer.this.mTimeProvider;
                            if (timeProvider != null) {
                                timeProvider.onPaused(message.what == 7);
                                return;
                            }
                            return;
                        case 8:
                            TimeProvider timeProvider2 = MediaPlayer.this.mTimeProvider;
                            if (timeProvider2 != null) {
                                timeProvider2.onStopped();
                                return;
                            }
                            return;
                        case 9:
                            break;
                        default:
                            switch (i) {
                                case 98:
                                    TimeProvider timeProvider3 = MediaPlayer.this.mTimeProvider;
                                    if (timeProvider3 != null) {
                                        timeProvider3.onNotifyTime();
                                        return;
                                    }
                                    return;
                                case 99:
                                    OnTimedTextListener onTimedTextListener = MediaPlayer.this.mOnTimedTextListener;
                                    if (onTimedTextListener == null) {
                                        return;
                                    }
                                    if (message.obj == null) {
                                        onTimedTextListener.onTimedText(this.mMediaPlayer, null);
                                        return;
                                    } else {
                                        if (message.obj instanceof Parcel) {
                                            Parcel parcel = (Parcel) message.obj;
                                            TimedText timedText = new TimedText(parcel);
                                            parcel.recycle();
                                            onTimedTextListener.onTimedText(this.mMediaPlayer, timedText);
                                            return;
                                        }
                                        return;
                                    }
                                case 100:
                                    Log.e(MediaPlayer.TAG, "[" + this + "] Error (" + message.arg1 + "," + message.arg2 + ")");
                                    OnErrorListener onErrorListener = MediaPlayer.this.mOnErrorListener;
                                    boolean onError = onErrorListener != null ? onErrorListener.onError(this.mMediaPlayer, message.arg1, message.arg2) : false;
                                    MediaPlayer.this.mOnCompletionInternalListener.onCompletion(this.mMediaPlayer);
                                    OnCompletionListener onCompletionListener2 = MediaPlayer.this.mOnCompletionListener;
                                    if (onCompletionListener2 != null && !onError) {
                                        onCompletionListener2.onCompletion(this.mMediaPlayer);
                                    }
                                    MediaPlayer.this.stayAwake(false);
                                    return;
                                default:
                                    switch (i) {
                                        case 200:
                                            int i2 = message.arg1;
                                            switch (i2) {
                                                case 700:
                                                    Log.i(MediaPlayer.TAG, "[" + this + "] Info (" + message.arg1 + "," + message.arg2 + ")");
                                                    break;
                                                case 701:
                                                case 702:
                                                    TimeProvider timeProvider4 = MediaPlayer.this.mTimeProvider;
                                                    if (timeProvider4 != null) {
                                                        timeProvider4.onBuffering(message.arg1 == 701);
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 802:
                                                            try {
                                                                MediaPlayer.this.scanInternalSubtitleTracks();
                                                            } catch (RuntimeException unused2) {
                                                                sendMessage(obtainMessage(100, 1, -1010, null));
                                                            }
                                                        case 803:
                                                            message.arg1 = 802;
                                                            if (MediaPlayer.this.mSubtitleController != null) {
                                                                MediaPlayer.this.mSubtitleController.selectDefaultTrack();
                                                                break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            OnInfoListener onInfoListener = MediaPlayer.this.mOnInfoListener;
                                            if (onInfoListener != null) {
                                                onInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
                                                return;
                                            }
                                            return;
                                        case 201:
                                            synchronized (this) {
                                                if (MediaPlayer.this.mSubtitleDataListenerDisabled) {
                                                    return;
                                                }
                                                final OnSubtitleDataListener onSubtitleDataListener = MediaPlayer.this.mExtSubtitleDataListener;
                                                Handler handler2 = MediaPlayer.this.mExtSubtitleDataHandler;
                                                if (message.obj instanceof Parcel) {
                                                    Parcel parcel2 = (Parcel) message.obj;
                                                    final SubtitleData subtitleData = new SubtitleData(parcel2);
                                                    parcel2.recycle();
                                                    MediaPlayer.this.mIntSubtitleDataListener.onSubtitleData(this.mMediaPlayer, subtitleData);
                                                    if (onSubtitleDataListener != null) {
                                                        if (handler2 == null) {
                                                            onSubtitleDataListener.onSubtitleData(this.mMediaPlayer, subtitleData);
                                                            return;
                                                        } else {
                                                            handler2.post(new Runnable() { // from class: android.media.MediaPlayer.EventHandler.1
                                                                @Override // java.lang.Runnable
                                                                public void run() {
                                                                    onSubtitleDataListener.onSubtitleData(EventHandler.this.mMediaPlayer, subtitleData);
                                                                }
                                                            });
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                        case 202:
                                            OnTimedMetaDataAvailableListener onTimedMetaDataAvailableListener = MediaPlayer.this.mOnTimedMetaDataAvailableListener;
                                            if (onTimedMetaDataAvailableListener != null && (message.obj instanceof Parcel)) {
                                                Parcel parcel3 = (Parcel) message.obj;
                                                TimedMetaData createTimedMetaDataFromParcel = TimedMetaData.createTimedMetaDataFromParcel(parcel3);
                                                parcel3.recycle();
                                                onTimedMetaDataAvailableListener.onTimedMetaDataAvailable(this.mMediaPlayer, createTimedMetaDataFromParcel);
                                                return;
                                            }
                                            return;
                                        default:
                                            switch (i) {
                                                case 210:
                                                    Log.v(MediaPlayer.TAG, "[" + this + "] MEDIA_DRM_INFO " + MediaPlayer.this.mOnDrmInfoHandlerDelegate);
                                                    if (message.obj == null) {
                                                        Log.w(MediaPlayer.TAG, "[" + this + "] MEDIA_DRM_INFO msg.obj=NULL");
                                                        return;
                                                    }
                                                    if (message.obj instanceof Parcel) {
                                                        synchronized (MediaPlayer.this.mDrmLock) {
                                                            if (MediaPlayer.this.mOnDrmInfoHandlerDelegate != null && MediaPlayer.this.mDrmInfo != null) {
                                                                drmInfo = MediaPlayer.this.mDrmInfo.makeCopy();
                                                            }
                                                            onDrmInfoHandlerDelegate = MediaPlayer.this.mOnDrmInfoHandlerDelegate;
                                                        }
                                                        if (onDrmInfoHandlerDelegate != null) {
                                                            onDrmInfoHandlerDelegate.notifyClient(drmInfo);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    Log.w(MediaPlayer.TAG, "[" + this + "] MEDIA_DRM_INFO msg.obj of unexpected type " + message.obj);
                                                    return;
                                                case 211:
                                                    synchronized (this) {
                                                        onMediaTimeDiscontinuityListener = MediaPlayer.this.mOnMediaTimeDiscontinuityListener;
                                                        handler = MediaPlayer.this.mOnMediaTimeDiscontinuityHandler;
                                                    }
                                                    if (onMediaTimeDiscontinuityListener != null && (message.obj instanceof Parcel)) {
                                                        Parcel parcel4 = (Parcel) message.obj;
                                                        parcel4.setDataPosition(0);
                                                        long readLong = parcel4.readLong();
                                                        long readLong2 = parcel4.readLong();
                                                        float readFloat = parcel4.readFloat();
                                                        parcel4.recycle();
                                                        if (readLong != -1 && readLong2 != -1) {
                                                            mediaTimestamp = new MediaTimestamp(readLong, readLong2 * 1000, readFloat);
                                                        } else {
                                                            mediaTimestamp = MediaTimestamp.TIMESTAMP_UNKNOWN;
                                                        }
                                                        if (handler == null) {
                                                            onMediaTimeDiscontinuityListener.onMediaTimeDiscontinuity(this.mMediaPlayer, mediaTimestamp);
                                                            return;
                                                        } else {
                                                            handler.post(new Runnable() { // from class: android.media.MediaPlayer.EventHandler.2
                                                                @Override // java.lang.Runnable
                                                                public void run() {
                                                                    onMediaTimeDiscontinuityListener.onMediaTimeDiscontinuity(EventHandler.this.mMediaPlayer, mediaTimestamp);
                                                                }
                                                            });
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                default:
                                                    Log.e(MediaPlayer.TAG, "[" + this + "] Unknown message type " + message.what);
                                                    return;
                                            }
                                    }
                            }
                    }
                    TimeProvider timeProvider5 = MediaPlayer.this.mTimeProvider;
                    if (timeProvider5 != null) {
                        timeProvider5.onSeekComplete(this.mMediaPlayer);
                        return;
                    }
                    return;
                }
                AudioManager.resetAudioPortGeneration();
                synchronized (MediaPlayer.this.mRoutingChangeListeners) {
                    Iterator it = MediaPlayer.this.mRoutingChangeListeners.values().iterator();
                    while (it.hasNext()) {
                        ((NativeRoutingEventHandlerDelegate) it.next()).notifyClient();
                    }
                }
                return;
            }
            Log.w(MediaPlayer.TAG, "[" + this + "] mediaplayer[" + this.mMediaPlayer + " went away with unhandled events:" + message.what);
        }
    }

    private static void postEventFromNative(Object obj, int i, int i2, int i3, Object obj2) {
        MediaPlayer mediaPlayer = (MediaPlayer) ((WeakReference) obj).get();
        if (mediaPlayer == null) {
            Log.e(TAG, "postEventFromNative: Null mp! what=" + i + ", arg1=" + i2 + ", arg2=" + i3);
            return;
        }
        if (i == 1) {
            synchronized (mediaPlayer.mDrmLock) {
                mediaPlayer.mDrmInfoResolved = true;
            }
        } else if (i != 200) {
            if (i == 210) {
                Log.v(TAG, "postEventFromNative MEDIA_DRM_INFO");
                if (obj2 instanceof Parcel) {
                    DrmInfo drmInfo = new DrmInfo((Parcel) obj2);
                    synchronized (mediaPlayer.mDrmLock) {
                        mediaPlayer.mDrmInfo = drmInfo;
                    }
                } else {
                    Log.w(TAG, "MEDIA_DRM_INFO msg.obj of unexpected type " + obj2);
                }
            }
        } else if (i2 == 2) {
            new Thread(new Runnable() { // from class: android.media.MediaPlayer.6
                @Override // java.lang.Runnable
                public void run() {
                    MediaPlayer.this.start();
                }
            }).start();
            Thread.yield();
        }
        if (mediaPlayer.mEventHandler != null) {
            mediaPlayer.mEventHandler.sendMessage(mediaPlayer.mEventHandler.obtainMessage(i, i2, i3, obj2));
        }
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setOnTimedTextListener(OnTimedTextListener onTimedTextListener) {
        this.mOnTimedTextListener = onTimedTextListener;
    }

    public void setOnSubtitleDataListener(OnSubtitleDataListener onSubtitleDataListener, Handler handler) {
        if (onSubtitleDataListener == null) {
            throw new IllegalArgumentException("Illegal null listener");
        }
        if (handler == null) {
            throw new IllegalArgumentException("Illegal null handler");
        }
        setOnSubtitleDataListenerInt(onSubtitleDataListener, handler);
    }

    public void setOnSubtitleDataListener(OnSubtitleDataListener onSubtitleDataListener) {
        if (onSubtitleDataListener == null) {
            throw new IllegalArgumentException("Illegal null listener");
        }
        setOnSubtitleDataListenerInt(onSubtitleDataListener, null);
    }

    public void clearOnSubtitleDataListener() {
        setOnSubtitleDataListenerInt(null, null);
    }

    private void setOnSubtitleDataListenerInt(OnSubtitleDataListener onSubtitleDataListener, Handler handler) {
        synchronized (this) {
            this.mExtSubtitleDataListener = onSubtitleDataListener;
            this.mExtSubtitleDataHandler = handler;
        }
    }

    public void setOnMediaTimeDiscontinuityListener(OnMediaTimeDiscontinuityListener onMediaTimeDiscontinuityListener, Handler handler) {
        if (onMediaTimeDiscontinuityListener == null) {
            throw new IllegalArgumentException("Illegal null listener");
        }
        if (handler == null) {
            throw new IllegalArgumentException("Illegal null handler");
        }
        setOnMediaTimeDiscontinuityListenerInt(onMediaTimeDiscontinuityListener, handler);
    }

    public void setOnMediaTimeDiscontinuityListener(OnMediaTimeDiscontinuityListener onMediaTimeDiscontinuityListener) {
        if (onMediaTimeDiscontinuityListener == null) {
            throw new IllegalArgumentException("Illegal null listener");
        }
        setOnMediaTimeDiscontinuityListenerInt(onMediaTimeDiscontinuityListener, null);
    }

    public void clearOnMediaTimeDiscontinuityListener() {
        setOnMediaTimeDiscontinuityListenerInt(null, null);
    }

    private void setOnMediaTimeDiscontinuityListenerInt(OnMediaTimeDiscontinuityListener onMediaTimeDiscontinuityListener, Handler handler) {
        synchronized (this) {
            this.mOnMediaTimeDiscontinuityListener = onMediaTimeDiscontinuityListener;
            this.mOnMediaTimeDiscontinuityHandler = handler;
        }
    }

    public void setOnTimedMetaDataAvailableListener(OnTimedMetaDataAvailableListener onTimedMetaDataAvailableListener) {
        this.mOnTimedMetaDataAvailableListener = onTimedMetaDataAvailableListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnDrmConfigHelper(OnDrmConfigHelper onDrmConfigHelper) {
        synchronized (this.mDrmLock) {
            this.mOnDrmConfigHelper = onDrmConfigHelper;
        }
    }

    public void setOnDrmInfoListener(OnDrmInfoListener onDrmInfoListener) {
        setOnDrmInfoListener(onDrmInfoListener, null);
    }

    public void setOnDrmInfoListener(OnDrmInfoListener onDrmInfoListener, Handler handler) {
        synchronized (this.mDrmLock) {
            try {
                if (onDrmInfoListener != null) {
                    this.mOnDrmInfoHandlerDelegate = new OnDrmInfoHandlerDelegate(this, onDrmInfoListener, handler);
                } else {
                    this.mOnDrmInfoHandlerDelegate = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener onDrmPreparedListener) {
        setOnDrmPreparedListener(onDrmPreparedListener, null);
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener onDrmPreparedListener, Handler handler) {
        synchronized (this.mDrmLock) {
            try {
                if (onDrmPreparedListener != null) {
                    this.mOnDrmPreparedHandlerDelegate = new OnDrmPreparedHandlerDelegate(this, onDrmPreparedListener, handler);
                } else {
                    this.mOnDrmPreparedHandlerDelegate = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class OnDrmInfoHandlerDelegate {
        private Handler mHandler;
        private MediaPlayer mMediaPlayer;
        private OnDrmInfoListener mOnDrmInfoListener;

        OnDrmInfoHandlerDelegate(MediaPlayer mediaPlayer, OnDrmInfoListener onDrmInfoListener, Handler handler) {
            this.mMediaPlayer = mediaPlayer;
            this.mOnDrmInfoListener = onDrmInfoListener;
            if (handler != null) {
                this.mHandler = handler;
            }
        }

        void notifyClient(final DrmInfo drmInfo) {
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: android.media.MediaPlayer.OnDrmInfoHandlerDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnDrmInfoHandlerDelegate.this.mOnDrmInfoListener.onDrmInfo(OnDrmInfoHandlerDelegate.this.mMediaPlayer, drmInfo);
                    }
                });
            } else {
                this.mOnDrmInfoListener.onDrmInfo(this.mMediaPlayer, drmInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class OnDrmPreparedHandlerDelegate {
        private Handler mHandler;
        private MediaPlayer mMediaPlayer;
        private OnDrmPreparedListener mOnDrmPreparedListener;

        OnDrmPreparedHandlerDelegate(MediaPlayer mediaPlayer, OnDrmPreparedListener onDrmPreparedListener, Handler handler) {
            this.mMediaPlayer = mediaPlayer;
            this.mOnDrmPreparedListener = onDrmPreparedListener;
            if (handler == null) {
                if (MediaPlayer.this.mEventHandler != null) {
                    this.mHandler = MediaPlayer.this.mEventHandler;
                    return;
                }
                Log.e(MediaPlayer.TAG, "[" + this + "] OnDrmPreparedHandlerDelegate: Unexpected null mEventHandler");
                return;
            }
            this.mHandler = handler;
        }

        void notifyClient(final int i) {
            if (this.mHandler != null) {
                this.mHandler.post(new Runnable() { // from class: android.media.MediaPlayer.OnDrmPreparedHandlerDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnDrmPreparedHandlerDelegate.this.mOnDrmPreparedListener.onDrmPrepared(OnDrmPreparedHandlerDelegate.this.mMediaPlayer, i);
                    }
                });
                return;
            }
            Log.e(MediaPlayer.TAG, "[" + this + "] OnDrmPreparedHandlerDelegate:notifyClient: Unexpected null mHandler");
        }
    }

    public DrmInfo getDrmInfo() {
        DrmInfo makeCopy;
        synchronized (this.mDrmLock) {
            if (!this.mDrmInfoResolved && this.mDrmInfo == null) {
                Log.v(TAG, "[" + this + "] The Player has not been prepared yet");
                throw new IllegalStateException("The Player has not been prepared yet");
            }
            makeCopy = this.mDrmInfo != null ? this.mDrmInfo.makeCopy() : null;
        }
        return makeCopy;
    }

    public void prepareDrm(UUID uuid) throws UnsupportedSchemeException, ResourceBusyException, ProvisioningNetworkErrorException, ProvisioningServerErrorException {
        boolean z;
        OnDrmPreparedHandlerDelegate onDrmPreparedHandlerDelegate;
        Log.v(TAG, "[" + this + "] prepareDrm: uuid: " + uuid + " mOnDrmConfigHelper: " + this.mOnDrmConfigHelper);
        synchronized (this.mDrmLock) {
            if (this.mDrmInfo == null) {
                Log.e(TAG, "[" + this + "] prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
            }
            if (this.mActiveDrmScheme) {
                String str = "prepareDrm(): Wrong usage: There is already an active DRM scheme with " + this.mDrmUUID;
                Log.e(TAG, "[" + this + "] " + str);
                throw new IllegalStateException(str);
            }
            if (this.mPrepareDrmInProgress) {
                Log.e(TAG, "[" + this + "] prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
            }
            if (this.mDrmProvisioningInProgress) {
                Log.e(TAG, "[" + this + "] prepareDrm(): Unexpectd: Provisioning is already in progress.");
                throw new IllegalStateException("prepareDrm(): Unexpectd: Provisioning is already in progress.");
            }
            cleanDrmObj();
            z = true;
            this.mPrepareDrmInProgress = true;
            onDrmPreparedHandlerDelegate = this.mOnDrmPreparedHandlerDelegate;
            try {
                prepareDrm_createDrmStep(uuid);
                this.mDrmConfigAllowed = true;
            } catch (Exception e) {
                Log.w(TAG, "[" + this + "] prepareDrm(): Exception ", e);
                this.mPrepareDrmInProgress = false;
                throw e;
            }
        }
        if (this.mOnDrmConfigHelper != null) {
            this.mOnDrmConfigHelper.onDrmConfig(this);
        }
        synchronized (this.mDrmLock) {
            try {
                this.mDrmConfigAllowed = false;
                try {
                    try {
                        try {
                            prepareDrm_openSessionStep(uuid);
                            this.mDrmUUID = uuid;
                            this.mActiveDrmScheme = true;
                            if (!this.mDrmProvisioningInProgress) {
                                this.mPrepareDrmInProgress = false;
                            }
                        } catch (IllegalStateException unused) {
                            Log.e(TAG, "[" + this + "] prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                            throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                        }
                    } catch (NotProvisionedException unused2) {
                        Log.w(TAG, "[" + this + "] prepareDrm: NotProvisionedException");
                        int HandleProvisioninig = HandleProvisioninig(uuid);
                        if (HandleProvisioninig != 0) {
                            switch (HandleProvisioninig) {
                                case 1:
                                    Log.e(TAG, "[" + this + "] prepareDrm: Provisioning was required but failed due to a network error.");
                                    throw new ProvisioningNetworkErrorException("prepareDrm: Provisioning was required but failed due to a network error.");
                                case 2:
                                    Log.e(TAG, "[" + this + "] prepareDrm: Provisioning was required but the request was denied by the server.");
                                    throw new ProvisioningServerErrorException("prepareDrm: Provisioning was required but the request was denied by the server.");
                                default:
                                    Log.e(TAG, "[" + this + "] prepareDrm: Post-provisioning preparation failed.");
                                    throw new IllegalStateException("prepareDrm: Post-provisioning preparation failed.");
                            }
                        }
                        if (!this.mDrmProvisioningInProgress) {
                            this.mPrepareDrmInProgress = false;
                        }
                        z = false;
                    } catch (Exception e2) {
                        Log.e(TAG, "[" + this + "] prepareDrm: Exception " + e2);
                        throw e2;
                    }
                } catch (Throwable th) {
                    th = th;
                    z = false;
                    if (!this.mDrmProvisioningInProgress) {
                        this.mPrepareDrmInProgress = false;
                    }
                    if (z) {
                        cleanDrmObj();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (!z || onDrmPreparedHandlerDelegate == null) {
            return;
        }
        onDrmPreparedHandlerDelegate.notifyClient(0);
    }

    public void releaseDrm() throws NoDrmSchemeException {
        Log.v(TAG, "[" + this + "] releaseDrm:");
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "[" + this + "] releaseDrm(): No active DRM scheme to release.");
                throw new NoDrmSchemeException("releaseDrm: No active DRM scheme to release.");
            }
            try {
                try {
                    _releaseDrm();
                    cleanDrmObj();
                    this.mActiveDrmScheme = false;
                } catch (Exception e) {
                    Log.e(TAG, "[" + this + "] releaseDrm: Exception ", e);
                }
            } catch (IllegalStateException e2) {
                Log.w(TAG, "[" + this + "] releaseDrm: Exception ", e2);
                throw new IllegalStateException("releaseDrm: The player is not in a valid state.");
            }
        }
    }

    public MediaDrm.KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i, Map<String, String> map) throws NoDrmSchemeException {
        MediaDrm.KeyRequest keyRequest;
        Log.v(TAG, "[" + this + "] getKeyRequest:  keySetId: " + bArr + " initData:" + bArr2 + " mimeType: " + str + " keyType: " + i + " optionalParameters: " + map);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "[" + this + "] getKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeException("getKeyRequest: Has to set a DRM scheme first.");
            }
            if (i != 3) {
                try {
                    bArr = this.mDrmSessionId;
                } catch (NotProvisionedException unused) {
                    Log.w(TAG, "[" + this + "] getKeyRequest NotProvisionedException: Unexpected. Shouldn't have reached here.");
                    throw new IllegalStateException("getKeyRequest: Unexpected provisioning error.");
                } catch (Exception e) {
                    Log.w(TAG, "[" + this + "] getKeyRequest Exception " + e);
                    throw e;
                }
            }
            keyRequest = this.mDrmObj.getKeyRequest(bArr, bArr2, str, i, map != null ? new HashMap<>(map) : null);
            Log.v(TAG, "[" + this + "] getKeyRequest:   --> request: " + keyRequest);
        }
        return keyRequest;
    }

    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NoDrmSchemeException, DeniedByServerException {
        byte[] bArr3;
        byte[] provideKeyResponse;
        Log.v(TAG, "[" + this + "] provideKeyResponse: keySetId: " + bArr + " response: " + bArr2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "[" + this + "] getKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeException("getKeyRequest: Has to set a DRM scheme first.");
            }
            if (bArr == null) {
                try {
                    try {
                        bArr3 = this.mDrmSessionId;
                    } catch (NotProvisionedException unused) {
                        Log.w(TAG, "[" + this + "] provideKeyResponse NotProvisionedException: Unexpected. Shouldn't have reached here.");
                        throw new IllegalStateException("provideKeyResponse: Unexpected provisioning error.");
                    }
                } catch (Exception e) {
                    Log.w(TAG, "[" + this + "] provideKeyResponse Exception " + e);
                    throw e;
                }
            } else {
                bArr3 = bArr;
            }
            provideKeyResponse = this.mDrmObj.provideKeyResponse(bArr3, bArr2);
            Log.v(TAG, "[" + this + "] provideKeyResponse: keySetId: " + bArr + " response: " + bArr2 + " --> " + provideKeyResponse);
        }
        return provideKeyResponse;
    }

    public void restoreKeys(byte[] bArr) throws NoDrmSchemeException {
        Log.v(TAG, "[" + this + "] restoreKeys: keySetId: " + bArr);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.w(TAG, "[" + this + "] restoreKeys NoDrmSchemeException");
                throw new NoDrmSchemeException("restoreKeys: Has to set a DRM scheme first.");
            }
            try {
                this.mDrmObj.restoreKeys(this.mDrmSessionId, bArr);
            } catch (Exception e) {
                Log.w(TAG, "[" + this + "] restoreKeys Exception " + e);
                throw e;
            }
        }
    }

    public String getDrmPropertyString(String str) throws NoDrmSchemeException {
        String propertyString;
        Log.v(TAG, "[" + this + "] getDrmPropertyString: propertyName: " + str);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "[" + this + "] getDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeException("getDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                propertyString = this.mDrmObj.getPropertyString(str);
            } catch (Exception e) {
                Log.w(TAG, "[" + this + "] getDrmPropertyString Exception " + e);
                throw e;
            }
        }
        Log.v(TAG, "[" + this + "] getDrmPropertyString: propertyName: " + str + " --> value: " + propertyString);
        return propertyString;
    }

    public void setDrmPropertyString(String str, String str2) throws NoDrmSchemeException {
        Log.v(TAG, "[" + this + "] setDrmPropertyString: propertyName: " + str + " value: " + str2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "[" + this + "] setDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeException("setDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                this.mDrmObj.setPropertyString(str, str2);
            } catch (Exception e) {
                Log.w(TAG, "[" + this + "] setDrmPropertyString Exception " + e);
                throw e;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class DrmInfo {
        private Map<UUID, byte[]> mapPssh;
        private UUID[] supportedSchemes;

        public Map<UUID, byte[]> getPssh() {
            return this.mapPssh;
        }

        public UUID[] getSupportedSchemes() {
            return this.supportedSchemes;
        }

        private DrmInfo(Map<UUID, byte[]> map, UUID[] uuidArr) {
            this.mapPssh = map;
            this.supportedSchemes = uuidArr;
        }

        private DrmInfo(Parcel parcel) {
            Log.v(MediaPlayer.TAG, "[" + this + "] DrmInfo(" + parcel + ") size " + parcel.dataSize());
            int readInt = parcel.readInt();
            byte[] bArr = new byte[readInt];
            parcel.readByteArray(bArr);
            Log.v(MediaPlayer.TAG, "[" + this + "] DrmInfo() PSSH: " + arrToHex(bArr));
            this.mapPssh = parsePSSH(bArr, readInt);
            Log.v(MediaPlayer.TAG, "[" + this + "] DrmInfo() PSSH: " + this.mapPssh);
            int readInt2 = parcel.readInt();
            this.supportedSchemes = new UUID[readInt2];
            for (int i = 0; i < readInt2; i++) {
                byte[] bArr2 = new byte[16];
                parcel.readByteArray(bArr2);
                this.supportedSchemes[i] = bytesToUUID(bArr2);
                Log.v(MediaPlayer.TAG, "[" + this + "] DrmInfo() supportedScheme[" + i + "]: " + this.supportedSchemes[i]);
            }
            Log.v(MediaPlayer.TAG, "[" + this + "] DrmInfo() Parcel psshsize: " + readInt + " supportedDRMsCount: " + readInt2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DrmInfo makeCopy() {
            return new DrmInfo(this.mapPssh, this.supportedSchemes);
        }

        private String arrToHex(byte[] bArr) {
            String str = "0x";
            for (byte b : bArr) {
                str = str + String.format("%02x", Byte.valueOf(b));
            }
            return str;
        }

        private UUID bytesToUUID(byte[] bArr) {
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < 8; i++) {
                int i2 = (7 - i) * 8;
                j |= (bArr[i] & 255) << i2;
                j2 |= (bArr[i + 8] & 255) << i2;
            }
            return new UUID(j, j2);
        }

        private Map<UUID, byte[]> parsePSSH(byte[] bArr, int i) {
            HashMap hashMap = new HashMap();
            int i2 = i;
            int i3 = 0;
            int i4 = 0;
            while (i2 > 0) {
                if (i2 < 16) {
                    Log.w(MediaPlayer.TAG, "[" + this + "] " + String.format("parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d", Integer.valueOf(i2), Integer.valueOf(i)));
                    return null;
                }
                int i5 = i3 + 16;
                UUID bytesToUUID = bytesToUUID(Arrays.copyOfRange(bArr, i3, i5));
                int i6 = i2 - 16;
                if (i6 < 4) {
                    Log.w(MediaPlayer.TAG, "[" + this + "] " + String.format("parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d", Integer.valueOf(i6), Integer.valueOf(i)));
                    return null;
                }
                int i7 = i5 + 4;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, i5, i7);
                int i8 = ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN ? ((copyOfRange[2] & 255) << 16) | ((copyOfRange[3] & 255) << 24) | ((copyOfRange[1] & 255) << 8) | (copyOfRange[0] & 255) : ((copyOfRange[1] & 255) << 16) | ((copyOfRange[0] & 255) << 24) | ((copyOfRange[2] & 255) << 8) | (copyOfRange[3] & 255);
                int i9 = i6 - 4;
                if (i9 < i8) {
                    Log.w(MediaPlayer.TAG, "[" + this + "] " + String.format("parsePSSH: len is too short to parse data: (%d < %d) pssh: %d", Integer.valueOf(i9), Integer.valueOf(i8), Integer.valueOf(i)));
                    return null;
                }
                int i10 = i7 + i8;
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i7, i10);
                i2 = i9 - i8;
                Log.v(MediaPlayer.TAG, "[" + this + "] " + String.format("parsePSSH[%d]: <%s, %s> pssh: %d", Integer.valueOf(i4), bytesToUUID, arrToHex(copyOfRange2), Integer.valueOf(i)));
                i4++;
                hashMap.put(bytesToUUID, copyOfRange2);
                i3 = i10;
            }
            return hashMap;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProvisioningNetworkErrorException extends MediaDrmException {
        public ProvisioningNetworkErrorException(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProvisioningServerErrorException extends MediaDrmException {
        public ProvisioningServerErrorException(String str) {
            super(str);
        }
    }

    private void prepareDrm_createDrmStep(UUID uuid) throws UnsupportedSchemeException {
        Log.v(TAG, "[" + this + "] prepareDrm_createDrmStep: UUID: " + uuid);
        try {
            this.mDrmObj = new MediaDrm(uuid);
            Log.v(TAG, "[" + this + "] prepareDrm_createDrmStep: Created mDrmObj=" + this.mDrmObj);
        } catch (Exception e) {
            Log.e(TAG, "[" + this + "] prepareDrm_createDrmStep: MediaDrm failed with " + e);
            throw e;
        }
    }

    private void prepareDrm_openSessionStep(UUID uuid) throws NotProvisionedException, ResourceBusyException {
        Log.v(TAG, "[" + this + "] prepareDrm_openSessionStep: uuid: " + uuid);
        try {
            this.mDrmSessionId = this.mDrmObj.openSession();
            Log.v(TAG, "[" + this + "] prepareDrm_openSessionStep: mDrmSessionId=" + this.mDrmSessionId);
            _prepareDrm(getByteArrayFromUUID(uuid), this.mDrmSessionId);
            Log.v(TAG, "[" + this + "] prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded");
        } catch (Exception e) {
            Log.e(TAG, "[" + this + "] prepareDrm_openSessionStep: open/crypto failed with " + e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ProvisioningThread extends Thread {
        public static final int TIMEOUT_MS = 60000;
        private Object drmLock;
        private boolean finished;
        private MediaPlayer mediaPlayer;
        private OnDrmPreparedHandlerDelegate onDrmPreparedHandlerDelegate;
        private int status;
        private String urlStr;
        private UUID uuid;

        private ProvisioningThread() {
        }

        public int status() {
            return this.status;
        }

        public ProvisioningThread initialize(MediaDrm.ProvisionRequest provisionRequest, UUID uuid, MediaPlayer mediaPlayer) {
            this.drmLock = mediaPlayer.mDrmLock;
            this.onDrmPreparedHandlerDelegate = mediaPlayer.mOnDrmPreparedHandlerDelegate;
            this.mediaPlayer = mediaPlayer;
            this.urlStr = provisionRequest.getDefaultUrl() + "&signedRequest=" + new String(provisionRequest.getData());
            this.uuid = uuid;
            this.status = 3;
            Log.v(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread is initialised url: " + this.urlStr);
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Exception e;
            byte[] bArr;
            boolean z;
            boolean z2;
            boolean resumePrepareDrm;
            Throwable th;
            Exception e2;
            try {
                try {
                    URL url = new URL(this.urlStr);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    try {
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setDoOutput(false);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setConnectTimeout(60000);
                        httpURLConnection.setReadTimeout(60000);
                        httpURLConnection.connect();
                        bArr = Streams.readFully(httpURLConnection.getInputStream());
                        try {
                            try {
                                Log.v(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: response " + bArr.length + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + bArr);
                            } catch (Exception e3) {
                                e2 = e3;
                                this.status = 1;
                                Log.w(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: connect " + e2 + " url: " + url);
                                httpURLConnection.disconnect();
                                if (bArr != null) {
                                }
                                z = false;
                                if (this.onDrmPreparedHandlerDelegate == null) {
                                }
                                this.finished = true;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } catch (Exception e4) {
                        bArr = null;
                        e2 = e4;
                    } catch (Throwable th3) {
                        th = th3;
                        httpURLConnection.disconnect();
                        throw th;
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e5) {
                    e = e5;
                    bArr = null;
                    this.status = 1;
                    Log.w(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: openConnection " + e);
                    if (bArr != null) {
                    }
                    z = false;
                    if (this.onDrmPreparedHandlerDelegate == null) {
                    }
                    this.finished = true;
                }
            } catch (Exception e6) {
                e = e6;
                this.status = 1;
                Log.w(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: openConnection " + e);
                if (bArr != null) {
                }
                z = false;
                if (this.onDrmPreparedHandlerDelegate == null) {
                }
                this.finished = true;
            }
            if (bArr != null) {
                try {
                    MediaPlayer.this.mDrmObj.provideProvisionResponse(bArr);
                    Log.v(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!");
                    z = true;
                } catch (Exception e7) {
                    this.status = 2;
                    Log.w(MediaPlayer.TAG, "[" + this + "] HandleProvisioninig: Thread run: provideProvisionResponse " + e7);
                }
                if (this.onDrmPreparedHandlerDelegate == null) {
                    if (z) {
                        z2 = this.mediaPlayer.resumePrepareDrm(this.uuid);
                        this.status = z2 ? 0 : 3;
                    } else {
                        z2 = false;
                    }
                    this.mediaPlayer.mDrmProvisioningInProgress = false;
                    this.mediaPlayer.mPrepareDrmInProgress = false;
                    if (!z2) {
                        MediaPlayer.this.cleanDrmObj();
                    }
                } else {
                    synchronized (this.drmLock) {
                        if (z) {
                            try {
                                resumePrepareDrm = this.mediaPlayer.resumePrepareDrm(this.uuid);
                                this.status = resumePrepareDrm ? 0 : 3;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        } else {
                            resumePrepareDrm = false;
                        }
                        this.mediaPlayer.mDrmProvisioningInProgress = false;
                        this.mediaPlayer.mPrepareDrmInProgress = false;
                        if (!resumePrepareDrm) {
                            MediaPlayer.this.cleanDrmObj();
                        }
                    }
                    this.onDrmPreparedHandlerDelegate.notifyClient(this.status);
                }
                this.finished = true;
            }
            z = false;
            if (this.onDrmPreparedHandlerDelegate == null) {
            }
            this.finished = true;
        }
    }

    private int HandleProvisioninig(UUID uuid) {
        if (this.mDrmProvisioningInProgress) {
            Log.e(TAG, "[" + this + "] HandleProvisioninig: Unexpected mDrmProvisioningInProgress");
            return 3;
        }
        MediaDrm.ProvisionRequest provisionRequest = this.mDrmObj.getProvisionRequest();
        if (provisionRequest == null) {
            Log.e(TAG, "[" + this + "] HandleProvisioninig: getProvisionRequest returned null.");
            return 3;
        }
        Log.v(TAG, "[" + this + "] HandleProvisioninig provReq  data: " + provisionRequest.getData() + " url: " + provisionRequest.getDefaultUrl());
        this.mDrmProvisioningInProgress = true;
        this.mDrmProvisioningThread = new ProvisioningThread().initialize(provisionRequest, uuid, this);
        this.mDrmProvisioningThread.start();
        if (this.mOnDrmPreparedHandlerDelegate != null) {
            return 0;
        }
        try {
            this.mDrmProvisioningThread.join();
        } catch (Exception e) {
            Log.w(TAG, "[" + this + "] HandleProvisioninig: Thread.join Exception " + e);
        }
        int status = this.mDrmProvisioningThread.status();
        this.mDrmProvisioningThread = null;
        return status;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resumePrepareDrm(UUID uuid) {
        Log.v(TAG, "[" + this + "] resumePrepareDrm: uuid: " + uuid);
        try {
            prepareDrm_openSessionStep(uuid);
            this.mDrmUUID = uuid;
            this.mActiveDrmScheme = true;
            return true;
        } catch (Exception e) {
            Log.w(TAG, "[" + this + "] HandleProvisioninig: Thread run _prepareDrm resume failed with " + e);
            return false;
        }
    }

    private void resetDrmState() {
        synchronized (this.mDrmLock) {
            Log.v(TAG, "[" + this + "] resetDrmState:  mDrmInfo=" + this.mDrmInfo + " mDrmProvisioningThread=" + this.mDrmProvisioningThread + " mPrepareDrmInProgress=" + this.mPrepareDrmInProgress + " mActiveDrmScheme=" + this.mActiveDrmScheme);
            this.mDrmInfoResolved = false;
            this.mDrmInfo = null;
            if (this.mDrmProvisioningThread != null) {
                try {
                    this.mDrmProvisioningThread.join();
                } catch (InterruptedException e) {
                    Log.w(TAG, "[" + this + "] resetDrmState: ProvThread.join Exception " + e);
                    if (ATC_AOSP_ENHANCEMENT) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.mDrmProvisioningThread = null;
            }
            this.mPrepareDrmInProgress = false;
            this.mActiveDrmScheme = false;
            cleanDrmObj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanDrmObj() {
        Log.v(TAG, "[" + this + "] cleanDrmObj: mDrmObj=" + this.mDrmObj + " mDrmSessionId=" + this.mDrmSessionId);
        if (this.mDrmSessionId != null) {
            this.mDrmObj.closeSession(this.mDrmSessionId);
            this.mDrmSessionId = null;
        }
        if (this.mDrmObj != null) {
            this.mDrmObj.release();
            this.mDrmObj = null;
        }
    }

    private static final byte[] getByteArrayFromUUID(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i = 0; i < 8; i++) {
            int i2 = (7 - i) * 8;
            bArr[i] = (byte) (mostSignificantBits >>> i2);
            bArr[i + 8] = (byte) (leastSignificantBits >>> i2);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TimeProvider implements OnSeekCompleteListener, MediaTimeProvider {
        private static final long MAX_EARLY_CALLBACK_US = 1000;
        private static final long MAX_NS_WITHOUT_POSITION_CHECK = 5000000000L;
        private static final int NOTIFY = 1;
        private static final int NOTIFY_SEEK = 3;
        private static final int NOTIFY_STOP = 2;
        private static final int NOTIFY_TIME = 0;
        private static final int NOTIFY_TRACK_DATA = 4;
        private static final String TAG = "MTP";
        private static final long TIME_ADJUSTMENT_RATE = 2;
        private boolean mBuffering;
        private Handler mEventHandler;
        private HandlerThread mHandlerThread;
        private long mLastReportedTime;
        private long mLastTimeUs;
        private MediaTimeProvider.OnMediaTimeListener[] mListeners;
        private MediaPlayer mPlayer;
        private boolean mRefresh;
        private long[] mTimes;
        private boolean mPaused = true;
        private boolean mStopped = true;
        private boolean mPausing = false;
        private boolean mSeeking = false;
        public boolean DEBUG = SystemProperties.getBoolean("persist.mediaplayer.log.on", false);

        public TimeProvider(MediaPlayer mediaPlayer) {
            this.mLastTimeUs = 0L;
            this.mRefresh = false;
            Log.i(TAG, "[" + this + "] TimeProvider create");
            this.mPlayer = mediaPlayer;
            try {
                getCurrentTimeUs(true, false);
            } catch (IllegalStateException unused) {
                this.mRefresh = true;
            }
            Looper myLooper = Looper.myLooper();
            if (myLooper == null && (myLooper = Looper.getMainLooper()) == null) {
                this.mHandlerThread = new HandlerThread("MediaPlayerMTPEventThread", -2);
                this.mHandlerThread.start();
                myLooper = this.mHandlerThread.getLooper();
            }
            this.mEventHandler = new EventHandler(myLooper);
            this.mListeners = new MediaTimeProvider.OnMediaTimeListener[0];
            this.mTimes = new long[0];
            this.mLastTimeUs = 0L;
        }

        private void scheduleNotification(int i, long j) {
            if (this.mSeeking && i == 0) {
                return;
            }
            if (this.DEBUG) {
                Log.v(TAG, "[" + this + "] scheduleNotification " + i + " in " + j);
            }
            this.mEventHandler.removeMessages(1);
            this.mEventHandler.sendMessageDelayed(this.mEventHandler.obtainMessage(1, i, 0), (int) (j / MAX_EARLY_CALLBACK_US));
        }

        public void close() {
            this.mEventHandler.removeMessages(1);
            if (MediaPlayer.ATC_AOSP_ENHANCEMENT) {
                this.mEventHandler.removeMessages(4);
                notifyStop();
            }
            if (this.mHandlerThread != null) {
                this.mHandlerThread.quitSafely();
                this.mHandlerThread = null;
            }
        }

        protected void finalize() {
            Log.i(TAG, "[" + this + "] TimeProvider finalize");
            if (this.mHandlerThread != null) {
                this.mHandlerThread.quitSafely();
            }
        }

        public void onNotifyTime() {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onNotifyTime: ");
                }
                scheduleNotification(0, 0L);
            }
        }

        public void onPaused(boolean z) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onPaused: " + z);
                }
                if (this.mStopped) {
                    this.mStopped = false;
                    this.mSeeking = true;
                    scheduleNotification(3, 0L);
                } else {
                    this.mPausing = z;
                    this.mSeeking = false;
                    scheduleNotification(0, 0L);
                }
            }
        }

        public void onBuffering(boolean z) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onBuffering: " + z);
                }
                this.mBuffering = z;
                scheduleNotification(0, 0L);
            }
        }

        public void onStopped() {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onStopped");
                }
                this.mPaused = true;
                this.mStopped = true;
                this.mSeeking = false;
                this.mBuffering = false;
                scheduleNotification(2, 0L);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            synchronized (this) {
                this.mStopped = false;
                this.mSeeking = true;
                scheduleNotification(3, 0L);
            }
        }

        public void onNewPlayer() {
            if (this.mRefresh) {
                synchronized (this) {
                    this.mStopped = false;
                    this.mSeeking = true;
                    this.mBuffering = false;
                    scheduleNotification(3, 0L);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifySeek() {
            this.mSeeking = false;
            try {
                long currentTimeUs = getCurrentTimeUs(true, false);
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onSeekComplete at " + currentTimeUs);
                }
                for (MediaTimeProvider.OnMediaTimeListener onMediaTimeListener : this.mListeners) {
                    if (onMediaTimeListener == null) {
                        break;
                    }
                    onMediaTimeListener.onSeek(currentTimeUs);
                }
            } catch (IllegalStateException unused) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] onSeekComplete but no player");
                }
                this.mPausing = true;
                notifyTimedEvent(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyTrackData(Pair<SubtitleTrack, byte[]> pair) {
            ((SubtitleTrack) pair.first).onData((byte[]) pair.second, true, -1L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyStop() {
            for (MediaTimeProvider.OnMediaTimeListener onMediaTimeListener : this.mListeners) {
                if (onMediaTimeListener == null) {
                    break;
                }
                onMediaTimeListener.onStop();
            }
        }

        private int registerListener(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            int i = 0;
            while (i < this.mListeners.length && this.mListeners[i] != onMediaTimeListener && this.mListeners[i] != null) {
                i++;
            }
            if (i >= this.mListeners.length) {
                int i2 = i + 1;
                MediaTimeProvider.OnMediaTimeListener[] onMediaTimeListenerArr = new MediaTimeProvider.OnMediaTimeListener[i2];
                long[] jArr = new long[i2];
                System.arraycopy(this.mListeners, 0, onMediaTimeListenerArr, 0, this.mListeners.length);
                System.arraycopy(this.mTimes, 0, jArr, 0, this.mTimes.length);
                this.mListeners = onMediaTimeListenerArr;
                this.mTimes = jArr;
            }
            if (this.mListeners[i] == null) {
                this.mListeners[i] = onMediaTimeListener;
                this.mTimes[i] = -1;
            }
            return i;
        }

        @Override // android.media.MediaTimeProvider
        public void notifyAt(long j, MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] notifyAt " + j);
                }
                this.mTimes[registerListener(onMediaTimeListener)] = j;
                scheduleNotification(0, 0L);
            }
        }

        @Override // android.media.MediaTimeProvider
        public void scheduleUpdate(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] scheduleUpdate");
                }
                int registerListener = registerListener(onMediaTimeListener);
                if (!this.mStopped) {
                    this.mTimes[registerListener] = 0;
                    scheduleNotification(0, 0L);
                }
            }
        }

        @Override // android.media.MediaTimeProvider
        public void cancelNotifications(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                int i = 0;
                while (true) {
                    if (i >= this.mListeners.length) {
                        break;
                    }
                    if (this.mListeners[i] == onMediaTimeListener) {
                        int i2 = i + 1;
                        System.arraycopy(this.mListeners, i2, this.mListeners, i, (this.mListeners.length - i) - 1);
                        System.arraycopy(this.mTimes, i2, this.mTimes, i, (this.mTimes.length - i) - 1);
                        this.mListeners[this.mListeners.length - 1] = null;
                        this.mTimes[this.mTimes.length - 1] = -1;
                        break;
                    }
                    if (this.mListeners[i] == null) {
                        break;
                    } else {
                        i++;
                    }
                }
                scheduleNotification(0, 0L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void notifyTimedEvent(boolean z) {
            long currentTimeUs;
            try {
                currentTimeUs = getCurrentTimeUs(z, true);
            } catch (IllegalStateException unused) {
                this.mRefresh = true;
                this.mPausing = true;
                currentTimeUs = getCurrentTimeUs(z, true);
            }
            if (this.mSeeking) {
                return;
            }
            if (this.DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append("notifyTimedEvent(");
                sb.append(this.mLastTimeUs);
                sb.append(" -> ");
                sb.append(currentTimeUs);
                sb.append(") from {");
                boolean z2 = true;
                for (long j : this.mTimes) {
                    if (j != -1) {
                        if (!z2) {
                            sb.append(", ");
                        }
                        sb.append(j);
                        z2 = false;
                    }
                }
                sb.append("}");
                Log.d(TAG, "[" + this + "] " + sb.toString());
            }
            Vector vector = new Vector();
            long j2 = currentTimeUs;
            for (int i = 0; i < this.mTimes.length && this.mListeners[i] != null; i++) {
                if (this.mTimes[i] > -1) {
                    if (this.mTimes[i] <= MAX_EARLY_CALLBACK_US + currentTimeUs) {
                        vector.add(this.mListeners[i]);
                        if (this.DEBUG) {
                            Log.d(TAG, "[" + this + "] removed");
                        }
                        this.mTimes[i] = -1;
                    } else if (j2 == currentTimeUs || this.mTimes[i] < j2) {
                        j2 = this.mTimes[i];
                    }
                }
            }
            if (j2 > currentTimeUs && !this.mPaused) {
                if (this.DEBUG) {
                    Log.d(TAG, "[" + this + "] scheduling for " + j2 + " and " + currentTimeUs);
                }
                this.mPlayer.notifyAt(j2);
            } else {
                this.mEventHandler.removeMessages(1);
            }
            Iterator it = vector.iterator();
            while (it.hasNext()) {
                ((MediaTimeProvider.OnMediaTimeListener) it.next()).onTimedEvent(currentTimeUs);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x002f A[Catch: IllegalStateException -> 0x008b, all -> 0x00cb, TryCatch #1 {IllegalStateException -> 0x008b, blocks: (B:12:0x000d, B:14:0x0021, B:18:0x0029, B:20:0x002f, B:23:0x004e), top: B:11:0x000d, outer: #0 }] */
        @Override // android.media.MediaTimeProvider
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long getCurrentTimeUs(boolean z, boolean z2) throws IllegalStateException {
            boolean z3;
            synchronized (this) {
                if (this.mPaused && !z) {
                    return this.mLastReportedTime;
                }
                try {
                    this.mLastTimeUs = this.mPlayer.getCurrentPosition() * MAX_EARLY_CALLBACK_US;
                    if (this.mPlayer.isPlaying() && !this.mBuffering) {
                        z3 = false;
                        this.mPaused = z3;
                        if (this.DEBUG) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("[");
                            sb.append(this);
                            sb.append("] ");
                            sb.append(this.mPaused ? "paused" : "playing");
                            sb.append(" at ");
                            sb.append(this.mLastTimeUs);
                            Log.v(TAG, sb.toString());
                        }
                        if (z2 || this.mLastTimeUs >= this.mLastReportedTime) {
                            this.mLastReportedTime = this.mLastTimeUs;
                        } else if (this.mLastReportedTime - this.mLastTimeUs > 1000000) {
                            this.mStopped = false;
                            this.mSeeking = true;
                            scheduleNotification(3, 0L);
                        }
                        return this.mLastReportedTime;
                    }
                    z3 = true;
                    this.mPaused = z3;
                    if (this.DEBUG) {
                    }
                    if (z2) {
                    }
                    this.mLastReportedTime = this.mLastTimeUs;
                    return this.mLastReportedTime;
                } catch (IllegalStateException e) {
                    if (this.mPausing) {
                        this.mPausing = false;
                        if (!z2 || this.mLastReportedTime < this.mLastTimeUs) {
                            this.mLastReportedTime = this.mLastTimeUs;
                        }
                        this.mPaused = true;
                        if (this.DEBUG) {
                            Log.d(TAG, "[" + this + "] illegal state, but pausing: estimating at " + this.mLastReportedTime);
                        }
                        return this.mLastReportedTime;
                    }
                    throw e;
                }
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private class EventHandler extends Handler {
            public EventHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    if (MediaPlayer.ATC_AOSP_ENHANCEMENT && message.what == 4) {
                        TimeProvider.this.notifyTrackData((Pair) message.obj);
                        return;
                    }
                    return;
                }
                int i = message.arg1;
                if (i != 0) {
                    switch (i) {
                        case 2:
                            TimeProvider.this.notifyStop();
                            return;
                        case 3:
                            TimeProvider.this.notifySeek();
                            return;
                        case 4:
                            TimeProvider.this.notifyTrackData((Pair) message.obj);
                            return;
                        default:
                            return;
                    }
                }
                TimeProvider.this.notifyTimedEvent(true);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class MetricsConstants {
        public static final String CODEC_AUDIO = "android.media.mediaplayer.audio.codec";
        public static final String CODEC_VIDEO = "android.media.mediaplayer.video.codec";
        public static final String DURATION = "android.media.mediaplayer.durationMs";
        public static final String ERRORS = "android.media.mediaplayer.err";
        public static final String ERROR_CODE = "android.media.mediaplayer.errcode";
        public static final String FRAMES = "android.media.mediaplayer.frames";
        public static final String FRAMES_DROPPED = "android.media.mediaplayer.dropped";
        public static final String HEIGHT = "android.media.mediaplayer.height";
        public static final String MIME_TYPE_AUDIO = "android.media.mediaplayer.audio.mime";
        public static final String MIME_TYPE_VIDEO = "android.media.mediaplayer.video.mime";
        public static final String PLAYING = "android.media.mediaplayer.playingMs";
        public static final String WIDTH = "android.media.mediaplayer.width";

        private MetricsConstants() {
        }
    }
}
