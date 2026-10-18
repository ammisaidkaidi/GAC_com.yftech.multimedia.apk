package android.media;

import android.app.ActivityThread;
import android.app.Application;
import android.app.backup.FullBackup;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.MediaDrm;
import android.media.MediaPlayer2;
import android.media.MediaPlayer2Impl;
import android.media.MediaPlayerBase;
import android.media.MediaTimeProvider;
import android.media.SubtitleController;
import android.media.SubtitleTrack;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.HandlerThread;
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
import dalvik.system.CloseGuard;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.UUID;
import java.util.Vector;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import libcore.io.IoBridge;
import libcore.io.Streams;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MediaPlayer2Impl extends MediaPlayer2 {
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
    private static final int MEDIA_INFO = 200;
    private static final int MEDIA_META_DATA = 202;
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
    private static final int NEXT_SOURCE_STATE_ERROR = -1;
    private static final int NEXT_SOURCE_STATE_INIT = 0;
    private static final int NEXT_SOURCE_STATE_PREPARED = 2;
    private static final int NEXT_SOURCE_STATE_PREPARING = 1;
    private static final String TAG = "MediaPlayer2Impl";
    private boolean mActiveDrmScheme;
    private AtomicInteger mBufferedPercentageCurrent;
    private AtomicInteger mBufferedPercentageNext;
    private DataSourceDesc mCurrentDSD;
    private long mCurrentSrcId;

    @GuardedBy("mTaskLock")
    private Task mCurrentTask;
    private boolean mDrmConfigAllowed;
    private ArrayList<Pair<Executor, MediaPlayer2.DrmEventCallback>> mDrmEventCallbackRecords;
    private final Object mDrmEventCbLock;
    private DrmInfoImpl mDrmInfoImpl;
    private boolean mDrmInfoResolved;
    private final Object mDrmLock;
    private MediaDrm mDrmObj;
    private boolean mDrmProvisioningInProgress;
    private ProvisioningThread mDrmProvisioningThread;
    private byte[] mDrmSessionId;
    private UUID mDrmUUID;
    private ArrayList<Pair<Executor, MediaPlayer2.MediaPlayer2EventCallback>> mEventCallbackRecords;
    private final Object mEventCbLock;
    private EventHandler mEventHandler;
    private HandlerThread mHandlerThread;
    private BitSet mInbandTrackIndices;
    private Vector<Pair<Integer, SubtitleTrack>> mIndexTrackPairs;
    private int mListenerContext;
    private long mNativeContext;
    private long mNativeSurfaceTexture;
    private List<DataSourceDesc> mNextDSDs;
    private boolean mNextSourcePlayPending;
    private int mNextSourceState;
    private long mNextSrcId;
    private MediaPlayer2.OnDrmConfigHelper mOnDrmConfigHelper;
    private MediaPlayer2.OnSubtitleDataListener mOnSubtitleDataListener;
    private Vector<InputStream> mOpenSubtitleSources;

    @GuardedBy("mTaskLock")
    private final List<Task> mPendingTasks;
    private AudioDeviceInfo mPreferredDevice;
    private boolean mPrepareDrmInProgress;

    @GuardedBy("mRoutingChangeListeners")
    private ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> mRoutingChangeListeners;
    private boolean mScreenOnWhilePlaying;
    private int mSelectedSubtitleTrackIndex;
    private long mSrcIdGenerator;
    private boolean mStayAwake;
    private SubtitleController mSubtitleController;
    private MediaPlayer2.OnSubtitleDataListener mSubtitleDataListener;
    private SurfaceHolder mSurfaceHolder;
    private final Handler mTaskHandler;
    private final Object mTaskLock;
    private TimeProvider mTimeProvider;
    private volatile float mVolume;
    private PowerManager.WakeLock mWakeLock = null;
    private int mStreamType = Integer.MIN_VALUE;
    private final CloseGuard mGuard = CloseGuard.get();
    private final Object mSrcLock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public native void _attachAuxEffect(int i);

    private native int _getAudioStreamType() throws IllegalStateException;

    private native void _notifyAt(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _pause() throws IllegalStateException;

    private native void _prepareDrm(byte[] bArr, byte[] bArr2);

    private native void _release();

    /* JADX INFO: Access modifiers changed from: private */
    public native void _releaseDrm();

    private native void _reset();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void _seekTo(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setAudioSessionId(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setAuxEffectSendLevel(float f);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setBufferingParams(BufferingParams bufferingParams);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setPlaybackParams(PlaybackParams playbackParams);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setSyncParams(SyncParams syncParams);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setVideoSurface(Surface surface);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _setVolume(float f, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    private native Parcel getParameter(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoScalingModeSupported(int i) {
        return i == 1 || i == 2;
    }

    private native void nativeHandleDataSourceCallback(boolean z, long j, Media2DataSource media2DataSource);

    private native void nativeHandleDataSourceFD(boolean z, long j, FileDescriptor fileDescriptor, long j2, long j3) throws IOException;

    private native void nativeHandleDataSourceUrl(boolean z, long j, Media2HTTPService media2HTTPService, String str, String[] strArr, String[] strArr2) throws IOException;

    private native void nativePlayNextDataSource(long j);

    private final native void native_enableDeviceCallback(boolean z);

    private final native void native_finalize();

    private native int native_getMediaPlayer2State();

    private final native boolean native_getMetadata(boolean z, boolean z2, Parcel parcel);

    private native PersistableBundle native_getMetrics();

    private final native int native_getRoutedDeviceId();

    private static final native void native_init();

    private final native int native_invoke(Parcel parcel, Parcel parcel2);

    private final native int native_setMetadataFilter(Parcel parcel);

    private final native boolean native_setOutputDevice(int i);

    private final native void native_setup(Object obj);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void native_stream_event_onStreamDataRequest(long j, long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void native_stream_event_onStreamPresentationEnd(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void native_stream_event_onTearDown(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void setLooping(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public native boolean setParameter(int i, Parcel parcel);

    public native void _prepare();

    @Override // android.media.MediaPlayer2
    public void clearPendingCommands() {
    }

    @Override // android.media.MediaPlayer2
    public native int getAudioSessionId();

    @Override // android.media.MediaPlayer2
    public native BufferingParams getBufferingParams();

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public int getBufferingState() {
        return 0;
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public native long getCurrentPosition();

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public native long getDuration();

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public float getMaxPlayerVolume() {
        return 1.0f;
    }

    @Override // android.media.MediaPlayer2
    public native PlaybackParams getPlaybackParams();

    @Override // android.media.MediaPlayer2
    public native SyncParams getSyncParams();

    @Override // android.media.MediaPlayer2
    public native int getVideoHeight();

    @Override // android.media.MediaPlayer2
    public native int getVideoWidth();

    @Override // android.media.MediaPlayer2
    public native boolean isLooping();

    @Override // android.media.MediaPlayer2
    public native boolean isPlaying();

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public boolean isReversePlaybackSupported() {
        return false;
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void registerPlayerEventCallback(Executor executor, MediaPlayerBase.PlayerEventCallback playerEventCallback) {
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void unregisterPlayerEventCallback(MediaPlayerBase.PlayerEventCallback playerEventCallback) {
    }

    static /* synthetic */ long access$708(MediaPlayer2Impl mediaPlayer2Impl) {
        long j = mediaPlayer2Impl.mSrcIdGenerator;
        mediaPlayer2Impl.mSrcIdGenerator = 1 + j;
        return j;
    }

    static {
        System.loadLibrary("media2_jni");
        native_init();
    }

    public MediaPlayer2Impl() {
        this.mSrcIdGenerator = 0L;
        long j = this.mSrcIdGenerator;
        this.mSrcIdGenerator = j + 1;
        this.mCurrentSrcId = j;
        long j2 = this.mSrcIdGenerator;
        this.mSrcIdGenerator = 1 + j2;
        this.mNextSrcId = j2;
        this.mNextSourceState = 0;
        this.mNextSourcePlayPending = false;
        this.mBufferedPercentageCurrent = new AtomicInteger(0);
        this.mBufferedPercentageNext = new AtomicInteger(0);
        this.mVolume = 1.0f;
        this.mDrmLock = new Object();
        this.mTaskLock = new Object();
        this.mPendingTasks = new LinkedList();
        this.mPreferredDevice = null;
        this.mRoutingChangeListeners = new ArrayMap<>();
        this.mIndexTrackPairs = new Vector<>();
        this.mInbandTrackIndices = new BitSet();
        this.mSelectedSubtitleTrackIndex = -1;
        this.mSubtitleDataListener = new MediaPlayer2.OnSubtitleDataListener() { // from class: android.media.MediaPlayer2Impl.25
            @Override // android.media.MediaPlayer2.OnSubtitleDataListener
            public void onSubtitleData(MediaPlayer2 mediaPlayer2, SubtitleData subtitleData) {
                int trackIndex = subtitleData.getTrackIndex();
                synchronized (MediaPlayer2Impl.this.mIndexTrackPairs) {
                    Iterator it = MediaPlayer2Impl.this.mIndexTrackPairs.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        if (pair.first != null && ((Integer) pair.first).intValue() == trackIndex && pair.second != null) {
                            ((SubtitleTrack) pair.second).onData(subtitleData);
                        }
                    }
                }
            }
        };
        this.mEventCbLock = new Object();
        this.mEventCallbackRecords = new ArrayList<>();
        this.mDrmEventCbLock = new Object();
        this.mDrmEventCallbackRecords = new ArrayList<>();
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
        this.mHandlerThread = new HandlerThread("MediaPlayer2TaskThread");
        this.mHandlerThread.start();
        this.mTaskHandler = new Handler(this.mHandlerThread.getLooper());
        this.mTimeProvider = new TimeProvider(this);
        this.mOpenSubtitleSources = new Vector<>();
        this.mGuard.open("close");
        native_setup(new WeakReference(this));
    }

    @Override // android.media.MediaPlayer2, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mGuard) {
            release();
        }
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void play() {
        addTask(new Task(5, false) { // from class: android.media.MediaPlayer2Impl.1
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.stayAwake(true);
                MediaPlayer2Impl.this._start();
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void prepare() {
        addTask(new Task(6, true) { // from class: android.media.MediaPlayer2Impl.2
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this._prepare();
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void pause() {
        addTask(new Task(4, false) { // from class: android.media.MediaPlayer2Impl.3
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.stayAwake(false);
                MediaPlayer2Impl.this._pause();
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void skipToNext() {
        addTask(new Task(29, false) { // from class: android.media.MediaPlayer2Impl.4
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public long getBufferedPosition() {
        return (getDuration() * this.mBufferedPercentageCurrent.get()) / 100;
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public int getPlayerState() {
        switch (getMediaPlayer2State()) {
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return 3;
        }
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setAudioAttributes(final AudioAttributes audioAttributes) {
        addTask(new Task(16, false) { // from class: android.media.MediaPlayer2Impl.5
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                if (audioAttributes == null) {
                    throw new IllegalArgumentException("Cannot set AudioAttributes to null");
                }
                Parcel obtain = Parcel.obtain();
                audioAttributes.writeToParcel(obtain, 1);
                MediaPlayer2Impl.this.setParameter(MediaPlayer2Impl.KEY_PARAMETER_AUDIO_ATTRIBUTES, obtain);
                obtain.recycle();
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public AudioAttributes getAudioAttributes() {
        Parcel parameter = getParameter(KEY_PARAMETER_AUDIO_ATTRIBUTES);
        AudioAttributes createFromParcel = AudioAttributes.CREATOR.createFromParcel(parameter);
        parameter.recycle();
        return createFromParcel;
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setDataSource(final DataSourceDesc dataSourceDesc) {
        addTask(new Task(19, false) { // from class: android.media.MediaPlayer2Impl.6
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                Preconditions.checkNotNull(dataSourceDesc, "the DataSourceDesc cannot be null");
                synchronized (MediaPlayer2Impl.this.mSrcLock) {
                    MediaPlayer2Impl.this.mCurrentDSD = dataSourceDesc;
                    MediaPlayer2Impl.this.mCurrentSrcId = MediaPlayer2Impl.access$708(MediaPlayer2Impl.this);
                    try {
                        MediaPlayer2Impl.this.handleDataSource(true, dataSourceDesc, MediaPlayer2Impl.this.mCurrentSrcId);
                    } catch (IOException unused) {
                    }
                }
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setNextDataSource(final DataSourceDesc dataSourceDesc) {
        addTask(new Task(22, false) { // from class: android.media.MediaPlayer2Impl.7
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                Preconditions.checkNotNull(dataSourceDesc, "the DataSourceDesc cannot be null");
                synchronized (MediaPlayer2Impl.this.mSrcLock) {
                    MediaPlayer2Impl.this.mNextDSDs = new ArrayList(1);
                    MediaPlayer2Impl.this.mNextDSDs.add(dataSourceDesc);
                    MediaPlayer2Impl.this.mNextSrcId = MediaPlayer2Impl.access$708(MediaPlayer2Impl.this);
                    MediaPlayer2Impl.this.mNextSourceState = 0;
                    MediaPlayer2Impl.this.mNextSourcePlayPending = false;
                }
                if (MediaPlayer2Impl.this.getMediaPlayer2State() != 1) {
                    synchronized (MediaPlayer2Impl.this.mSrcLock) {
                        MediaPlayer2Impl.this.prepareNextDataSource_l();
                    }
                }
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setNextDataSources(final List<DataSourceDesc> list) {
        addTask(new Task(23, false) { // from class: android.media.MediaPlayer2Impl.8
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                if (list == null || list.size() == 0) {
                    throw new IllegalArgumentException("data source list cannot be null or empty.");
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((DataSourceDesc) it.next()) == null) {
                        throw new IllegalArgumentException("DataSourceDesc in the source list cannot be null.");
                    }
                }
                synchronized (MediaPlayer2Impl.this.mSrcLock) {
                    MediaPlayer2Impl.this.mNextDSDs = new ArrayList(list);
                    MediaPlayer2Impl.this.mNextSrcId = MediaPlayer2Impl.access$708(MediaPlayer2Impl.this);
                    MediaPlayer2Impl.this.mNextSourceState = 0;
                    MediaPlayer2Impl.this.mNextSourcePlayPending = false;
                }
                if (MediaPlayer2Impl.this.getMediaPlayer2State() != 1) {
                    synchronized (MediaPlayer2Impl.this.mSrcLock) {
                        MediaPlayer2Impl.this.prepareNextDataSource_l();
                    }
                }
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public DataSourceDesc getCurrentDataSource() {
        DataSourceDesc dataSourceDesc;
        synchronized (this.mSrcLock) {
            dataSourceDesc = this.mCurrentDSD;
        }
        return dataSourceDesc;
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void loopCurrent(final boolean z) {
        addTask(new Task(3, false) { // from class: android.media.MediaPlayer2Impl.9
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.setLooping(z);
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setPlaybackSpeed(final float f) {
        addTask(new Task(25, false) { // from class: android.media.MediaPlayer2Impl.10
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this._setPlaybackParams(MediaPlayer2Impl.this.getPlaybackParams().setSpeed(f));
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public float getPlaybackSpeed() {
        return getPlaybackParams().getSpeed();
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void setPlayerVolume(final float f) {
        addTask(new Task(26, false) { // from class: android.media.MediaPlayer2Impl.11
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.mVolume = f;
                MediaPlayer2Impl.this._setVolume(f, f);
            }
        });
    }

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public float getPlayerVolume() {
        return this.mVolume;
    }

    @Override // android.media.MediaPlayer2
    public Parcel newRequest() {
        return Parcel.obtain();
    }

    @Override // android.media.MediaPlayer2
    public void invoke(Parcel parcel, Parcel parcel2) {
        int native_invoke = native_invoke(parcel, parcel2);
        parcel2.setDataPosition(0);
        if (native_invoke == 0) {
            return;
        }
        throw new RuntimeException("failure code: " + native_invoke);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.media.MediaPlayer2Impl$12, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class AnonymousClass12 extends Task {
        final /* synthetic */ Object val$label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass12(int i, boolean z, Object obj) {
            super(i, z);
            this.val$label = obj;
        }

        @Override // android.media.MediaPlayer2Impl.Task
        void process() {
            synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                Iterator it = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                while (it.hasNext()) {
                    final Pair pair = (Pair) it.next();
                    Executor executor = (Executor) pair.first;
                    final Object obj = this.val$label;
                    executor.execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$12$GAwhcv62KlexkkYkbjb8-qEksjI
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaPlayer2Impl.AnonymousClass12 anonymousClass12 = MediaPlayer2Impl.AnonymousClass12.this;
                            ((MediaPlayer2.MediaPlayer2EventCallback) pair.second).onCommandLabelReached(MediaPlayer2Impl.this, obj);
                        }
                    });
                }
            }
        }
    }

    @Override // android.media.MediaPlayer2
    public void notifyWhenCommandLabelReached(Object obj) {
        addTask(new AnonymousClass12(1003, false, obj));
    }

    @Override // android.media.MediaPlayer2
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        updateSurfaceScreenOn();
    }

    @Override // android.media.MediaPlayer2
    public void setSurface(final Surface surface) {
        addTask(new Task(27, false) { // from class: android.media.MediaPlayer2Impl.13
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                if (MediaPlayer2Impl.this.mScreenOnWhilePlaying && surface != null) {
                    Log.w(MediaPlayer2Impl.TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
                }
                MediaPlayer2Impl.this.mSurfaceHolder = null;
                MediaPlayer2Impl.this._setVideoSurface(surface);
                MediaPlayer2Impl.this.updateSurfaceScreenOn();
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void setVideoScalingMode(final int i) {
        addTask(new Task(1002, false) { // from class: android.media.MediaPlayer2Impl.14
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                if (!MediaPlayer2Impl.this.isVideoScalingModeSupported(i)) {
                    throw new IllegalArgumentException("Scaling mode " + i + " is not supported");
                }
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInt(6);
                    obtain.writeInt(i);
                    MediaPlayer2Impl.this.invoke(obtain, obtain2);
                } finally {
                    obtain.recycle();
                    obtain2.recycle();
                }
            }
        });
    }

    private void addTask(Task task) {
        synchronized (this.mTaskLock) {
            this.mPendingTasks.add(task);
            processPendingTask_l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mTaskLock")
    public void processPendingTask_l() {
        if (this.mCurrentTask == null && !this.mPendingTasks.isEmpty()) {
            Task remove = this.mPendingTasks.remove(0);
            this.mCurrentTask = remove;
            this.mTaskHandler.post(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDataSource(boolean z, DataSourceDesc dataSourceDesc, long j) throws IOException {
        Preconditions.checkNotNull(dataSourceDesc, "the DataSourceDesc cannot be null");
        switch (dataSourceDesc.getType()) {
            case 1:
                handleDataSource(z, j, dataSourceDesc.getMedia2DataSource());
                return;
            case 2:
                handleDataSource(z, j, dataSourceDesc.getFileDescriptor(), dataSourceDesc.getFileDescriptorOffset(), dataSourceDesc.getFileDescriptorLength());
                return;
            case 3:
                handleDataSource(z, j, dataSourceDesc.getUriContext(), dataSourceDesc.getUri(), dataSourceDesc.getUriHeaders(), dataSourceDesc.getUriCookies());
                return;
            default:
                return;
        }
    }

    private void handleDataSource(boolean z, long j, Context context, Uri uri, Map<String, String> map, List<HttpCookie> list) throws IOException {
        ContentResolver contentResolver = context.getContentResolver();
        String scheme = uri.getScheme();
        String authorityWithoutUserId = ContentProvider.getAuthorityWithoutUserId(uri.getAuthority());
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            handleDataSource(z, j, uri.getPath(), (Map<String, String>) null, (List<HttpCookie>) null);
            return;
        }
        if ("content".equals(scheme) && "settings".equals(authorityWithoutUserId)) {
            int defaultType = RingtoneManager.getDefaultType(uri);
            Uri cacheForType = RingtoneManager.getCacheForType(defaultType, context.getUserId());
            Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(context, defaultType);
            if (attemptDataSource(z, j, contentResolver, cacheForType) || attemptDataSource(z, j, contentResolver, actualDefaultRingtoneUri)) {
                return;
            }
            handleDataSource(z, j, uri.toString(), map, list);
            return;
        }
        if (attemptDataSource(z, j, contentResolver, uri)) {
            return;
        }
        handleDataSource(z, j, uri.toString(), map, list);
    }

    private boolean attemptDataSource(boolean z, long j, ContentResolver contentResolver, Uri uri) {
        try {
            AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            Throwable th = null;
            try {
                if (openAssetFileDescriptor.getDeclaredLength() < 0) {
                    handleDataSource(z, j, openAssetFileDescriptor.getFileDescriptor(), 0L, DataSourceDesc.LONG_MAX);
                } else {
                    handleDataSource(z, j, openAssetFileDescriptor.getFileDescriptor(), openAssetFileDescriptor.getStartOffset(), openAssetFileDescriptor.getDeclaredLength());
                }
                if (openAssetFileDescriptor != null) {
                    openAssetFileDescriptor.close();
                }
                return true;
            } catch (Throwable th2) {
                if (openAssetFileDescriptor == null) {
                    throw th2;
                }
                if (0 == 0) {
                    openAssetFileDescriptor.close();
                    throw th2;
                }
                try {
                    openAssetFileDescriptor.close();
                    throw th2;
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                    throw th2;
                }
            }
        } catch (IOException | NullPointerException | SecurityException e) {
            Log.w(TAG, "Couldn't open " + uri + ": " + e);
            return false;
        }
    }

    private void handleDataSource(boolean z, long j, String str, Map<String, String> map, List<HttpCookie> list) throws IOException {
        String[] strArr;
        String[] strArr2;
        if (map != null) {
            String[] strArr3 = new String[map.size()];
            String[] strArr4 = new String[map.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr3[i] = entry.getKey();
                strArr4[i] = entry.getValue();
                i++;
            }
            strArr = strArr3;
            strArr2 = strArr4;
        } else {
            strArr = null;
            strArr2 = null;
        }
        handleDataSource(z, j, str, strArr, strArr2, list);
    }

    private void handleDataSource(boolean z, long j, String str, String[] strArr, String[] strArr2, List<HttpCookie> list) throws IOException {
        String str2;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (ContentResolver.SCHEME_FILE.equals(scheme)) {
            str2 = parse.getPath();
        } else {
            if (scheme != null) {
                nativeHandleDataSourceUrl(z, j, Media2HTTPService.createHTTPService(str, list), str, strArr, strArr2);
                return;
            }
            str2 = str;
        }
        File file = new File(str2);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            handleDataSource(z, j, fileInputStream.getFD(), 0L, DataSourceDesc.LONG_MAX);
            fileInputStream.close();
            return;
        }
        throw new IOException("handleDataSource failed.");
    }

    private void handleDataSource(boolean z, long j, FileDescriptor fileDescriptor, long j2, long j3) throws IOException {
        nativeHandleDataSourceFD(z, j, fileDescriptor, j2, j3);
    }

    private void handleDataSource(boolean z, long j, Media2DataSource media2DataSource) {
        nativeHandleDataSourceCallback(z, j, media2DataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareNextDataSource_l() {
        if (this.mNextDSDs == null || this.mNextDSDs.isEmpty() || this.mNextSourceState != 0) {
            return;
        }
        try {
            this.mNextSourceState = 1;
            handleDataSource(false, this.mNextDSDs.get(0), this.mNextSrcId);
        } catch (Exception unused) {
            final Message obtainMessage = this.mEventHandler.obtainMessage(100, 1, -1010, null);
            final long j = this.mNextSrcId;
            this.mEventHandler.post(new Runnable() { // from class: android.media.MediaPlayer2Impl.15
                @Override // java.lang.Runnable
                public void run() {
                    MediaPlayer2Impl.this.mEventHandler.handleMessage(obtainMessage, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playNextDataSource_l() {
        if (this.mNextDSDs == null || this.mNextDSDs.isEmpty()) {
            return;
        }
        if (this.mNextSourceState == 2) {
            this.mCurrentDSD = this.mNextDSDs.get(0);
            this.mCurrentSrcId = this.mNextSrcId;
            this.mBufferedPercentageCurrent.set(this.mBufferedPercentageNext.get());
            this.mNextDSDs.remove(0);
            long j = this.mSrcIdGenerator;
            this.mSrcIdGenerator = 1 + j;
            this.mNextSrcId = j;
            this.mBufferedPercentageNext.set(0);
            this.mNextSourceState = 0;
            this.mNextSourcePlayPending = false;
            final long j2 = this.mCurrentSrcId;
            try {
                nativePlayNextDataSource(j2);
                return;
            } catch (Exception unused) {
                final Message obtainMessage = this.mEventHandler.obtainMessage(100, 1, -1010, null);
                this.mEventHandler.post(new Runnable() { // from class: android.media.MediaPlayer2Impl.16
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaPlayer2Impl.this.mEventHandler.handleMessage(obtainMessage, j2);
                    }
                });
                return;
            }
        }
        if (this.mNextSourceState == 0) {
            prepareNextDataSource_l();
        }
        this.mNextSourcePlayPending = true;
    }

    private int getAudioStreamType() {
        if (this.mStreamType == Integer.MIN_VALUE) {
            this.mStreamType = _getAudioStreamType();
        }
        return this.mStreamType;
    }

    @Override // android.media.MediaPlayer2
    public void stop() {
        stayAwake(false);
        _stop();
    }

    @Override // android.media.MediaPlayer2, android.media.AudioRouting
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

    @Override // android.media.MediaPlayer2, android.media.AudioRouting
    public AudioDeviceInfo getPreferredDevice() {
        AudioDeviceInfo audioDeviceInfo;
        synchronized (this) {
            audioDeviceInfo = this.mPreferredDevice;
        }
        return audioDeviceInfo;
    }

    @Override // android.media.MediaPlayer2, android.media.AudioRouting
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

    @Override // android.media.MediaPlayer2, android.media.AudioRouting
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

    @Override // android.media.MediaPlayer2, android.media.AudioRouting
    public void removeOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener) {
        synchronized (this.mRoutingChangeListeners) {
            if (this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                this.mRoutingChangeListeners.remove(onRoutingChangedListener);
                enableNativeRoutingCallbacksLocked(false);
            }
        }
    }

    @Override // android.media.MediaPlayer2
    public void setWakeMode(Context context, int i) {
        boolean z = true;
        if (SystemProperties.getBoolean("audio.offload.ignore_setawake", false)) {
            Log.w(TAG, "IGNORING setWakeMode " + i);
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
        this.mWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(i | 536870912, MediaPlayer2Impl.class.getName());
        this.mWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
        }
    }

    @Override // android.media.MediaPlayer2
    public void setScreenOnWhilePlaying(boolean z) {
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSurfaceScreenOn() {
        if (this.mSurfaceHolder != null) {
            this.mSurfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    @Override // android.media.MediaPlayer2
    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    @Override // android.media.MediaPlayer2
    public int getMediaPlayer2State() {
        return native_getMediaPlayer2State();
    }

    @Override // android.media.MediaPlayer2
    public void setBufferingParams(final BufferingParams bufferingParams) {
        addTask(new Task(1001, false) { // from class: android.media.MediaPlayer2Impl.17
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                Preconditions.checkNotNull(bufferingParams, "the BufferingParams cannot be null");
                MediaPlayer2Impl.this._setBufferingParams(bufferingParams);
            }
        });
    }

    @Override // android.media.MediaPlayer2
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

    @Override // android.media.MediaPlayer2
    public void setPlaybackParams(final PlaybackParams playbackParams) {
        addTask(new Task(24, false) { // from class: android.media.MediaPlayer2Impl.18
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                Preconditions.checkNotNull(playbackParams, "the PlaybackParams cannot be null");
                MediaPlayer2Impl.this._setPlaybackParams(playbackParams);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void setSyncParams(final SyncParams syncParams) {
        addTask(new Task(28, false) { // from class: android.media.MediaPlayer2Impl.19
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                Preconditions.checkNotNull(syncParams, "the SyncParams cannot be null");
                MediaPlayer2Impl.this._setSyncParams(syncParams);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void seekTo(final long j, final int i) {
        addTask(new Task(14, true) { // from class: android.media.MediaPlayer2Impl.20
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                if (i < 0 || i > 3) {
                    throw new IllegalArgumentException("Illegal seek mode: " + i);
                }
                long j2 = j;
                if (j2 > 2147483647L) {
                    Log.w(MediaPlayer2Impl.TAG, "seekTo offset " + j2 + " is too large, cap to 2147483647");
                    j2 = 2147483647L;
                } else if (j2 < -2147483648L) {
                    Log.w(MediaPlayer2Impl.TAG, "seekTo offset " + j2 + " is too small, cap to -2147483648");
                    j2 = -2147483648L;
                }
                MediaPlayer2Impl.this._seekTo(j2, i);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public MediaTimestamp getTimestamp() {
        try {
            return new MediaTimestamp(getCurrentPosition() * 1000, System.nanoTime(), isPlaying() ? getPlaybackParams().getSpeed() : 0.0f);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    @Override // android.media.MediaPlayer2
    public Metadata getMetadata(boolean z, boolean z2) {
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

    @Override // android.media.MediaPlayer2
    public int setMetadataFilter(Set<Integer> set, Set<Integer> set2) {
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

    @Override // android.media.MediaPlayer2, android.media.MediaPlayerBase
    public void reset() {
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
        synchronized (this.mEventCbLock) {
            this.mEventCallbackRecords.clear();
        }
        synchronized (this.mDrmEventCbLock) {
            this.mDrmEventCallbackRecords.clear();
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
    }

    @Override // android.media.MediaPlayer2
    public void notifyAt(long j) {
        _notifyAt(j);
    }

    @Override // android.media.MediaPlayer2
    public void setAudioSessionId(final int i) {
        addTask(new Task(17, false) { // from class: android.media.MediaPlayer2Impl.21
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this._setAudioSessionId(i);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void attachAuxEffect(final int i) {
        addTask(new Task(1, false) { // from class: android.media.MediaPlayer2Impl.22
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this._attachAuxEffect(i);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void setAuxEffectSendLevel(final float f) {
        addTask(new Task(18, false) { // from class: android.media.MediaPlayer2Impl.23
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this._setAuxEffectSendLevel(f);
            }
        });
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class TrackInfoImpl extends MediaPlayer2.TrackInfo {
        static final Parcelable.Creator<TrackInfoImpl> CREATOR = new Parcelable.Creator<TrackInfoImpl>() { // from class: android.media.MediaPlayer2Impl.TrackInfoImpl.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfoImpl createFromParcel(Parcel parcel) {
                return new TrackInfoImpl(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrackInfoImpl[] newArray(int i) {
                return new TrackInfoImpl[i];
            }
        };
        final MediaFormat mFormat;
        final int mTrackType;

        @Override // android.media.MediaPlayer2.TrackInfo
        public int getTrackType() {
            return this.mTrackType;
        }

        @Override // android.media.MediaPlayer2.TrackInfo
        public String getLanguage() {
            String string = this.mFormat.getString(MediaFormat.KEY_LANGUAGE);
            return string == null ? "und" : string;
        }

        @Override // android.media.MediaPlayer2.TrackInfo
        public MediaFormat getFormat() {
            if (this.mTrackType == 3 || this.mTrackType == 4) {
                return this.mFormat;
            }
            return null;
        }

        TrackInfoImpl(Parcel parcel) {
            this.mTrackType = parcel.readInt();
            this.mFormat = MediaFormat.createSubtitleFormat(parcel.readString(), parcel.readString());
            if (this.mTrackType == 4) {
                this.mFormat.setInteger(MediaFormat.KEY_IS_AUTOSELECT, parcel.readInt());
                this.mFormat.setInteger(MediaFormat.KEY_IS_DEFAULT, parcel.readInt());
                this.mFormat.setInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE, parcel.readInt());
            }
        }

        TrackInfoImpl(int i, MediaFormat mediaFormat) {
            this.mTrackType = i;
            this.mFormat = mediaFormat;
        }

        void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mTrackType);
            parcel.writeString(getLanguage());
            if (this.mTrackType == 4) {
                parcel.writeString(this.mFormat.getString(MediaFormat.KEY_MIME));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_AUTOSELECT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_DEFAULT));
                parcel.writeInt(this.mFormat.getInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE));
            }
        }

        @Override // android.media.MediaPlayer2.TrackInfo
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

    @Override // android.media.MediaPlayer2
    public List<MediaPlayer2.TrackInfo> getTrackInfo() {
        List<MediaPlayer2.TrackInfo> asList;
        TrackInfoImpl[] inbandTrackInfoImpl = getInbandTrackInfoImpl();
        synchronized (this.mIndexTrackPairs) {
            TrackInfoImpl[] trackInfoImplArr = new TrackInfoImpl[this.mIndexTrackPairs.size()];
            for (int i = 0; i < trackInfoImplArr.length; i++) {
                Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i);
                if (pair.first != null) {
                    trackInfoImplArr[i] = inbandTrackInfoImpl[((Integer) pair.first).intValue()];
                } else {
                    SubtitleTrack subtitleTrack = (SubtitleTrack) pair.second;
                    trackInfoImplArr[i] = new TrackInfoImpl(subtitleTrack.getTrackType(), subtitleTrack.getFormat());
                }
            }
            asList = Arrays.asList(trackInfoImplArr);
        }
        return asList;
    }

    private TrackInfoImpl[] getInbandTrackInfoImpl() throws IllegalStateException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInt(1);
            invoke(obtain, obtain2);
            return (TrackInfoImpl[]) obtain2.createTypedArray(TrackInfoImpl.CREATOR);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    private static boolean availableMimeTypeForExternalSource(String str) {
        return "application/x-subrip".equals(str);
    }

    @Override // android.media.MediaPlayer2
    public void setSubtitleAnchor(SubtitleController subtitleController, SubtitleController.Anchor anchor) {
        this.mSubtitleController = subtitleController;
        this.mSubtitleController.setAnchor(anchor);
    }

    private synchronized void setSubtitleAnchor() {
        if (this.mSubtitleController == null && ActivityThread.currentApplication() != null) {
            final HandlerThread handlerThread = new HandlerThread("SetSubtitleAnchorThread");
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer2Impl.24
                @Override // java.lang.Runnable
                public void run() {
                    Application currentApplication = ActivityThread.currentApplication();
                    MediaPlayer2Impl.this.mSubtitleController = new SubtitleController(currentApplication, MediaPlayer2Impl.this.mTimeProvider, MediaPlayer2Impl.this);
                    MediaPlayer2Impl.this.mSubtitleController.setAnchor(new SubtitleController.Anchor() { // from class: android.media.MediaPlayer2Impl.24.1
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
                Log.w(TAG, "failed to join SetSubtitleAnchorThread");
            }
        }
    }

    @Override // android.media.MediaPlayer2, android.media.SubtitleController.Listener
    public void onSubtitleTrackSelected(SubtitleTrack subtitleTrack) {
        if (this.mSelectedSubtitleTrackIndex >= 0) {
            try {
                selectOrDeselectInbandTrack(this.mSelectedSubtitleTrackIndex, false);
            } catch (IllegalStateException unused) {
            }
            this.mSelectedSubtitleTrackIndex = -1;
        }
        setOnSubtitleDataListener(null);
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
            setOnSubtitleDataListener(this.mSubtitleDataListener);
        }
    }

    @Override // android.media.MediaPlayer2
    public void addSubtitleSource(final InputStream inputStream, final MediaFormat mediaFormat) throws IllegalStateException {
        if (inputStream != null) {
            synchronized (this.mOpenSubtitleSources) {
                this.mOpenSubtitleSources.add(inputStream);
            }
        } else {
            Log.w(TAG, "addSubtitleSource called with null InputStream");
        }
        getMediaTimeProvider();
        final HandlerThread handlerThread = new HandlerThread("SubtitleReadThread", 9);
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer2Impl.26
            private int addTrack() {
                SubtitleTrack addTrack;
                if (inputStream == null || MediaPlayer2Impl.this.mSubtitleController == null || (addTrack = MediaPlayer2Impl.this.mSubtitleController.addTrack(mediaFormat)) == null) {
                    return 901;
                }
                Scanner scanner = new Scanner(inputStream, "UTF-8");
                String next = scanner.useDelimiter("\\A").next();
                synchronized (MediaPlayer2Impl.this.mOpenSubtitleSources) {
                    MediaPlayer2Impl.this.mOpenSubtitleSources.remove(inputStream);
                }
                scanner.close();
                synchronized (MediaPlayer2Impl.this.mIndexTrackPairs) {
                    MediaPlayer2Impl.this.mIndexTrackPairs.add(Pair.create(null, addTrack));
                }
                TimeProvider.EventHandler eventHandler = MediaPlayer2Impl.this.mTimeProvider.mEventHandler;
                eventHandler.sendMessage(eventHandler.obtainMessage(1, 4, 0, Pair.create(addTrack, next.getBytes())));
                return 803;
            }

            @Override // java.lang.Runnable
            public void run() {
                int addTrack = addTrack();
                if (MediaPlayer2Impl.this.mEventHandler != null) {
                    MediaPlayer2Impl.this.mEventHandler.sendMessage(MediaPlayer2Impl.this.mEventHandler.obtainMessage(200, addTrack, 0, null));
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
        TrackInfoImpl[] inbandTrackInfoImpl = getInbandTrackInfoImpl();
        synchronized (this.mIndexTrackPairs) {
            for (int i = 0; i < inbandTrackInfoImpl.length; i++) {
                if (!this.mInbandTrackIndices.get(i)) {
                    this.mInbandTrackIndices.set(i);
                    if (inbandTrackInfoImpl[i].getTrackType() == 4) {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i), this.mSubtitleController.addTrack(inbandTrackInfoImpl[i].getFormat())));
                    } else {
                        this.mIndexTrackPairs.add(Pair.create(Integer.valueOf(i), null));
                    }
                }
            }
        }
    }

    @Override // android.media.MediaPlayer2
    public void addTimedTextSource(String str, String str2) throws IOException {
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

    @Override // android.media.MediaPlayer2
    public void addTimedTextSource(Context context, Uri uri, String str) throws IOException {
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

    @Override // android.media.MediaPlayer2
    public void addTimedTextSource(FileDescriptor fileDescriptor, String str) {
        addTimedTextSource(fileDescriptor, 0L, DataSourceDesc.LONG_MAX, str);
    }

    @Override // android.media.MediaPlayer2
    public void addTimedTextSource(FileDescriptor fileDescriptor, final long j, final long j2, String str) {
        if (!availableMimeTypeForExternalSource(str)) {
            throw new IllegalArgumentException("Illegal mimeType for timed text source: " + str);
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
                this.mSubtitleController.registerRenderer(new SRTRenderer(ActivityThread.currentApplication(), this.mEventHandler));
            }
            final SubtitleTrack addTrack = this.mSubtitleController.addTrack(mediaFormat);
            synchronized (this.mIndexTrackPairs) {
                this.mIndexTrackPairs.add(Pair.create(null, addTrack));
            }
            getMediaTimeProvider();
            final HandlerThread handlerThread = new HandlerThread("TimedTextReadThread", 9);
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: android.media.MediaPlayer2Impl.27
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
                            TimeProvider.EventHandler eventHandler = MediaPlayer2Impl.this.mTimeProvider.mEventHandler;
                            eventHandler.sendMessage(eventHandler.obtainMessage(1, 4, 0, Pair.create(addTrack, byteArrayOutputStream.toByteArray())));
                            try {
                                Os.close(dup);
                            } catch (ErrnoException e) {
                                Log.e(MediaPlayer2Impl.TAG, e.getMessage(), e);
                            }
                            return 803;
                        } catch (Throwable th) {
                            try {
                                Os.close(dup);
                            } catch (ErrnoException e2) {
                                Log.e(MediaPlayer2Impl.TAG, e2.getMessage(), e2);
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        Log.e(MediaPlayer2Impl.TAG, e3.getMessage(), e3);
                        try {
                            Os.close(dup);
                        } catch (ErrnoException e4) {
                            Log.e(MediaPlayer2Impl.TAG, e4.getMessage(), e4);
                        }
                        return 900;
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    int addTrack2 = addTrack();
                    if (MediaPlayer2Impl.this.mEventHandler != null) {
                        MediaPlayer2Impl.this.mEventHandler.sendMessage(MediaPlayer2Impl.this.mEventHandler.obtainMessage(200, addTrack2, 0, null));
                    }
                    handlerThread.getLooper().quitSafely();
                }
            });
        } catch (ErrnoException e) {
            Log.e(TAG, e.getMessage(), e);
            throw new RuntimeException(e);
        }
    }

    @Override // android.media.MediaPlayer2
    public int getSelectedTrack(int i) {
        SubtitleTrack selectedTrack;
        if (this.mSubtitleController != null && ((i == 4 || i == 3) && (selectedTrack = this.mSubtitleController.getSelectedTrack()) != null)) {
            synchronized (this.mIndexTrackPairs) {
                for (int i2 = 0; i2 < this.mIndexTrackPairs.size(); i2++) {
                    if (this.mIndexTrackPairs.get(i2).second == selectedTrack && selectedTrack.getTrackType() == i) {
                        return i2;
                    }
                }
            }
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInt(7);
            obtain.writeInt(i);
            invoke(obtain, obtain2);
            int readInt = obtain2.readInt();
            synchronized (this.mIndexTrackPairs) {
                for (int i3 = 0; i3 < this.mIndexTrackPairs.size(); i3++) {
                    Pair<Integer, SubtitleTrack> pair = this.mIndexTrackPairs.get(i3);
                    if (pair.first != null && ((Integer) pair.first).intValue() == readInt) {
                        return i3;
                    }
                }
                return -1;
            }
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.media.MediaPlayer2
    public void selectTrack(final int i) {
        addTask(new Task(15, false) { // from class: android.media.MediaPlayer2Impl.28
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.selectOrDeselectTrack(i, true);
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public void deselectTrack(final int i) {
        addTask(new Task(2, false) { // from class: android.media.MediaPlayer2Impl.29
            @Override // android.media.MediaPlayer2Impl.Task
            void process() {
                MediaPlayer2Impl.this.selectOrDeselectTrack(i, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectOrDeselectTrack(int i, boolean z) throws IllegalStateException {
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
                } else {
                    Log.w(TAG, "trying to deselect track that was not selected");
                    return;
                }
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
            obtain.writeInt(z ? 4 : 5);
            obtain.writeInt(i);
            invoke(obtain, obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    protected void finalize() throws Throwable {
        if (this.mGuard != null) {
            this.mGuard.warnIfOpen();
        }
        close();
        native_finalize();
    }

    private void release() {
        stayAwake(false);
        updateSurfaceScreenOn();
        synchronized (this.mEventCbLock) {
            this.mEventCallbackRecords.clear();
        }
        if (this.mHandlerThread != null) {
            this.mHandlerThread.quitSafely();
            this.mHandlerThread = null;
        }
        if (this.mTimeProvider != null) {
            this.mTimeProvider.close();
            this.mTimeProvider = null;
        }
        this.mOnSubtitleDataListener = null;
        this.mOnDrmConfigHelper = null;
        synchronized (this.mDrmEventCbLock) {
            this.mDrmEventCallbackRecords.clear();
        }
        resetDrmState();
        _release();
    }

    @Override // android.media.MediaPlayer2
    public MediaTimeProvider getMediaTimeProvider() {
        if (this.mTimeProvider == null) {
            this.mTimeProvider = new TimeProvider(this);
        }
        return this.mTimeProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class EventHandler extends Handler {
        private MediaPlayer2Impl mMediaPlayer;

        public EventHandler(MediaPlayer2Impl mediaPlayer2Impl, Looper looper) {
            super(looper);
            this.mMediaPlayer = mediaPlayer2Impl;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            handleMessage(message, 0L);
        }

        public void handleMessage(Message message, long j) {
            final DrmInfoImpl makeCopy;
            final DataSourceDesc dataSourceDesc;
            if (this.mMediaPlayer.mNativeContext == 0) {
                Log.w(MediaPlayer2Impl.TAG, "mediaplayer2 went away with unhandled events");
                return;
            }
            final int i = message.arg1;
            final int i2 = message.arg2;
            int i3 = message.what;
            final TimedMetaData timedMetaData = null;
            final TimedText timedText = null;
            if (i3 == 210) {
                if (message.obj == null) {
                    Log.w(MediaPlayer2Impl.TAG, "MEDIA_DRM_INFO msg.obj=NULL");
                    return;
                }
                if (message.obj instanceof Parcel) {
                    synchronized (MediaPlayer2Impl.this.mDrmLock) {
                        makeCopy = MediaPlayer2Impl.this.mDrmInfoImpl != null ? MediaPlayer2Impl.this.mDrmInfoImpl.makeCopy() : null;
                    }
                    if (makeCopy != null) {
                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                            Iterator it = MediaPlayer2Impl.this.mDrmEventCallbackRecords.iterator();
                            while (it.hasNext()) {
                                final Pair pair = (Pair) it.next();
                                ((Executor) pair.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                        ((MediaPlayer2.DrmEventCallback) pair.second).onDrmInfo(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, makeCopy);
                                    }
                                });
                            }
                        }
                        return;
                    }
                    return;
                }
                Log.w(MediaPlayer2Impl.TAG, "MEDIA_DRM_INFO msg.obj of unexpected type " + message.obj);
                return;
            }
            if (i3 != 10000) {
                switch (i3) {
                    case 0:
                        return;
                    case 1:
                        try {
                            MediaPlayer2Impl.this.scanInternalSubtitleTracks();
                        } catch (RuntimeException unused) {
                            sendMessage(obtainMessage(100, 1, -1010, null));
                        }
                        synchronized (MediaPlayer2Impl.this.mSrcLock) {
                            Log.i(MediaPlayer2Impl.TAG, "MEDIA_PREPARED: srcId=" + j + ", currentSrcId=" + MediaPlayer2Impl.this.mCurrentSrcId + ", nextSrcId=" + MediaPlayer2Impl.this.mNextSrcId);
                            if (j == MediaPlayer2Impl.this.mCurrentSrcId) {
                                dataSourceDesc = MediaPlayer2Impl.this.mCurrentDSD;
                                MediaPlayer2Impl.this.prepareNextDataSource_l();
                            } else if (MediaPlayer2Impl.this.mNextDSDs == null || MediaPlayer2Impl.this.mNextDSDs.isEmpty() || j != MediaPlayer2Impl.this.mNextSrcId) {
                                dataSourceDesc = null;
                            } else {
                                dataSourceDesc = (DataSourceDesc) MediaPlayer2Impl.this.mNextDSDs.get(0);
                                MediaPlayer2Impl.this.mNextSourceState = 2;
                                if (MediaPlayer2Impl.this.mNextSourcePlayPending) {
                                    MediaPlayer2Impl.this.playNextDataSource_l();
                                }
                            }
                        }
                        if (dataSourceDesc != null) {
                            synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                                Iterator it2 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                while (it2.hasNext()) {
                                    final Pair pair2 = (Pair) it2.next();
                                    ((Executor) pair2.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                            ((MediaPlayer2.MediaPlayer2EventCallback) pair2.second).onInfo(eventHandler.mMediaPlayer, dataSourceDesc, 100, 0);
                                        }
                                    });
                                }
                            }
                        }
                        synchronized (MediaPlayer2Impl.this.mTaskLock) {
                            if (MediaPlayer2Impl.this.mCurrentTask != null && MediaPlayer2Impl.this.mCurrentTask.mMediaCallType == 6 && MediaPlayer2Impl.this.mCurrentTask.mDSD == dataSourceDesc && MediaPlayer2Impl.this.mCurrentTask.mNeedToWaitForEventToComplete) {
                                MediaPlayer2Impl.this.mCurrentTask.sendCompleteNotification(0);
                                MediaPlayer2Impl.this.mCurrentTask = null;
                                MediaPlayer2Impl.this.processPendingTask_l();
                            }
                        }
                        return;
                    case 2:
                        final DataSourceDesc dataSourceDesc2 = MediaPlayer2Impl.this.mCurrentDSD;
                        synchronized (MediaPlayer2Impl.this.mSrcLock) {
                            if (j == MediaPlayer2Impl.this.mCurrentSrcId) {
                                Log.i(MediaPlayer2Impl.TAG, "MEDIA_PLAYBACK_COMPLETE: srcId=" + j + ", currentSrcId=" + MediaPlayer2Impl.this.mCurrentSrcId + ", nextSrcId=" + MediaPlayer2Impl.this.mNextSrcId);
                                MediaPlayer2Impl.this.playNextDataSource_l();
                            }
                        }
                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                            Iterator it3 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                            while (it3.hasNext()) {
                                final Pair pair3 = (Pair) it3.next();
                                ((Executor) pair3.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                        ((MediaPlayer2.MediaPlayer2EventCallback) pair3.second).onInfo(eventHandler.mMediaPlayer, dataSourceDesc2, 5, 0);
                                    }
                                });
                            }
                        }
                        MediaPlayer2Impl.this.stayAwake(false);
                        return;
                    case 3:
                        final int i4 = message.arg1;
                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                            if (j == MediaPlayer2Impl.this.mCurrentSrcId) {
                                MediaPlayer2Impl.this.mBufferedPercentageCurrent.set(i4);
                                Iterator it4 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                while (it4.hasNext()) {
                                    final Pair pair4 = (Pair) it4.next();
                                    ((Executor) pair4.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                            ((MediaPlayer2.MediaPlayer2EventCallback) pair4.second).onInfo(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, MediaPlayer2.MEDIA_INFO_BUFFERING_UPDATE, i4);
                                        }
                                    });
                                }
                            } else if (j == MediaPlayer2Impl.this.mNextSrcId && !MediaPlayer2Impl.this.mNextDSDs.isEmpty()) {
                                MediaPlayer2Impl.this.mBufferedPercentageNext.set(i4);
                                final DataSourceDesc dataSourceDesc3 = (DataSourceDesc) MediaPlayer2Impl.this.mNextDSDs.get(0);
                                Iterator it5 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                while (it5.hasNext()) {
                                    final Pair pair5 = (Pair) it5.next();
                                    ((Executor) pair5.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                            ((MediaPlayer2.MediaPlayer2EventCallback) pair5.second).onInfo(eventHandler.mMediaPlayer, dataSourceDesc3, MediaPlayer2.MEDIA_INFO_BUFFERING_UPDATE, i4);
                                        }
                                    });
                                }
                            }
                        }
                        return;
                    case 4:
                        synchronized (MediaPlayer2Impl.this.mTaskLock) {
                            if (MediaPlayer2Impl.this.mCurrentTask != null && MediaPlayer2Impl.this.mCurrentTask.mMediaCallType == 14 && MediaPlayer2Impl.this.mCurrentTask.mNeedToWaitForEventToComplete) {
                                MediaPlayer2Impl.this.mCurrentTask.sendCompleteNotification(0);
                                MediaPlayer2Impl.this.mCurrentTask = null;
                                MediaPlayer2Impl.this.processPendingTask_l();
                            }
                            break;
                        }
                    case 5:
                        final int i5 = message.arg1;
                        final int i6 = message.arg2;
                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                            Iterator it6 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                            while (it6.hasNext()) {
                                final Pair pair6 = (Pair) it6.next();
                                ((Executor) pair6.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                        ((MediaPlayer2.MediaPlayer2EventCallback) pair6.second).onVideoSizeChanged(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, i5, i6);
                                    }
                                });
                            }
                        }
                        return;
                    case 6:
                    case 7:
                        TimeProvider timeProvider = MediaPlayer2Impl.this.mTimeProvider;
                        if (timeProvider != null) {
                            timeProvider.onPaused(message.what == 7);
                            return;
                        }
                        return;
                    case 8:
                        TimeProvider timeProvider2 = MediaPlayer2Impl.this.mTimeProvider;
                        if (timeProvider2 != null) {
                            timeProvider2.onStopped();
                            return;
                        }
                        return;
                    case 9:
                        break;
                    default:
                        switch (i3) {
                            case 98:
                                TimeProvider timeProvider3 = MediaPlayer2Impl.this.mTimeProvider;
                                if (timeProvider3 != null) {
                                    timeProvider3.onNotifyTime();
                                    return;
                                }
                                return;
                            case 99:
                                if (message.obj instanceof Parcel) {
                                    Parcel parcel = (Parcel) message.obj;
                                    timedText = new TimedText(parcel);
                                    parcel.recycle();
                                }
                                synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                                    Iterator it7 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                    while (it7.hasNext()) {
                                        final Pair pair7 = (Pair) it7.next();
                                        ((Executor) pair7.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                                ((MediaPlayer2.MediaPlayer2EventCallback) pair7.second).onTimedText(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, timedText);
                                            }
                                        });
                                    }
                                }
                                return;
                            case 100:
                                Log.e(MediaPlayer2Impl.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                                synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                                    Iterator it8 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                    while (it8.hasNext()) {
                                        final Pair pair8 = (Pair) it8.next();
                                        ((Executor) pair8.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                                ((MediaPlayer2.MediaPlayer2EventCallback) pair8.second).onError(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, i, i2);
                                            }
                                        });
                                        ((Executor) pair8.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ((MediaPlayer2.MediaPlayer2EventCallback) pair8.second).onInfo(r0.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, 5, 0);
                                            }
                                        });
                                    }
                                }
                                MediaPlayer2Impl.this.stayAwake(false);
                                return;
                            default:
                                switch (i3) {
                                    case 200:
                                        int i7 = message.arg1;
                                        if (i7 != 2) {
                                            switch (i7) {
                                                case 700:
                                                    Log.i(MediaPlayer2Impl.TAG, "Info (" + message.arg1 + "," + message.arg2 + ")");
                                                    break;
                                                case 701:
                                                case 702:
                                                    TimeProvider timeProvider4 = MediaPlayer2Impl.this.mTimeProvider;
                                                    if (timeProvider4 != null) {
                                                        timeProvider4.onBuffering(message.arg1 == 701);
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    switch (i7) {
                                                        case 802:
                                                            try {
                                                                MediaPlayer2Impl.this.scanInternalSubtitleTracks();
                                                            } catch (RuntimeException unused2) {
                                                                sendMessage(obtainMessage(100, 1, -1010, null));
                                                            }
                                                        case 803:
                                                            message.arg1 = 802;
                                                            if (MediaPlayer2Impl.this.mSubtitleController != null) {
                                                                MediaPlayer2Impl.this.mSubtitleController.selectDefaultTrack();
                                                                break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else if (j == MediaPlayer2Impl.this.mCurrentSrcId) {
                                            MediaPlayer2Impl.this.prepareNextDataSource_l();
                                        }
                                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                                            Iterator it9 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                            while (it9.hasNext()) {
                                                final Pair pair9 = (Pair) it9.next();
                                                ((Executor) pair9.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                                        ((MediaPlayer2.MediaPlayer2EventCallback) pair9.second).onInfo(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, i, i2);
                                                    }
                                                });
                                            }
                                        }
                                        return;
                                    case 201:
                                        MediaPlayer2.OnSubtitleDataListener onSubtitleDataListener = MediaPlayer2Impl.this.mOnSubtitleDataListener;
                                        if (onSubtitleDataListener != null && (message.obj instanceof Parcel)) {
                                            Parcel parcel2 = (Parcel) message.obj;
                                            SubtitleData subtitleData = new SubtitleData(parcel2);
                                            parcel2.recycle();
                                            onSubtitleDataListener.onSubtitleData(this.mMediaPlayer, subtitleData);
                                            return;
                                        }
                                        return;
                                    case 202:
                                        if (message.obj instanceof Parcel) {
                                            Parcel parcel3 = (Parcel) message.obj;
                                            timedMetaData = TimedMetaData.createTimedMetaDataFromParcel(parcel3);
                                            parcel3.recycle();
                                        }
                                        synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                                            Iterator it10 = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                                            while (it10.hasNext()) {
                                                final Pair pair10 = (Pair) it10.next();
                                                ((Executor) pair10.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MediaPlayer2Impl.EventHandler eventHandler = MediaPlayer2Impl.EventHandler.this;
                                                        ((MediaPlayer2.MediaPlayer2EventCallback) pair10.second).onTimedMetaDataAvailable(eventHandler.mMediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, timedMetaData);
                                                    }
                                                });
                                            }
                                        }
                                        return;
                                    default:
                                        Log.e(MediaPlayer2Impl.TAG, "Unknown message type " + message.what);
                                        return;
                                }
                        }
                }
                TimeProvider timeProvider5 = MediaPlayer2Impl.this.mTimeProvider;
                if (timeProvider5 != null) {
                    timeProvider5.onSeekComplete(this.mMediaPlayer);
                    return;
                }
                return;
            }
            AudioManager.resetAudioPortGeneration();
            synchronized (MediaPlayer2Impl.this.mRoutingChangeListeners) {
                Iterator it11 = MediaPlayer2Impl.this.mRoutingChangeListeners.values().iterator();
                while (it11.hasNext()) {
                    ((NativeRoutingEventHandlerDelegate) it11.next()).notifyClient();
                }
            }
        }
    }

    private static void postEventFromNative(Object obj, final long j, int i, int i2, int i3, Object obj2) {
        MediaPlayer2Impl mediaPlayer2Impl = (MediaPlayer2Impl) ((WeakReference) obj).get();
        if (mediaPlayer2Impl == null) {
            return;
        }
        if (i == 1) {
            synchronized (mediaPlayer2Impl.mDrmLock) {
                mediaPlayer2Impl.mDrmInfoResolved = true;
            }
        } else if (i != 200) {
            if (i == 210) {
                Log.v(TAG, "postEventFromNative MEDIA_DRM_INFO");
                if (obj2 instanceof Parcel) {
                    DrmInfoImpl drmInfoImpl = new DrmInfoImpl((Parcel) obj2);
                    synchronized (mediaPlayer2Impl.mDrmLock) {
                        mediaPlayer2Impl.mDrmInfoImpl = drmInfoImpl;
                    }
                } else {
                    Log.w(TAG, "MEDIA_DRM_INFO msg.obj of unexpected type " + obj2);
                }
            }
        } else if (i2 == 2) {
            new Thread(new Runnable() { // from class: android.media.MediaPlayer2Impl.30
                @Override // java.lang.Runnable
                public void run() {
                    MediaPlayer2Impl.this.play();
                }
            }).start();
            Thread.yield();
        }
        if (mediaPlayer2Impl.mEventHandler != null) {
            final Message obtainMessage = mediaPlayer2Impl.mEventHandler.obtainMessage(i, i2, i3, obj2);
            mediaPlayer2Impl.mEventHandler.post(new Runnable() { // from class: android.media.MediaPlayer2Impl.31
                @Override // java.lang.Runnable
                public void run() {
                    MediaPlayer2Impl.this.mEventHandler.handleMessage(obtainMessage, j);
                }
            });
        }
    }

    @Override // android.media.MediaPlayer2
    public void setMediaPlayer2EventCallback(Executor executor, MediaPlayer2.MediaPlayer2EventCallback mediaPlayer2EventCallback) {
        if (mediaPlayer2EventCallback == null) {
            throw new IllegalArgumentException("Illegal null MediaPlayer2EventCallback");
        }
        if (executor == null) {
            throw new IllegalArgumentException("Illegal null Executor for the MediaPlayer2EventCallback");
        }
        synchronized (this.mEventCbLock) {
            this.mEventCallbackRecords.add(new Pair<>(executor, mediaPlayer2EventCallback));
        }
    }

    @Override // android.media.MediaPlayer2
    public void clearMediaPlayer2EventCallback() {
        synchronized (this.mEventCbLock) {
            this.mEventCallbackRecords.clear();
        }
    }

    @Override // android.media.MediaPlayer2
    public void setOnSubtitleDataListener(MediaPlayer2.OnSubtitleDataListener onSubtitleDataListener) {
        this.mOnSubtitleDataListener = onSubtitleDataListener;
    }

    @Override // android.media.MediaPlayer2
    public void setOnDrmConfigHelper(MediaPlayer2.OnDrmConfigHelper onDrmConfigHelper) {
        synchronized (this.mDrmLock) {
            this.mOnDrmConfigHelper = onDrmConfigHelper;
        }
    }

    @Override // android.media.MediaPlayer2
    public void setDrmEventCallback(Executor executor, MediaPlayer2.DrmEventCallback drmEventCallback) {
        if (drmEventCallback == null) {
            throw new IllegalArgumentException("Illegal null MediaPlayer2EventCallback");
        }
        if (executor == null) {
            throw new IllegalArgumentException("Illegal null Executor for the MediaPlayer2EventCallback");
        }
        synchronized (this.mDrmEventCbLock) {
            this.mDrmEventCallbackRecords.add(new Pair<>(executor, drmEventCallback));
        }
    }

    @Override // android.media.MediaPlayer2
    public void clearDrmEventCallback() {
        synchronized (this.mDrmEventCbLock) {
            this.mDrmEventCallbackRecords.clear();
        }
    }

    @Override // android.media.MediaPlayer2
    public MediaPlayer2.DrmInfo getDrmInfo() {
        DrmInfoImpl makeCopy;
        synchronized (this.mDrmLock) {
            if (!this.mDrmInfoResolved && this.mDrmInfoImpl == null) {
                Log.v(TAG, "The Player has not been prepared yet");
                throw new IllegalStateException("The Player has not been prepared yet");
            }
            makeCopy = this.mDrmInfoImpl != null ? this.mDrmInfoImpl.makeCopy() : null;
        }
        return makeCopy;
    }

    @Override // android.media.MediaPlayer2
    public void prepareDrm(UUID uuid) throws UnsupportedSchemeException, ResourceBusyException, MediaPlayer2.ProvisioningNetworkErrorException, MediaPlayer2.ProvisioningServerErrorException {
        boolean z;
        Log.v(TAG, "prepareDrm: uuid: " + uuid + " mOnDrmConfigHelper: " + this.mOnDrmConfigHelper);
        synchronized (this.mDrmLock) {
            if (this.mDrmInfoImpl == null) {
                Log.e(TAG, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call.");
            }
            if (this.mActiveDrmScheme) {
                String str = "prepareDrm(): Wrong usage: There is already an active DRM scheme with " + this.mDrmUUID;
                Log.e(TAG, str);
                throw new IllegalStateException(str);
            }
            if (this.mPrepareDrmInProgress) {
                Log.e(TAG, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
                throw new IllegalStateException("prepareDrm(): Wrong usage: There is already a pending prepareDrm call.");
            }
            if (this.mDrmProvisioningInProgress) {
                Log.e(TAG, "prepareDrm(): Unexpectd: Provisioning is already in progress.");
                throw new IllegalStateException("prepareDrm(): Unexpectd: Provisioning is already in progress.");
            }
            cleanDrmObj();
            z = true;
            this.mPrepareDrmInProgress = true;
            try {
                prepareDrm_createDrmStep(uuid);
                this.mDrmConfigAllowed = true;
            } catch (Exception e) {
                Log.w(TAG, "prepareDrm(): Exception ", e);
                this.mPrepareDrmInProgress = false;
                throw e;
            }
        }
        if (this.mOnDrmConfigHelper != null) {
            this.mOnDrmConfigHelper.onDrmConfig(this, this.mCurrentDSD);
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
                        } catch (Exception e2) {
                            Log.e(TAG, "prepareDrm: Exception " + e2);
                            throw e2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (!this.mDrmProvisioningInProgress) {
                            this.mPrepareDrmInProgress = false;
                        }
                        if (z) {
                            cleanDrmObj();
                        }
                        throw th;
                    }
                } catch (NotProvisionedException unused) {
                    Log.w(TAG, "prepareDrm: NotProvisionedException");
                    int HandleProvisioninig = HandleProvisioninig(uuid);
                    if (HandleProvisioninig != 0) {
                        switch (HandleProvisioninig) {
                            case 1:
                                Log.e(TAG, "prepareDrm: Provisioning was required but failed due to a network error.");
                                throw new ProvisioningNetworkErrorExceptionImpl("prepareDrm: Provisioning was required but failed due to a network error.");
                            case 2:
                                Log.e(TAG, "prepareDrm: Provisioning was required but the request was denied by the server.");
                                throw new ProvisioningServerErrorExceptionImpl("prepareDrm: Provisioning was required but the request was denied by the server.");
                            default:
                                Log.e(TAG, "prepareDrm: Post-provisioning preparation failed.");
                                throw new IllegalStateException("prepareDrm: Post-provisioning preparation failed.");
                        }
                    }
                    if (!this.mDrmProvisioningInProgress) {
                        this.mPrepareDrmInProgress = false;
                    }
                    z = false;
                } catch (IllegalStateException unused2) {
                    Log.e(TAG, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                    throw new IllegalStateException("prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm().");
                }
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
        }
        if (z) {
            synchronized (this.mDrmEventCbLock) {
                Iterator<Pair<Executor, MediaPlayer2.DrmEventCallback>> it = this.mDrmEventCallbackRecords.iterator();
                while (it.hasNext()) {
                    final Pair<Executor, MediaPlayer2.DrmEventCallback> next = it.next();
                    ((Executor) next.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((MediaPlayer2.DrmEventCallback) next.second).onDrmPrepared(r0, MediaPlayer2Impl.this.mCurrentDSD, 0);
                        }
                    });
                }
            }
        }
    }

    @Override // android.media.MediaPlayer2
    public void releaseDrm() throws MediaPlayer2.NoDrmSchemeException {
        addTask(new Task(12, false) { // from class: android.media.MediaPlayer2Impl.32
            @Override // android.media.MediaPlayer2Impl.Task
            void process() throws MediaPlayer2.NoDrmSchemeException {
                synchronized (MediaPlayer2Impl.this.mDrmLock) {
                    Log.v(MediaPlayer2Impl.TAG, "releaseDrm:");
                    if (MediaPlayer2Impl.this.mActiveDrmScheme) {
                        try {
                            MediaPlayer2Impl.this._releaseDrm();
                            MediaPlayer2Impl.this.cleanDrmObj();
                            MediaPlayer2Impl.this.mActiveDrmScheme = false;
                        } catch (IllegalStateException e) {
                            Log.w(MediaPlayer2Impl.TAG, "releaseDrm: Exception ", e);
                            throw new IllegalStateException("releaseDrm: The player is not in a valid state.");
                        } catch (Exception e2) {
                            Log.e(MediaPlayer2Impl.TAG, "releaseDrm: Exception ", e2);
                        }
                    } else {
                        Log.e(MediaPlayer2Impl.TAG, "releaseDrm(): No active DRM scheme to release.");
                        throw new NoDrmSchemeExceptionImpl("releaseDrm: No active DRM scheme to release.");
                    }
                }
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public MediaDrm.KeyRequest getDrmKeyRequest(byte[] bArr, byte[] bArr2, String str, int i, Map<String, String> map) throws MediaPlayer2.NoDrmSchemeException {
        MediaDrm.KeyRequest keyRequest;
        Log.v(TAG, "getDrmKeyRequest:  keySetId: " + bArr + " initData:" + bArr2 + " mimeType: " + str + " keyType: " + i + " optionalParameters: " + map);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "getDrmKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeExceptionImpl("getDrmKeyRequest: Has to set a DRM scheme first.");
            }
            if (i != 3) {
                try {
                    try {
                        bArr = this.mDrmSessionId;
                    } catch (NotProvisionedException unused) {
                        Log.w(TAG, "getDrmKeyRequest NotProvisionedException: Unexpected. Shouldn't have reached here.");
                        throw new IllegalStateException("getDrmKeyRequest: Unexpected provisioning error.");
                    }
                } catch (Exception e) {
                    Log.w(TAG, "getDrmKeyRequest Exception " + e);
                    throw e;
                }
            }
            keyRequest = this.mDrmObj.getKeyRequest(bArr, bArr2, str, i, map != null ? new HashMap<>(map) : null);
            Log.v(TAG, "getDrmKeyRequest:   --> request: " + keyRequest);
        }
        return keyRequest;
    }

    @Override // android.media.MediaPlayer2
    public byte[] provideDrmKeyResponse(byte[] bArr, byte[] bArr2) throws MediaPlayer2.NoDrmSchemeException, DeniedByServerException {
        byte[] bArr3;
        byte[] provideKeyResponse;
        Log.v(TAG, "provideDrmKeyResponse: keySetId: " + bArr + " response: " + bArr2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme) {
                Log.e(TAG, "getDrmKeyRequest NoDrmSchemeException");
                throw new NoDrmSchemeExceptionImpl("getDrmKeyRequest: Has to set a DRM scheme first.");
            }
            if (bArr == null) {
                try {
                    bArr3 = this.mDrmSessionId;
                } catch (NotProvisionedException unused) {
                    Log.w(TAG, "provideDrmKeyResponse NotProvisionedException: Unexpected. Shouldn't have reached here.");
                    throw new IllegalStateException("provideDrmKeyResponse: Unexpected provisioning error.");
                } catch (Exception e) {
                    Log.w(TAG, "provideDrmKeyResponse Exception " + e);
                    throw e;
                }
            } else {
                bArr3 = bArr;
            }
            provideKeyResponse = this.mDrmObj.provideKeyResponse(bArr3, bArr2);
            Log.v(TAG, "provideDrmKeyResponse: keySetId: " + bArr + " response: " + bArr2 + " --> " + provideKeyResponse);
        }
        return provideKeyResponse;
    }

    @Override // android.media.MediaPlayer2
    public void restoreDrmKeys(final byte[] bArr) throws MediaPlayer2.NoDrmSchemeException {
        addTask(new Task(13, false) { // from class: android.media.MediaPlayer2Impl.33
            @Override // android.media.MediaPlayer2Impl.Task
            void process() throws MediaPlayer2.NoDrmSchemeException {
                Log.v(MediaPlayer2Impl.TAG, "restoreDrmKeys: keySetId: " + bArr);
                synchronized (MediaPlayer2Impl.this.mDrmLock) {
                    if (MediaPlayer2Impl.this.mActiveDrmScheme) {
                        try {
                            MediaPlayer2Impl.this.mDrmObj.restoreKeys(MediaPlayer2Impl.this.mDrmSessionId, bArr);
                        } catch (Exception e) {
                            Log.w(MediaPlayer2Impl.TAG, "restoreKeys Exception " + e);
                            throw e;
                        }
                    } else {
                        Log.w(MediaPlayer2Impl.TAG, "restoreDrmKeys NoDrmSchemeException");
                        throw new NoDrmSchemeExceptionImpl("restoreDrmKeys: Has to set a DRM scheme first.");
                    }
                }
            }
        });
    }

    @Override // android.media.MediaPlayer2
    public String getDrmPropertyString(String str) throws MediaPlayer2.NoDrmSchemeException {
        String propertyString;
        Log.v(TAG, "getDrmPropertyString: propertyName: " + str);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "getDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeExceptionImpl("getDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                propertyString = this.mDrmObj.getPropertyString(str);
            } catch (Exception e) {
                Log.w(TAG, "getDrmPropertyString Exception " + e);
                throw e;
            }
        }
        Log.v(TAG, "getDrmPropertyString: propertyName: " + str + " --> value: " + propertyString);
        return propertyString;
    }

    @Override // android.media.MediaPlayer2
    public void setDrmPropertyString(String str, String str2) throws MediaPlayer2.NoDrmSchemeException {
        Log.v(TAG, "setDrmPropertyString: propertyName: " + str + " value: " + str2);
        synchronized (this.mDrmLock) {
            if (!this.mActiveDrmScheme && !this.mDrmConfigAllowed) {
                Log.w(TAG, "setDrmPropertyString NoDrmSchemeException");
                throw new NoDrmSchemeExceptionImpl("setDrmPropertyString: Has to prepareDrm() first.");
            }
            try {
                this.mDrmObj.setPropertyString(str, str2);
            } catch (Exception e) {
                Log.w(TAG, "setDrmPropertyString Exception " + e);
                throw e;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class DrmInfoImpl extends MediaPlayer2.DrmInfo {
        private Map<UUID, byte[]> mapPssh;
        private UUID[] supportedSchemes;

        @Override // android.media.MediaPlayer2.DrmInfo
        public Map<UUID, byte[]> getPssh() {
            return this.mapPssh;
        }

        @Override // android.media.MediaPlayer2.DrmInfo
        public List<UUID> getSupportedSchemes() {
            return Arrays.asList(this.supportedSchemes);
        }

        private DrmInfoImpl(Map<UUID, byte[]> map, UUID[] uuidArr) {
            this.mapPssh = map;
            this.supportedSchemes = uuidArr;
        }

        private DrmInfoImpl(Parcel parcel) {
            Log.v(MediaPlayer2Impl.TAG, "DrmInfoImpl(" + parcel + ") size " + parcel.dataSize());
            int readInt = parcel.readInt();
            byte[] bArr = new byte[readInt];
            parcel.readByteArray(bArr);
            Log.v(MediaPlayer2Impl.TAG, "DrmInfoImpl() PSSH: " + arrToHex(bArr));
            this.mapPssh = parsePSSH(bArr, readInt);
            Log.v(MediaPlayer2Impl.TAG, "DrmInfoImpl() PSSH: " + this.mapPssh);
            int readInt2 = parcel.readInt();
            this.supportedSchemes = new UUID[readInt2];
            for (int i = 0; i < readInt2; i++) {
                byte[] bArr2 = new byte[16];
                parcel.readByteArray(bArr2);
                this.supportedSchemes[i] = bytesToUUID(bArr2);
                Log.v(MediaPlayer2Impl.TAG, "DrmInfoImpl() supportedScheme[" + i + "]: " + this.supportedSchemes[i]);
            }
            Log.v(MediaPlayer2Impl.TAG, "DrmInfoImpl() Parcel psshsize: " + readInt + " supportedDRMsCount: " + readInt2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DrmInfoImpl makeCopy() {
            return new DrmInfoImpl(this.mapPssh, this.supportedSchemes);
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
                    Log.w(MediaPlayer2Impl.TAG, String.format("parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d", Integer.valueOf(i2), Integer.valueOf(i)));
                    return null;
                }
                int i5 = i3 + 16;
                UUID bytesToUUID = bytesToUUID(Arrays.copyOfRange(bArr, i3, i5));
                int i6 = i2 - 16;
                if (i6 < 4) {
                    Log.w(MediaPlayer2Impl.TAG, String.format("parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d", Integer.valueOf(i6), Integer.valueOf(i)));
                    return null;
                }
                int i7 = i5 + 4;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, i5, i7);
                int i8 = ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN ? ((copyOfRange[2] & 255) << 16) | ((copyOfRange[3] & 255) << 24) | ((copyOfRange[1] & 255) << 8) | (copyOfRange[0] & 255) : ((copyOfRange[1] & 255) << 16) | ((copyOfRange[0] & 255) << 24) | ((copyOfRange[2] & 255) << 8) | (copyOfRange[3] & 255);
                int i9 = i6 - 4;
                if (i9 < i8) {
                    Log.w(MediaPlayer2Impl.TAG, String.format("parsePSSH: len is too short to parse data: (%d < %d) pssh: %d", Integer.valueOf(i9), Integer.valueOf(i8), Integer.valueOf(i)));
                    return null;
                }
                int i10 = i7 + i8;
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i7, i10);
                i2 = i9 - i8;
                Log.v(MediaPlayer2Impl.TAG, String.format("parsePSSH[%d]: <%s, %s> pssh: %d", Integer.valueOf(i4), bytesToUUID, arrToHex(copyOfRange2), Integer.valueOf(i)));
                i4++;
                hashMap.put(bytesToUUID, copyOfRange2);
                i3 = i10;
            }
            return hashMap;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class NoDrmSchemeExceptionImpl extends MediaPlayer2.NoDrmSchemeException {
        public NoDrmSchemeExceptionImpl(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProvisioningNetworkErrorExceptionImpl extends MediaPlayer2.ProvisioningNetworkErrorException {
        public ProvisioningNetworkErrorExceptionImpl(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProvisioningServerErrorExceptionImpl extends MediaPlayer2.ProvisioningServerErrorException {
        public ProvisioningServerErrorExceptionImpl(String str) {
            super(str);
        }
    }

    private void prepareDrm_createDrmStep(UUID uuid) throws UnsupportedSchemeException {
        Log.v(TAG, "prepareDrm_createDrmStep: UUID: " + uuid);
        try {
            this.mDrmObj = new MediaDrm(uuid);
            Log.v(TAG, "prepareDrm_createDrmStep: Created mDrmObj=" + this.mDrmObj);
        } catch (Exception e) {
            Log.e(TAG, "prepareDrm_createDrmStep: MediaDrm failed with " + e);
            throw e;
        }
    }

    private void prepareDrm_openSessionStep(UUID uuid) throws NotProvisionedException, ResourceBusyException {
        Log.v(TAG, "prepareDrm_openSessionStep: uuid: " + uuid);
        try {
            this.mDrmSessionId = this.mDrmObj.openSession();
            Log.v(TAG, "prepareDrm_openSessionStep: mDrmSessionId=" + this.mDrmSessionId);
            _prepareDrm(getByteArrayFromUUID(uuid), this.mDrmSessionId);
            Log.v(TAG, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded");
        } catch (Exception e) {
            Log.e(TAG, "prepareDrm_openSessionStep: open/crypto failed with " + e);
            throw e;
        }
    }

    private static boolean setAudioOutputDeviceById(AudioTrack audioTrack, int i) {
        if (audioTrack == null) {
            return false;
        }
        if (i == 0) {
            audioTrack.setPreferredDevice(null);
            return true;
        }
        for (AudioDeviceInfo audioDeviceInfo : AudioManager.getDevicesStatic(2)) {
            if (audioDeviceInfo.getId() == i) {
                audioTrack.setPreferredDevice(audioDeviceInfo);
                return true;
            }
        }
        return false;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class StreamEventCallback extends AudioTrack.StreamEventCallback {
        public long mJAudioTrackPtr;
        public long mNativeCallbackPtr;
        public long mUserDataPtr;

        public StreamEventCallback(long j, long j2, long j3) {
            this.mJAudioTrackPtr = j;
            this.mNativeCallbackPtr = j2;
            this.mUserDataPtr = j3;
        }

        @Override // android.media.AudioTrack.StreamEventCallback
        public void onTearDown(AudioTrack audioTrack) {
            MediaPlayer2Impl.native_stream_event_onTearDown(this.mNativeCallbackPtr, this.mUserDataPtr);
        }

        @Override // android.media.AudioTrack.StreamEventCallback
        public void onStreamPresentationEnd(AudioTrack audioTrack) {
            MediaPlayer2Impl.native_stream_event_onStreamPresentationEnd(this.mNativeCallbackPtr, this.mUserDataPtr);
        }

        @Override // android.media.AudioTrack.StreamEventCallback
        public void onStreamDataRequest(AudioTrack audioTrack) {
            MediaPlayer2Impl.native_stream_event_onStreamDataRequest(this.mJAudioTrackPtr, this.mNativeCallbackPtr, this.mUserDataPtr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ProvisioningThread extends Thread {
        public static final int TIMEOUT_MS = 60000;
        private Object drmLock;
        private boolean finished;
        private MediaPlayer2Impl mediaPlayer;
        private int status;
        private String urlStr;
        private UUID uuid;

        private ProvisioningThread() {
        }

        public int status() {
            return this.status;
        }

        public ProvisioningThread initialize(MediaDrm.ProvisionRequest provisionRequest, UUID uuid, MediaPlayer2Impl mediaPlayer2Impl) {
            this.drmLock = mediaPlayer2Impl.mDrmLock;
            this.mediaPlayer = mediaPlayer2Impl;
            this.urlStr = provisionRequest.getDefaultUrl() + "&signedRequest=" + new String(provisionRequest.getData());
            this.uuid = uuid;
            this.status = 3;
            Log.v(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread is initialised url: " + this.urlStr);
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            byte[] bArr;
            boolean z;
            boolean z2;
            boolean z3;
            boolean resumePrepareDrm;
            URL url;
            HttpURLConnection httpURLConnection;
            Exception e;
            try {
                try {
                    url = new URL(this.urlStr);
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                } catch (Exception e2) {
                    e = e2;
                    bArr = null;
                    this.status = 1;
                    Log.w(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: openConnection " + e);
                    if (bArr != null) {
                    }
                    z = false;
                    synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
                    }
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(false);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setReadTimeout(60000);
                httpURLConnection.connect();
                bArr = Streams.readFully(httpURLConnection.getInputStream());
                try {
                    Log.v(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: response " + bArr.length + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + bArr);
                } catch (Exception e3) {
                    e = e3;
                    this.status = 1;
                    Log.w(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: connect " + e + " url: " + url);
                    httpURLConnection.disconnect();
                    if (bArr != null) {
                    }
                    z = false;
                    synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
                    }
                }
            } catch (Exception e4) {
                bArr = null;
                e = e4;
            } catch (Throwable th2) {
                bArr = null;
                th = th2;
                httpURLConnection.disconnect();
                throw th;
            }
            try {
                httpURLConnection.disconnect();
            } catch (Exception e5) {
                e = e5;
                this.status = 1;
                Log.w(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: openConnection " + e);
                if (bArr != null) {
                }
                z = false;
                synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
                }
            }
            if (bArr != null) {
                try {
                    MediaPlayer2Impl.this.mDrmObj.provideProvisionResponse(bArr);
                    Log.v(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!");
                    z = true;
                } catch (Exception e6) {
                    this.status = 2;
                    Log.w(MediaPlayer2Impl.TAG, "HandleProvisioninig: Thread run: provideProvisionResponse " + e6);
                }
                synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
                    z2 = !MediaPlayer2Impl.this.mDrmEventCallbackRecords.isEmpty();
                }
                if (!z2) {
                    if (z) {
                        z3 = this.mediaPlayer.resumePrepareDrm(this.uuid);
                        this.status = z3 ? 0 : 3;
                    } else {
                        z3 = false;
                    }
                    this.mediaPlayer.mDrmProvisioningInProgress = false;
                    this.mediaPlayer.mPrepareDrmInProgress = false;
                    if (!z3) {
                        MediaPlayer2Impl.this.cleanDrmObj();
                    }
                } else {
                    synchronized (this.drmLock) {
                        if (z) {
                            try {
                                resumePrepareDrm = this.mediaPlayer.resumePrepareDrm(this.uuid);
                                this.status = resumePrepareDrm ? 0 : 3;
                            } finally {
                            }
                        } else {
                            resumePrepareDrm = false;
                        }
                        this.mediaPlayer.mDrmProvisioningInProgress = false;
                        this.mediaPlayer.mPrepareDrmInProgress = false;
                        if (!resumePrepareDrm) {
                            MediaPlayer2Impl.this.cleanDrmObj();
                        }
                    }
                    synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
                        Iterator it = MediaPlayer2Impl.this.mDrmEventCallbackRecords.iterator();
                        while (it.hasNext()) {
                            final Pair pair = (Pair) it.next();
                            ((Executor) pair.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$ProvisioningThread$ghq9Dd9r2O6PXBn2hv4fhVAxaTQ
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ((MediaPlayer2.DrmEventCallback) pair.second).onDrmPrepared(r0.mediaPlayer, MediaPlayer2Impl.this.mCurrentDSD, MediaPlayer2Impl.ProvisioningThread.this.status);
                                }
                            });
                        }
                    }
                }
                this.finished = true;
                return;
            }
            z = false;
            synchronized (MediaPlayer2Impl.this.mDrmEventCbLock) {
            }
        }
    }

    private int HandleProvisioninig(UUID uuid) {
        boolean z;
        if (this.mDrmProvisioningInProgress) {
            Log.e(TAG, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress");
            return 3;
        }
        MediaDrm.ProvisionRequest provisionRequest = this.mDrmObj.getProvisionRequest();
        if (provisionRequest == null) {
            Log.e(TAG, "HandleProvisioninig: getProvisionRequest returned null.");
            return 3;
        }
        Log.v(TAG, "HandleProvisioninig provReq  data: " + provisionRequest.getData() + " url: " + provisionRequest.getDefaultUrl());
        this.mDrmProvisioningInProgress = true;
        this.mDrmProvisioningThread = new ProvisioningThread().initialize(provisionRequest, uuid, this);
        this.mDrmProvisioningThread.start();
        synchronized (this.mDrmEventCbLock) {
            z = !this.mDrmEventCallbackRecords.isEmpty();
        }
        if (z) {
            return 0;
        }
        try {
            this.mDrmProvisioningThread.join();
        } catch (Exception e) {
            Log.w(TAG, "HandleProvisioninig: Thread.join Exception " + e);
        }
        int status = this.mDrmProvisioningThread.status();
        this.mDrmProvisioningThread = null;
        return status;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resumePrepareDrm(UUID uuid) {
        Log.v(TAG, "resumePrepareDrm: uuid: " + uuid);
        try {
            prepareDrm_openSessionStep(uuid);
            this.mDrmUUID = uuid;
            this.mActiveDrmScheme = true;
            return true;
        } catch (Exception e) {
            Log.w(TAG, "HandleProvisioninig: Thread run _prepareDrm resume failed with " + e);
            return false;
        }
    }

    private void resetDrmState() {
        synchronized (this.mDrmLock) {
            Log.v(TAG, "resetDrmState:  mDrmInfoImpl=" + this.mDrmInfoImpl + " mDrmProvisioningThread=" + this.mDrmProvisioningThread + " mPrepareDrmInProgress=" + this.mPrepareDrmInProgress + " mActiveDrmScheme=" + this.mActiveDrmScheme);
            this.mDrmInfoResolved = false;
            this.mDrmInfoImpl = null;
            if (this.mDrmProvisioningThread != null) {
                try {
                    this.mDrmProvisioningThread.join();
                } catch (InterruptedException e) {
                    Log.w(TAG, "resetDrmState: ProvThread.join Exception " + e);
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
        Log.v(TAG, "cleanDrmObj: mDrmObj=" + this.mDrmObj + " mDrmSessionId=" + this.mDrmSessionId);
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
    public static class TimeProvider implements MediaTimeProvider {
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
        private EventHandler mEventHandler;
        private HandlerThread mHandlerThread;
        private long mLastReportedTime;
        private long mLastTimeUs;
        private MediaTimeProvider.OnMediaTimeListener[] mListeners;
        private MediaPlayer2Impl mPlayer;
        private boolean mRefresh;
        private long[] mTimes;
        private boolean mPaused = true;
        private boolean mStopped = true;
        private boolean mPausing = false;
        private boolean mSeeking = false;
        public boolean DEBUG = false;

        public TimeProvider(MediaPlayer2Impl mediaPlayer2Impl) {
            this.mLastTimeUs = 0L;
            this.mRefresh = false;
            this.mPlayer = mediaPlayer2Impl;
            try {
                getCurrentTimeUs(true, false);
            } catch (IllegalStateException unused) {
                this.mRefresh = true;
            }
            Looper myLooper = Looper.myLooper();
            if (myLooper == null && (myLooper = Looper.getMainLooper()) == null) {
                this.mHandlerThread = new HandlerThread("MediaPlayer2MTPEventThread", -2);
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
                Log.v(TAG, "scheduleNotification " + i + " in " + j);
            }
            this.mEventHandler.removeMessages(1);
            this.mEventHandler.sendMessageDelayed(this.mEventHandler.obtainMessage(1, i, 0), (int) (j / MAX_EARLY_CALLBACK_US));
        }

        public void close() {
            this.mEventHandler.removeMessages(1);
            if (this.mHandlerThread != null) {
                this.mHandlerThread.quitSafely();
                this.mHandlerThread = null;
            }
        }

        protected void finalize() {
            if (this.mHandlerThread != null) {
                this.mHandlerThread.quitSafely();
            }
        }

        public void onNotifyTime() {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onNotifyTime: ");
                }
                scheduleNotification(0, 0L);
            }
        }

        public void onPaused(boolean z) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onPaused: " + z);
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
                    Log.d(TAG, "onBuffering: " + z);
                }
                this.mBuffering = z;
                scheduleNotification(0, 0L);
            }
        }

        public void onStopped() {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "onStopped");
                }
                this.mPaused = true;
                this.mStopped = true;
                this.mSeeking = false;
                this.mBuffering = false;
                scheduleNotification(2, 0L);
            }
        }

        public void onSeekComplete(MediaPlayer2Impl mediaPlayer2Impl) {
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
                    Log.d(TAG, "onSeekComplete at " + currentTimeUs);
                }
                for (MediaTimeProvider.OnMediaTimeListener onMediaTimeListener : this.mListeners) {
                    if (onMediaTimeListener == null) {
                        break;
                    }
                    onMediaTimeListener.onSeek(currentTimeUs);
                }
            } catch (IllegalStateException unused) {
                if (this.DEBUG) {
                    Log.d(TAG, "onSeekComplete but no player");
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
                    Log.d(TAG, "notifyAt " + j);
                }
                this.mTimes[registerListener(onMediaTimeListener)] = j;
                scheduleNotification(0, 0L);
            }
        }

        @Override // android.media.MediaTimeProvider
        public void scheduleUpdate(MediaTimeProvider.OnMediaTimeListener onMediaTimeListener) {
            synchronized (this) {
                if (this.DEBUG) {
                    Log.d(TAG, "scheduleUpdate");
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
                Log.d(TAG, sb.toString());
            }
            Vector vector = new Vector();
            long j2 = currentTimeUs;
            for (int i = 0; i < this.mTimes.length && this.mListeners[i] != null; i++) {
                if (this.mTimes[i] > -1) {
                    if (this.mTimes[i] <= MAX_EARLY_CALLBACK_US + currentTimeUs) {
                        vector.add(this.mListeners[i]);
                        if (this.DEBUG) {
                            Log.d(TAG, "removed");
                        }
                        this.mTimes[i] = -1;
                    } else if (j2 == currentTimeUs || this.mTimes[i] < j2) {
                        j2 = this.mTimes[i];
                    }
                }
            }
            if (j2 > currentTimeUs && !this.mPaused) {
                if (this.DEBUG) {
                    Log.d(TAG, "scheduling for " + j2 + " and " + currentTimeUs);
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

        /* JADX WARN: Removed duplicated region for block: B:20:0x002e A[Catch: IllegalStateException -> 0x007d, all -> 0x00b5, TryCatch #1 {IllegalStateException -> 0x007d, blocks: (B:12:0x000d, B:14:0x0020, B:18:0x0028, B:20:0x002e, B:23:0x0040), top: B:11:0x000d, outer: #0 }] */
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
                            Log.d(TAG, "illegal state, but pausing: estimating at " + this.mLastReportedTime);
                        }
                        return this.mLastReportedTime;
                    }
                    throw e;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public class EventHandler extends Handler {
            public EventHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public abstract class Task implements Runnable {
        private DataSourceDesc mDSD;
        private final int mMediaCallType;
        private final boolean mNeedToWaitForEventToComplete;

        abstract void process() throws IOException, MediaPlayer2.NoDrmSchemeException;

        public Task(int i, boolean z) {
            this.mMediaCallType = i;
            this.mNeedToWaitForEventToComplete = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            try {
                process();
                i = 0;
            } catch (MediaPlayer2.NoDrmSchemeException unused) {
                i = 5;
            } catch (IOException unused2) {
                i = 4;
            } catch (IllegalArgumentException unused3) {
                i = 2;
            } catch (IllegalStateException unused4) {
                i = 1;
            } catch (SecurityException unused5) {
                i = 3;
            } catch (Exception unused6) {
                i = Integer.MIN_VALUE;
            }
            synchronized (MediaPlayer2Impl.this.mSrcLock) {
                this.mDSD = MediaPlayer2Impl.this.mCurrentDSD;
            }
            if (this.mNeedToWaitForEventToComplete && i == 0) {
                return;
            }
            sendCompleteNotification(i);
            synchronized (MediaPlayer2Impl.this.mTaskLock) {
                MediaPlayer2Impl.this.mCurrentTask = null;
                MediaPlayer2Impl.this.processPendingTask_l();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendCompleteNotification(final int i) {
            if (this.mMediaCallType == 1003) {
                return;
            }
            synchronized (MediaPlayer2Impl.this.mEventCbLock) {
                Iterator it = MediaPlayer2Impl.this.mEventCallbackRecords.iterator();
                while (it.hasNext()) {
                    final Pair pair = (Pair) it.next();
                    ((Executor) pair.first).execute(new Runnable() { // from class: android.media.-$$Lambda$MediaPlayer2Impl$Task$FRvdJ9PUPHSq0Jucj91aL6zYEJY
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaPlayer2Impl.Task task = MediaPlayer2Impl.Task.this;
                            ((MediaPlayer2.MediaPlayer2EventCallback) pair.second).onCallCompleted(MediaPlayer2Impl.this, task.mDSD, task.mMediaCallType, i);
                        }
                    });
                }
            }
        }
    }
}
