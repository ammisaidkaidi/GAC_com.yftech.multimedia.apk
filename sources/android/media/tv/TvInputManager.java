package android.media.tv;

import android.annotation.SystemApi;
import android.content.Intent;
import android.graphics.Rect;
import android.media.PlaybackParams;
import android.media.tv.ITvInputClient;
import android.media.tv.ITvInputHardwareCallback;
import android.media.tv.ITvInputManagerCallback;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventSender;
import android.view.KeyEvent;
import android.view.Surface;
import android.view.View;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class TvInputManager {
    public static final String ACTION_BLOCKED_RATINGS_CHANGED = "android.media.tv.action.BLOCKED_RATINGS_CHANGED";
    public static final String ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED";
    public static final String ACTION_QUERY_CONTENT_RATING_SYSTEMS = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS";
    public static final String ACTION_SETUP_INPUTS = "android.media.tv.action.SETUP_INPUTS";
    public static final String ACTION_VIEW_RECORDING_SCHEDULES = "android.media.tv.action.VIEW_RECORDING_SCHEDULES";
    public static final int DVB_DEVICE_DEMUX = 0;
    public static final int DVB_DEVICE_DVR = 1;
    static final int DVB_DEVICE_END = 2;
    public static final int DVB_DEVICE_FRONTEND = 2;
    static final int DVB_DEVICE_START = 0;
    public static final int INPUT_STATE_CONNECTED = 0;
    public static final int INPUT_STATE_CONNECTED_STANDBY = 1;
    public static final int INPUT_STATE_DISCONNECTED = 2;
    public static final String META_DATA_CONTENT_RATING_SYSTEMS = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS";
    static final int RECORDING_ERROR_END = 2;
    public static final int RECORDING_ERROR_INSUFFICIENT_SPACE = 1;
    public static final int RECORDING_ERROR_RESOURCE_BUSY = 2;
    static final int RECORDING_ERROR_START = 0;
    public static final int RECORDING_ERROR_UNKNOWN = 0;
    private static final String TAG = "TvInputManager";
    public static final long TIME_SHIFT_INVALID_TIME = Long.MIN_VALUE;
    public static final int TIME_SHIFT_STATUS_AVAILABLE = 3;
    public static final int TIME_SHIFT_STATUS_UNAVAILABLE = 2;
    public static final int TIME_SHIFT_STATUS_UNKNOWN = 0;
    public static final int TIME_SHIFT_STATUS_UNSUPPORTED = 1;
    public static final int VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY = 4;
    public static final int VIDEO_UNAVAILABLE_REASON_BUFFERING = 3;
    static final int VIDEO_UNAVAILABLE_REASON_END = 4;
    static final int VIDEO_UNAVAILABLE_REASON_START = 0;
    public static final int VIDEO_UNAVAILABLE_REASON_TUNING = 1;
    public static final int VIDEO_UNAVAILABLE_REASON_UNKNOWN = 0;
    public static final int VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL = 2;
    private int mNextSeq;
    private final ITvInputManager mService;
    private final int mUserId;
    private final Object mLock = new Object();
    private final List<TvInputCallbackRecord> mCallbackRecords = new LinkedList();
    private final Map<String, Integer> mStateMap = new ArrayMap();
    private final SparseArray<SessionCallbackRecord> mSessionCallbackRecordMap = new SparseArray<>();
    private final ITvInputClient mClient = new ITvInputClient.Stub() { // from class: android.media.tv.TvInputManager.1
        @Override // android.media.tv.ITvInputClient
        public void onSessionCreated(String str, IBinder iBinder, InputChannel inputChannel, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for " + iBinder);
                    return;
                }
                sessionCallbackRecord.postSessionCreated(iBinder != null ? new Session(iBinder, inputChannel, TvInputManager.this.mService, TvInputManager.this.mUserId, i, TvInputManager.this.mSessionCallbackRecordMap) : null);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onSessionReleased(int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                TvInputManager.this.mSessionCallbackRecordMap.delete(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq:" + i);
                    return;
                }
                sessionCallbackRecord.mSession.releaseInternal();
                sessionCallbackRecord.postSessionReleased();
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onChannelRetuned(Uri uri, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postChannelRetuned(uri);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTracksChanged(List<TvTrackInfo> list, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord != null) {
                    if (sessionCallbackRecord.mSession.updateTracks(list)) {
                        sessionCallbackRecord.postTracksChanged(list);
                        postVideoSizeChangedIfNeededLocked(sessionCallbackRecord);
                    }
                } else {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                }
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTrackSelected(int i, String str, int i2) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i2);
                if (sessionCallbackRecord != null) {
                    if (sessionCallbackRecord.mSession.updateTrackSelection(i, str)) {
                        sessionCallbackRecord.postTrackSelected(i, str);
                        postVideoSizeChangedIfNeededLocked(sessionCallbackRecord);
                    }
                } else {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i2);
                }
            }
        }

        private void postVideoSizeChangedIfNeededLocked(SessionCallbackRecord sessionCallbackRecord) {
            TvTrackInfo videoTrackToNotify = sessionCallbackRecord.mSession.getVideoTrackToNotify();
            if (videoTrackToNotify != null) {
                sessionCallbackRecord.postVideoSizeChanged(videoTrackToNotify.getVideoWidth(), videoTrackToNotify.getVideoHeight());
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onVideoAvailable(int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postVideoAvailable();
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onVideoUnavailable(int i, int i2) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i2);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i2);
                    return;
                }
                sessionCallbackRecord.postVideoUnavailable(i);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onContentAllowed(int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postContentAllowed();
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onContentBlocked(String str, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postContentBlocked(TvContentRating.unflattenFromString(str));
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onLayoutSurface(int i, int i2, int i3, int i4, int i5) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i5);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i5);
                    return;
                }
                sessionCallbackRecord.postLayoutSurface(i, i2, i3, i4);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onSessionEvent(String str, Bundle bundle, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postSessionEvent(str, bundle);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTimeShiftStatusChanged(int i, int i2) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i2);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i2);
                    return;
                }
                sessionCallbackRecord.postTimeShiftStatusChanged(i);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTimeShiftStartPositionChanged(long j, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postTimeShiftStartPositionChanged(j);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTimeShiftCurrentPositionChanged(long j, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postTimeShiftCurrentPositionChanged(j);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onTuned(int i, Uri uri) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postTuned(uri);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onRecordingStopped(Uri uri, int i) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i);
                    return;
                }
                sessionCallbackRecord.postRecordingStopped(uri);
            }
        }

        @Override // android.media.tv.ITvInputClient
        public void onError(int i, int i2) {
            synchronized (TvInputManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord sessionCallbackRecord = (SessionCallbackRecord) TvInputManager.this.mSessionCallbackRecordMap.get(i2);
                if (sessionCallbackRecord == null) {
                    Log.e(TvInputManager.TAG, "Callback not found for seq " + i2);
                    return;
                }
                sessionCallbackRecord.postError(i);
            }
        }
    };

    @SystemApi
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class HardwareCallback {
        public abstract void onReleased();

        public abstract void onStreamConfigChanged(TvStreamConfig[] tvStreamConfigArr);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface InputState {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface RecordingError {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class SessionCallback {
        public void onChannelRetuned(Session session, Uri uri) {
        }

        public void onContentAllowed(Session session) {
        }

        public void onContentBlocked(Session session, TvContentRating tvContentRating) {
        }

        void onError(Session session, int i) {
        }

        public void onLayoutSurface(Session session, int i, int i2, int i3, int i4) {
        }

        void onRecordingStopped(Session session, Uri uri) {
        }

        public void onSessionCreated(Session session) {
        }

        public void onSessionEvent(Session session, String str, Bundle bundle) {
        }

        public void onSessionReleased(Session session) {
        }

        public void onTimeShiftCurrentPositionChanged(Session session, long j) {
        }

        public void onTimeShiftStartPositionChanged(Session session, long j) {
        }

        public void onTimeShiftStatusChanged(Session session, int i) {
        }

        public void onTrackSelected(Session session, int i, String str) {
        }

        public void onTracksChanged(Session session, List<TvTrackInfo> list) {
        }

        void onTuned(Session session, Uri uri) {
        }

        public void onVideoAvailable(Session session) {
        }

        public void onVideoSizeChanged(Session session, int i, int i2) {
        }

        public void onVideoUnavailable(Session session, int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface TimeShiftStatus {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class TvInputCallback {
        public void onInputAdded(String str) {
        }

        public void onInputRemoved(String str) {
        }

        public void onInputStateChanged(String str, int i) {
        }

        public void onInputUpdated(String str) {
        }

        public void onTvInputInfoUpdated(TvInputInfo tvInputInfo) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface VideoUnavailableReason {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SessionCallbackRecord {
        private final Handler mHandler;
        private Session mSession;
        private final SessionCallback mSessionCallback;

        SessionCallbackRecord(SessionCallback sessionCallback, Handler handler) {
            this.mSessionCallback = sessionCallback;
            this.mHandler = handler;
        }

        void postSessionCreated(final Session session) {
            this.mSession = session;
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionCreated(session);
                }
            });
        }

        void postSessionReleased() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.2
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionReleased(SessionCallbackRecord.this.mSession);
                }
            });
        }

        void postChannelRetuned(final Uri uri) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.3
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onChannelRetuned(SessionCallbackRecord.this.mSession, uri);
                }
            });
        }

        void postTracksChanged(final List<TvTrackInfo> list) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.4
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTracksChanged(SessionCallbackRecord.this.mSession, list);
                }
            });
        }

        void postTrackSelected(final int i, final String str) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.5
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTrackSelected(SessionCallbackRecord.this.mSession, i, str);
                }
            });
        }

        void postVideoSizeChanged(final int i, final int i2) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.6
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onVideoSizeChanged(SessionCallbackRecord.this.mSession, i, i2);
                }
            });
        }

        void postVideoAvailable() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.7
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onVideoAvailable(SessionCallbackRecord.this.mSession);
                }
            });
        }

        void postVideoUnavailable(final int i) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.8
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onVideoUnavailable(SessionCallbackRecord.this.mSession, i);
                }
            });
        }

        void postContentAllowed() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.9
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onContentAllowed(SessionCallbackRecord.this.mSession);
                }
            });
        }

        void postContentBlocked(final TvContentRating tvContentRating) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.10
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onContentBlocked(SessionCallbackRecord.this.mSession, tvContentRating);
                }
            });
        }

        void postLayoutSurface(final int i, final int i2, final int i3, final int i4) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.11
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onLayoutSurface(SessionCallbackRecord.this.mSession, i, i2, i3, i4);
                }
            });
        }

        void postSessionEvent(final String str, final Bundle bundle) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.12
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionEvent(SessionCallbackRecord.this.mSession, str, bundle);
                }
            });
        }

        void postTimeShiftStatusChanged(final int i) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.13
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTimeShiftStatusChanged(SessionCallbackRecord.this.mSession, i);
                }
            });
        }

        void postTimeShiftStartPositionChanged(final long j) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.14
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTimeShiftStartPositionChanged(SessionCallbackRecord.this.mSession, j);
                }
            });
        }

        void postTimeShiftCurrentPositionChanged(final long j) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.15
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTimeShiftCurrentPositionChanged(SessionCallbackRecord.this.mSession, j);
                }
            });
        }

        void postTuned(final Uri uri) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.16
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTuned(SessionCallbackRecord.this.mSession, uri);
                }
            });
        }

        void postRecordingStopped(final Uri uri) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.17
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRecordingStopped(SessionCallbackRecord.this.mSession, uri);
                }
            });
        }

        void postError(final int i) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.SessionCallbackRecord.18
                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onError(SessionCallbackRecord.this.mSession, i);
                }
            });
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class TvInputCallbackRecord {
        private final TvInputCallback mCallback;
        private final Handler mHandler;

        public TvInputCallbackRecord(TvInputCallback tvInputCallback, Handler handler) {
            this.mCallback = tvInputCallback;
            this.mHandler = handler;
        }

        public TvInputCallback getCallback() {
            return this.mCallback;
        }

        public void postInputAdded(final String str) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.TvInputCallbackRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    TvInputCallbackRecord.this.mCallback.onInputAdded(str);
                }
            });
        }

        public void postInputRemoved(final String str) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.TvInputCallbackRecord.2
                @Override // java.lang.Runnable
                public void run() {
                    TvInputCallbackRecord.this.mCallback.onInputRemoved(str);
                }
            });
        }

        public void postInputUpdated(final String str) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.TvInputCallbackRecord.3
                @Override // java.lang.Runnable
                public void run() {
                    TvInputCallbackRecord.this.mCallback.onInputUpdated(str);
                }
            });
        }

        public void postInputStateChanged(final String str, final int i) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.TvInputCallbackRecord.4
                @Override // java.lang.Runnable
                public void run() {
                    TvInputCallbackRecord.this.mCallback.onInputStateChanged(str, i);
                }
            });
        }

        public void postTvInputInfoUpdated(final TvInputInfo tvInputInfo) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputManager.TvInputCallbackRecord.5
                @Override // java.lang.Runnable
                public void run() {
                    TvInputCallbackRecord.this.mCallback.onTvInputInfoUpdated(tvInputInfo);
                }
            });
        }
    }

    public TvInputManager(ITvInputManager iTvInputManager, int i) {
        this.mService = iTvInputManager;
        this.mUserId = i;
        ITvInputManagerCallback.Stub stub = new ITvInputManagerCallback.Stub() { // from class: android.media.tv.TvInputManager.2
            @Override // android.media.tv.ITvInputManagerCallback
            public void onInputAdded(String str) {
                synchronized (TvInputManager.this.mLock) {
                    TvInputManager.this.mStateMap.put(str, 0);
                    Iterator it = TvInputManager.this.mCallbackRecords.iterator();
                    while (it.hasNext()) {
                        ((TvInputCallbackRecord) it.next()).postInputAdded(str);
                    }
                }
            }

            @Override // android.media.tv.ITvInputManagerCallback
            public void onInputRemoved(String str) {
                synchronized (TvInputManager.this.mLock) {
                    TvInputManager.this.mStateMap.remove(str);
                    Iterator it = TvInputManager.this.mCallbackRecords.iterator();
                    while (it.hasNext()) {
                        ((TvInputCallbackRecord) it.next()).postInputRemoved(str);
                    }
                }
            }

            @Override // android.media.tv.ITvInputManagerCallback
            public void onInputUpdated(String str) {
                synchronized (TvInputManager.this.mLock) {
                    Iterator it = TvInputManager.this.mCallbackRecords.iterator();
                    while (it.hasNext()) {
                        ((TvInputCallbackRecord) it.next()).postInputUpdated(str);
                    }
                }
            }

            @Override // android.media.tv.ITvInputManagerCallback
            public void onInputStateChanged(String str, int i2) {
                synchronized (TvInputManager.this.mLock) {
                    TvInputManager.this.mStateMap.put(str, Integer.valueOf(i2));
                    Iterator it = TvInputManager.this.mCallbackRecords.iterator();
                    while (it.hasNext()) {
                        ((TvInputCallbackRecord) it.next()).postInputStateChanged(str, i2);
                    }
                }
            }

            @Override // android.media.tv.ITvInputManagerCallback
            public void onTvInputInfoUpdated(TvInputInfo tvInputInfo) {
                synchronized (TvInputManager.this.mLock) {
                    Iterator it = TvInputManager.this.mCallbackRecords.iterator();
                    while (it.hasNext()) {
                        ((TvInputCallbackRecord) it.next()).postTvInputInfoUpdated(tvInputInfo);
                    }
                }
            }
        };
        try {
            if (this.mService != null) {
                this.mService.registerCallback(stub, this.mUserId);
                List<TvInputInfo> tvInputList = this.mService.getTvInputList(this.mUserId);
                synchronized (this.mLock) {
                    Iterator<TvInputInfo> it = tvInputList.iterator();
                    while (it.hasNext()) {
                        String id = it.next().getId();
                        this.mStateMap.put(id, Integer.valueOf(this.mService.getTvInputState(id, this.mUserId)));
                    }
                }
            }
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<TvInputInfo> getTvInputList() {
        try {
            return this.mService.getTvInputList(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public TvInputInfo getTvInputInfo(String str) {
        Preconditions.checkNotNull(str);
        try {
            return this.mService.getTvInputInfo(str, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void updateTvInputInfo(TvInputInfo tvInputInfo) {
        Preconditions.checkNotNull(tvInputInfo);
        try {
            this.mService.updateTvInputInfo(tvInputInfo, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getInputState(String str) {
        Preconditions.checkNotNull(str);
        synchronized (this.mLock) {
            Integer num = this.mStateMap.get(str);
            if (num == null) {
                Log.w(TAG, "Unrecognized input ID: " + str);
                return 2;
            }
            return num.intValue();
        }
    }

    public void registerCallback(TvInputCallback tvInputCallback, Handler handler) {
        Preconditions.checkNotNull(tvInputCallback);
        Preconditions.checkNotNull(handler);
        synchronized (this.mLock) {
            this.mCallbackRecords.add(new TvInputCallbackRecord(tvInputCallback, handler));
        }
    }

    public void unregisterCallback(TvInputCallback tvInputCallback) {
        Preconditions.checkNotNull(tvInputCallback);
        synchronized (this.mLock) {
            Iterator<TvInputCallbackRecord> it = this.mCallbackRecords.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().getCallback() == tvInputCallback) {
                    it.remove();
                    break;
                }
            }
        }
    }

    public boolean isParentalControlsEnabled() {
        try {
            return this.mService.isParentalControlsEnabled(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void setParentalControlsEnabled(boolean z) {
        try {
            this.mService.setParentalControlsEnabled(z, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isRatingBlocked(TvContentRating tvContentRating) {
        Preconditions.checkNotNull(tvContentRating);
        try {
            return this.mService.isRatingBlocked(tvContentRating.flattenToString(), this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public List<TvContentRating> getBlockedRatings() {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = this.mService.getBlockedRatings(this.mUserId).iterator();
            while (it.hasNext()) {
                arrayList.add(TvContentRating.unflattenFromString(it.next()));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void addBlockedRating(TvContentRating tvContentRating) {
        Preconditions.checkNotNull(tvContentRating);
        try {
            this.mService.addBlockedRating(tvContentRating.flattenToString(), this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void removeBlockedRating(TvContentRating tvContentRating) {
        Preconditions.checkNotNull(tvContentRating);
        try {
            this.mService.removeBlockedRating(tvContentRating.flattenToString(), this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public List<TvContentRatingSystemInfo> getTvContentRatingSystemList() {
        try {
            return this.mService.getTvContentRatingSystemList(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void notifyPreviewProgramBrowsableDisabled(String str, long j) {
        Intent intent = new Intent();
        intent.setAction(TvContract.ACTION_PREVIEW_PROGRAM_BROWSABLE_DISABLED);
        intent.putExtra(TvContract.EXTRA_PREVIEW_PROGRAM_ID, j);
        intent.setPackage(str);
        try {
            this.mService.sendTvInputNotifyIntent(intent, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void notifyWatchNextProgramBrowsableDisabled(String str, long j) {
        Intent intent = new Intent();
        intent.setAction(TvContract.ACTION_WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED);
        intent.putExtra(TvContract.EXTRA_WATCH_NEXT_PROGRAM_ID, j);
        intent.setPackage(str);
        try {
            this.mService.sendTvInputNotifyIntent(intent, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void notifyPreviewProgramAddedToWatchNext(String str, long j, long j2) {
        Intent intent = new Intent();
        intent.setAction(TvContract.ACTION_PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT);
        intent.putExtra(TvContract.EXTRA_PREVIEW_PROGRAM_ID, j);
        intent.putExtra(TvContract.EXTRA_WATCH_NEXT_PROGRAM_ID, j2);
        intent.setPackage(str);
        try {
            this.mService.sendTvInputNotifyIntent(intent, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void createSession(String str, SessionCallback sessionCallback, Handler handler) {
        createSessionInternal(str, false, sessionCallback, handler);
    }

    public void createRecordingSession(String str, SessionCallback sessionCallback, Handler handler) {
        createSessionInternal(str, true, sessionCallback, handler);
    }

    private void createSessionInternal(String str, boolean z, SessionCallback sessionCallback, Handler handler) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(sessionCallback);
        Preconditions.checkNotNull(handler);
        SessionCallbackRecord sessionCallbackRecord = new SessionCallbackRecord(sessionCallback, handler);
        synchronized (this.mSessionCallbackRecordMap) {
            int i = this.mNextSeq;
            this.mNextSeq = i + 1;
            this.mSessionCallbackRecordMap.put(i, sessionCallbackRecord);
            try {
                this.mService.createSession(this.mClient, str, z, i, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public List<TvStreamConfig> getAvailableTvStreamConfigList(String str) {
        try {
            return this.mService.getAvailableTvStreamConfigList(str, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public boolean captureFrame(String str, Surface surface, TvStreamConfig tvStreamConfig) {
        try {
            return this.mService.captureFrame(str, surface, tvStreamConfig, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public boolean isSingleSessionActive() {
        try {
            return this.mService.isSingleSessionActive(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public List<TvInputHardwareInfo> getHardwareList() {
        try {
            return this.mService.getHardwareList();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public Hardware acquireTvInputHardware(int i, HardwareCallback hardwareCallback, TvInputInfo tvInputInfo) {
        return acquireTvInputHardware(i, tvInputInfo, hardwareCallback);
    }

    @SystemApi
    public Hardware acquireTvInputHardware(int i, TvInputInfo tvInputInfo, final HardwareCallback hardwareCallback) {
        try {
            return new Hardware(this.mService.acquireTvInputHardware(i, new ITvInputHardwareCallback.Stub() { // from class: android.media.tv.TvInputManager.3
                @Override // android.media.tv.ITvInputHardwareCallback
                public void onReleased() {
                    hardwareCallback.onReleased();
                }

                @Override // android.media.tv.ITvInputHardwareCallback
                public void onStreamConfigChanged(TvStreamConfig[] tvStreamConfigArr) {
                    hardwareCallback.onStreamConfigChanged(tvStreamConfigArr);
                }
            }, tvInputInfo, this.mUserId));
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public void releaseTvInputHardware(int i, Hardware hardware) {
        try {
            this.mService.releaseTvInputHardware(i, hardware.getInterface(), this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<DvbDeviceInfo> getDvbDeviceList() {
        try {
            return this.mService.getDvbDeviceList();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public ParcelFileDescriptor openDvbDevice(DvbDeviceInfo dvbDeviceInfo, int i) {
        try {
            if (i < 0 || 2 < i) {
                throw new IllegalArgumentException("Invalid DVB device: " + i);
            }
            return this.mService.openDvbDevice(dvbDeviceInfo, i);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void requestChannelBrowsable(Uri uri) {
        try {
            this.mService.requestChannelBrowsable(uri, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Session {
        static final int DISPATCH_HANDLED = 1;
        static final int DISPATCH_IN_PROGRESS = -1;
        static final int DISPATCH_NOT_HANDLED = 0;
        private static final long INPUT_SESSION_NOT_RESPONDING_TIMEOUT = 2500;
        private final List<TvTrackInfo> mAudioTracks;
        private InputChannel mChannel;
        private final InputEventHandler mHandler;
        private final Object mMetadataLock;
        private final Pools.Pool<PendingEvent> mPendingEventPool;
        private final SparseArray<PendingEvent> mPendingEvents;
        private String mSelectedAudioTrackId;
        private String mSelectedSubtitleTrackId;
        private String mSelectedVideoTrackId;
        private TvInputEventSender mSender;
        private final int mSeq;
        private final ITvInputManager mService;
        private final SparseArray<SessionCallbackRecord> mSessionCallbackRecordMap;
        private final List<TvTrackInfo> mSubtitleTracks;
        private IBinder mToken;
        private final int mUserId;
        private int mVideoHeight;
        private final List<TvTrackInfo> mVideoTracks;
        private int mVideoWidth;

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface FinishedInputEventCallback {
            void onFinishedInputEvent(Object obj, boolean z);
        }

        private Session(IBinder iBinder, InputChannel inputChannel, ITvInputManager iTvInputManager, int i, int i2, SparseArray<SessionCallbackRecord> sparseArray) {
            this.mHandler = new InputEventHandler(Looper.getMainLooper());
            this.mPendingEventPool = new Pools.SimplePool(20);
            this.mPendingEvents = new SparseArray<>(20);
            this.mMetadataLock = new Object();
            this.mAudioTracks = new ArrayList();
            this.mVideoTracks = new ArrayList();
            this.mSubtitleTracks = new ArrayList();
            this.mToken = iBinder;
            this.mChannel = inputChannel;
            this.mService = iTvInputManager;
            this.mUserId = i;
            this.mSeq = i2;
            this.mSessionCallbackRecordMap = sparseArray;
        }

        public void release() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.releaseSession(this.mToken, this.mUserId);
                releaseInternal();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setMain() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.setMainSession(this.mToken, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void setSurface(Surface surface) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.setSurface(this.mToken, surface, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void dispatchSurfaceChanged(int i, int i2, int i3) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.dispatchSurfaceChanged(this.mToken, i, i2, i3, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void setStreamVolume(float f) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                if (f < 0.0f || f > 1.0f) {
                    throw new IllegalArgumentException("volume should be between 0.0f and 1.0f");
                }
                this.mService.setVolume(this.mToken, f, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void tune(Uri uri) {
            tune(uri, null);
        }

        public void tune(Uri uri, Bundle bundle) {
            Preconditions.checkNotNull(uri);
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            synchronized (this.mMetadataLock) {
                this.mAudioTracks.clear();
                this.mVideoTracks.clear();
                this.mSubtitleTracks.clear();
                this.mSelectedAudioTrackId = null;
                this.mSelectedVideoTrackId = null;
                this.mSelectedSubtitleTrackId = null;
                this.mVideoWidth = 0;
                this.mVideoHeight = 0;
            }
            try {
                this.mService.tune(this.mToken, uri, bundle, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void setCaptionEnabled(boolean z) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.setCaptionEnabled(this.mToken, z, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void selectTrack(int i, String str) {
            synchronized (this.mMetadataLock) {
                try {
                    if (i == 0) {
                        if (str != null && !containsTrack(this.mAudioTracks, str)) {
                            Log.w(TvInputManager.TAG, "Invalid audio trackId: " + str);
                            return;
                        }
                    } else if (i == 1) {
                        if (str != null && !containsTrack(this.mVideoTracks, str)) {
                            Log.w(TvInputManager.TAG, "Invalid video trackId: " + str);
                            return;
                        }
                    } else if (i == 2) {
                        if (str != null && !containsTrack(this.mSubtitleTracks, str)) {
                            Log.w(TvInputManager.TAG, "Invalid subtitle trackId: " + str);
                            return;
                        }
                    } else {
                        throw new IllegalArgumentException("invalid type: " + i);
                    }
                    if (this.mToken == null) {
                        Log.w(TvInputManager.TAG, "The session has been already released");
                        return;
                    }
                    try {
                        this.mService.selectTrack(this.mToken, i, str, this.mUserId);
                    } catch (RemoteException e) {
                        throw e.rethrowFromSystemServer();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private boolean containsTrack(List<TvTrackInfo> list, String str) {
            Iterator<TvTrackInfo> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getId().equals(str)) {
                    return true;
                }
            }
            return false;
        }

        public List<TvTrackInfo> getTracks(int i) {
            synchronized (this.mMetadataLock) {
                try {
                    if (i == 0) {
                        if (this.mAudioTracks == null) {
                            return null;
                        }
                        return new ArrayList(this.mAudioTracks);
                    }
                    if (i == 1) {
                        if (this.mVideoTracks == null) {
                            return null;
                        }
                        return new ArrayList(this.mVideoTracks);
                    }
                    if (i == 2) {
                        if (this.mSubtitleTracks == null) {
                            return null;
                        }
                        return new ArrayList(this.mSubtitleTracks);
                    }
                    throw new IllegalArgumentException("invalid type: " + i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public String getSelectedTrack(int i) {
            synchronized (this.mMetadataLock) {
                try {
                    if (i == 0) {
                        return this.mSelectedAudioTrackId;
                    }
                    if (i == 1) {
                        return this.mSelectedVideoTrackId;
                    }
                    if (i == 2) {
                        return this.mSelectedSubtitleTrackId;
                    }
                    throw new IllegalArgumentException("invalid type: " + i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        boolean updateTracks(List<TvTrackInfo> list) {
            boolean z;
            synchronized (this.mMetadataLock) {
                this.mAudioTracks.clear();
                this.mVideoTracks.clear();
                this.mSubtitleTracks.clear();
                Iterator<TvTrackInfo> it = list.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    TvTrackInfo next = it.next();
                    if (next.getType() == 0) {
                        this.mAudioTracks.add(next);
                    } else if (next.getType() == 1) {
                        this.mVideoTracks.add(next);
                    } else if (next.getType() == 2) {
                        this.mSubtitleTracks.add(next);
                    }
                }
                if (this.mAudioTracks.isEmpty() && this.mVideoTracks.isEmpty() && this.mSubtitleTracks.isEmpty()) {
                    z = false;
                }
            }
            return z;
        }

        boolean updateTrackSelection(int i, String str) {
            synchronized (this.mMetadataLock) {
                if (i == 0) {
                    try {
                        if (!TextUtils.equals(str, this.mSelectedAudioTrackId)) {
                            this.mSelectedAudioTrackId = str;
                            return true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i == 1 && !TextUtils.equals(str, this.mSelectedVideoTrackId)) {
                    this.mSelectedVideoTrackId = str;
                    return true;
                }
                if (i != 2 || TextUtils.equals(str, this.mSelectedSubtitleTrackId)) {
                    return false;
                }
                this.mSelectedSubtitleTrackId = str;
                return true;
            }
        }

        TvTrackInfo getVideoTrackToNotify() {
            synchronized (this.mMetadataLock) {
                if (!this.mVideoTracks.isEmpty() && this.mSelectedVideoTrackId != null) {
                    for (TvTrackInfo tvTrackInfo : this.mVideoTracks) {
                        if (tvTrackInfo.getId().equals(this.mSelectedVideoTrackId)) {
                            int videoWidth = tvTrackInfo.getVideoWidth();
                            int videoHeight = tvTrackInfo.getVideoHeight();
                            if (this.mVideoWidth != videoWidth || this.mVideoHeight != videoHeight) {
                                this.mVideoWidth = videoWidth;
                                this.mVideoHeight = videoHeight;
                                return tvTrackInfo;
                            }
                        }
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftPlay(Uri uri) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftPlay(this.mToken, uri, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftPause() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftPause(this.mToken, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftResume() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftResume(this.mToken, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftSeekTo(long j) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftSeekTo(this.mToken, j, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftSetPlaybackParams(PlaybackParams playbackParams) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftSetPlaybackParams(this.mToken, playbackParams, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void timeShiftEnablePositionTracking(boolean z) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.timeShiftEnablePositionTracking(this.mToken, z, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void startRecording(Uri uri) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.startRecording(this.mToken, uri, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void stopRecording() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.stopRecording(this.mToken, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendAppPrivateCommand(String str, Bundle bundle) {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendAppPrivateCommand(this.mToken, str, bundle, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void createOverlayView(View view, Rect rect) {
            Preconditions.checkNotNull(view);
            Preconditions.checkNotNull(rect);
            if (view.getWindowToken() == null) {
                throw new IllegalStateException("view must be attached to a window");
            }
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.createOverlayView(this.mToken, view.getWindowToken(), rect, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void relayoutOverlayView(Rect rect) {
            Preconditions.checkNotNull(rect);
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.relayoutOverlayView(this.mToken, rect, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void removeOverlayView() {
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.removeOverlayView(this.mToken, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void unblockContent(TvContentRating tvContentRating) {
            Preconditions.checkNotNull(tvContentRating);
            if (this.mToken == null) {
                Log.w(TvInputManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.unblockContent(this.mToken, tvContentRating.flattenToString(), this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public int dispatchInputEvent(InputEvent inputEvent, Object obj, FinishedInputEventCallback finishedInputEventCallback, Handler handler) {
            Preconditions.checkNotNull(inputEvent);
            Preconditions.checkNotNull(finishedInputEventCallback);
            Preconditions.checkNotNull(handler);
            synchronized (this.mHandler) {
                if (this.mChannel == null) {
                    return 0;
                }
                PendingEvent obtainPendingEventLocked = obtainPendingEventLocked(inputEvent, obj, finishedInputEventCallback, handler);
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    return sendInputEventOnMainLooperLocked(obtainPendingEventLocked);
                }
                Message obtainMessage = this.mHandler.obtainMessage(1, obtainPendingEventLocked);
                obtainMessage.setAsynchronous(true);
                this.mHandler.sendMessage(obtainMessage);
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendInputEventAndReportResultOnMainLooper(PendingEvent pendingEvent) {
            synchronized (this.mHandler) {
                if (sendInputEventOnMainLooperLocked(pendingEvent) == -1) {
                    return;
                }
                invokeFinishedInputEventCallback(pendingEvent, false);
            }
        }

        private int sendInputEventOnMainLooperLocked(PendingEvent pendingEvent) {
            if (this.mChannel == null) {
                return 0;
            }
            if (this.mSender == null) {
                this.mSender = new TvInputEventSender(this.mChannel, this.mHandler.getLooper());
            }
            InputEvent inputEvent = pendingEvent.mEvent;
            int sequenceNumber = inputEvent.getSequenceNumber();
            if (this.mSender.sendInputEvent(sequenceNumber, inputEvent)) {
                this.mPendingEvents.put(sequenceNumber, pendingEvent);
                Message obtainMessage = this.mHandler.obtainMessage(2, pendingEvent);
                obtainMessage.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(obtainMessage, INPUT_SESSION_NOT_RESPONDING_TIMEOUT);
                return -1;
            }
            Log.w(TvInputManager.TAG, "Unable to send input event to session: " + this.mToken + " dropping:" + inputEvent);
            return 0;
        }

        void finishedInputEvent(int i, boolean z, boolean z2) {
            synchronized (this.mHandler) {
                int indexOfKey = this.mPendingEvents.indexOfKey(i);
                if (indexOfKey < 0) {
                    return;
                }
                PendingEvent valueAt = this.mPendingEvents.valueAt(indexOfKey);
                this.mPendingEvents.removeAt(indexOfKey);
                if (z2) {
                    Log.w(TvInputManager.TAG, "Timeout waiting for session to handle input event after 2500 ms: " + this.mToken);
                } else {
                    this.mHandler.removeMessages(2, valueAt);
                }
                invokeFinishedInputEventCallback(valueAt, z);
            }
        }

        void invokeFinishedInputEventCallback(PendingEvent pendingEvent, boolean z) {
            pendingEvent.mHandled = z;
            if (pendingEvent.mEventHandler.getLooper().isCurrentThread()) {
                pendingEvent.run();
                return;
            }
            Message obtain = Message.obtain(pendingEvent.mEventHandler, pendingEvent);
            obtain.setAsynchronous(true);
            obtain.sendToTarget();
        }

        private void flushPendingEventsLocked() {
            this.mHandler.removeMessages(3);
            int size = this.mPendingEvents.size();
            for (int i = 0; i < size; i++) {
                Message obtainMessage = this.mHandler.obtainMessage(3, this.mPendingEvents.keyAt(i), 0);
                obtainMessage.setAsynchronous(true);
                obtainMessage.sendToTarget();
            }
        }

        private PendingEvent obtainPendingEventLocked(InputEvent inputEvent, Object obj, FinishedInputEventCallback finishedInputEventCallback, Handler handler) {
            PendingEvent pendingEvent = (PendingEvent) this.mPendingEventPool.acquire();
            if (pendingEvent == null) {
                pendingEvent = new PendingEvent();
            }
            pendingEvent.mEvent = inputEvent;
            pendingEvent.mEventToken = obj;
            pendingEvent.mCallback = finishedInputEventCallback;
            pendingEvent.mEventHandler = handler;
            return pendingEvent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recyclePendingEventLocked(PendingEvent pendingEvent) {
            pendingEvent.recycle();
            this.mPendingEventPool.release(pendingEvent);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public IBinder getToken() {
            return this.mToken;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void releaseInternal() {
            this.mToken = null;
            synchronized (this.mHandler) {
                if (this.mChannel != null) {
                    if (this.mSender != null) {
                        flushPendingEventsLocked();
                        this.mSender.dispose();
                        this.mSender = null;
                    }
                    this.mChannel.dispose();
                    this.mChannel = null;
                }
            }
            synchronized (this.mSessionCallbackRecordMap) {
                this.mSessionCallbackRecordMap.remove(this.mSeq);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public final class InputEventHandler extends Handler {
            public static final int MSG_FLUSH_INPUT_EVENT = 3;
            public static final int MSG_SEND_INPUT_EVENT = 1;
            public static final int MSG_TIMEOUT_INPUT_EVENT = 2;

            InputEventHandler(Looper looper) {
                super(looper, null, true);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        Session.this.sendInputEventAndReportResultOnMainLooper((PendingEvent) message.obj);
                        return;
                    case 2:
                        Session.this.finishedInputEvent(message.arg1, false, true);
                        return;
                    case 3:
                        Session.this.finishedInputEvent(message.arg1, false, false);
                        return;
                    default:
                        return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public final class TvInputEventSender extends InputEventSender {
            public TvInputEventSender(InputChannel inputChannel, Looper looper) {
                super(inputChannel, looper);
            }

            public void onInputEventFinished(int i, boolean z) {
                Session.this.finishedInputEvent(i, z, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes.dex */
        public final class PendingEvent implements Runnable {
            public FinishedInputEventCallback mCallback;
            public InputEvent mEvent;
            public Handler mEventHandler;
            public Object mEventToken;
            public boolean mHandled;

            private PendingEvent() {
            }

            public void recycle() {
                this.mEvent = null;
                this.mEventToken = null;
                this.mCallback = null;
                this.mEventHandler = null;
                this.mHandled = false;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mCallback.onFinishedInputEvent(this.mEventToken, this.mHandled);
                synchronized (this.mEventHandler) {
                    Session.this.recyclePendingEventLocked(this);
                }
            }
        }
    }

    @SystemApi
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Hardware {
        private final ITvInputHardware mInterface;

        @SystemApi
        public boolean dispatchKeyEventToHdmi(KeyEvent keyEvent) {
            return false;
        }

        private Hardware(ITvInputHardware iTvInputHardware) {
            this.mInterface = iTvInputHardware;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ITvInputHardware getInterface() {
            return this.mInterface;
        }

        public boolean setSurface(Surface surface, TvStreamConfig tvStreamConfig) {
            try {
                return this.mInterface.setSurface(surface, tvStreamConfig);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        public void setStreamVolume(float f) {
            try {
                this.mInterface.setStreamVolume(f);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        public void overrideAudioSink(int i, String str, int i2, int i3, int i4) {
            try {
                this.mInterface.overrideAudioSink(i, str, i2, i3, i4);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
