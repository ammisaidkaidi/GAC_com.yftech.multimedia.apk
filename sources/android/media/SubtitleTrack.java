package android.media;

import android.graphics.Canvas;
import android.media.MediaTimeProvider;
import android.os.Handler;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Vector;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SubtitleTrack implements MediaTimeProvider.OnMediaTimeListener {
    private static final String TAG = "SubtitleTrack";
    private MediaFormat mFormat;
    private long mLastTimeMs;
    private long mLastUpdateTimeMs;
    private Runnable mRunnable;
    protected MediaTimeProvider mTimeProvider;
    protected boolean mVisible;
    protected final LongSparseArray<Run> mRunsByEndTime = new LongSparseArray<>();
    protected final LongSparseArray<Run> mRunsByID = new LongSparseArray<>();
    protected final Vector<Cue> mActiveCues = new Vector<>();
    public boolean DEBUG = false;
    protected Handler mHandler = new Handler();
    private long mNextScheduledTimeMs = -1;
    protected CueList mCues = new CueList();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Cue {
        public long mEndTimeMs;
        public long[] mInnerTimesMs;
        public Cue mNextInRun;
        public long mRunID;
        public long mStartTimeMs;

        public void onTime(long j) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface RenderingWidget {

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface OnChangedListener {
            void onChanged(RenderingWidget renderingWidget);
        }

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();

        void setOnChangedListener(OnChangedListener onChangedListener);

        void setSize(int i, int i2);

        void setVisible(boolean z);
    }

    public abstract RenderingWidget getRenderingWidget();

    public abstract void onData(byte[] bArr, boolean z, long j);

    public abstract void updateView(Vector<Cue> vector);

    public SubtitleTrack(MediaFormat mediaFormat) {
        this.mFormat = mediaFormat;
        clearActiveCues();
        this.mLastTimeMs = -1L;
    }

    public final MediaFormat getFormat() {
        return this.mFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onData(SubtitleData subtitleData) {
        long startTimeUs = subtitleData.getStartTimeUs() + 1;
        onData(subtitleData.getData(), true, startTimeUs);
        setRunDiscardTimeMs(startTimeUs, (subtitleData.getStartTimeUs() + subtitleData.getDurationUs()) / 1000);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0022 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:56:0x0003, B:4:0x0010, B:5:0x001c, B:7:0x0022, B:30:0x003a, B:32:0x003e, B:33:0x0054, B:36:0x0061, B:10:0x0065, B:21:0x0073, B:23:0x0077, B:24:0x008d, B:26:0x0091, B:27:0x0094, B:13:0x009a, B:16:0x009e, B:40:0x00a3, B:42:0x00ab, B:44:0x00b6, B:46:0x00ba, B:3:0x000d), top: B:55:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected synchronized void updateActiveCues(boolean z, long j) {
        Iterator<Pair<Long, Cue>> it;
        if (!z) {
            try {
                if (this.mLastUpdateTimeMs > j) {
                }
                it = this.mCues.entriesBetween(this.mLastUpdateTimeMs, j).iterator();
                while (it.hasNext()) {
                    Pair<Long, Cue> next = it.next();
                    Cue cue = (Cue) next.second;
                    if (cue.mEndTimeMs == ((Long) next.first).longValue()) {
                        if (this.DEBUG) {
                            Log.v(TAG, "Removing " + cue);
                        }
                        this.mActiveCues.remove(cue);
                        if (cue.mRunID == 0) {
                            it.remove();
                        }
                    } else if (cue.mStartTimeMs == ((Long) next.first).longValue()) {
                        if (this.DEBUG) {
                            Log.v(TAG, "Adding " + cue);
                        }
                        if (cue.mInnerTimesMs != null) {
                            cue.onTime(j);
                        }
                        this.mActiveCues.add(cue);
                    } else if (cue.mInnerTimesMs != null) {
                        cue.onTime(j);
                    }
                }
                while (this.mRunsByEndTime.size() > 0 && this.mRunsByEndTime.keyAt(0) <= j) {
                    removeRunsByEndTimeIndex(0);
                }
                this.mLastUpdateTimeMs = j;
            } catch (Throwable th) {
                throw th;
            }
        }
        clearActiveCues();
        it = this.mCues.entriesBetween(this.mLastUpdateTimeMs, j).iterator();
        while (it.hasNext()) {
        }
        while (this.mRunsByEndTime.size() > 0) {
            removeRunsByEndTimeIndex(0);
        }
        this.mLastUpdateTimeMs = j;
    }

    private void removeRunsByEndTimeIndex(int i) {
        Run valueAt = this.mRunsByEndTime.valueAt(i);
        while (valueAt != null) {
            Cue cue = valueAt.mFirstCue;
            while (cue != null) {
                this.mCues.remove(cue);
                Cue cue2 = cue.mNextInRun;
                cue.mNextInRun = null;
                cue = cue2;
            }
            this.mRunsByID.remove(valueAt.mRunID);
            Run run = valueAt.mNextRunAtEndTimeMs;
            valueAt.mPrevRunAtEndTimeMs = null;
            valueAt.mNextRunAtEndTimeMs = null;
            valueAt = run;
        }
        this.mRunsByEndTime.removeAt(i);
    }

    protected void finalize() throws Throwable {
        for (int size = this.mRunsByEndTime.size() - 1; size >= 0; size--) {
            removeRunsByEndTimeIndex(size);
        }
        super.finalize();
    }

    private synchronized void takeTime(long j) {
        this.mLastTimeMs = j;
    }

    protected synchronized void clearActiveCues() {
        if (this.DEBUG) {
            Log.v(TAG, "Clearing " + this.mActiveCues.size() + " active cues");
        }
        this.mActiveCues.clear();
        this.mLastUpdateTimeMs = -1L;
    }

    protected void scheduleTimedEvents() {
        if (this.mTimeProvider != null) {
            this.mNextScheduledTimeMs = this.mCues.nextTimeAfter(this.mLastTimeMs);
            if (this.DEBUG) {
                Log.d(TAG, "sched @" + this.mNextScheduledTimeMs + " after " + this.mLastTimeMs);
            }
            this.mTimeProvider.notifyAt(this.mNextScheduledTimeMs >= 0 ? this.mNextScheduledTimeMs * 1000 : -1L, this);
        }
    }

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onTimedEvent(long j) {
        if (this.DEBUG) {
            Log.d(TAG, "onTimedEvent " + j);
        }
        synchronized (this) {
            long j2 = j / 1000;
            updateActiveCues(false, j2);
            takeTime(j2);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onSeek(long j) {
        if (this.DEBUG) {
            Log.d(TAG, "onSeek " + j);
        }
        synchronized (this) {
            long j2 = j / 1000;
            updateActiveCues(true, j2);
            takeTime(j2);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onStop() {
        synchronized (this) {
            if (this.DEBUG) {
                Log.d(TAG, "onStop");
            }
            clearActiveCues();
            this.mLastTimeMs = -1L;
        }
        updateView(this.mActiveCues);
        this.mNextScheduledTimeMs = -1L;
        this.mTimeProvider.notifyAt(-1L, this);
    }

    public void show() {
        if (this.mVisible) {
            return;
        }
        this.mVisible = true;
        RenderingWidget renderingWidget = getRenderingWidget();
        if (renderingWidget != null) {
            renderingWidget.setVisible(true);
        }
        if (this.mTimeProvider != null) {
            this.mTimeProvider.scheduleUpdate(this);
        }
    }

    public void hide() {
        if (this.mVisible) {
            if (this.mTimeProvider != null) {
                this.mTimeProvider.cancelNotifications(this);
            }
            RenderingWidget renderingWidget = getRenderingWidget();
            if (renderingWidget != null) {
                renderingWidget.setVisible(false);
            }
            this.mVisible = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean addCue(Cue cue) {
        this.mCues.add(cue);
        if (cue.mRunID != 0) {
            Run run = this.mRunsByID.get(cue.mRunID);
            if (run == null) {
                run = new Run();
                this.mRunsByID.put(cue.mRunID, run);
                run.mEndTimeMs = cue.mEndTimeMs;
            } else if (run.mEndTimeMs < cue.mEndTimeMs) {
                run.mEndTimeMs = cue.mEndTimeMs;
            }
            cue.mNextInRun = run.mFirstCue;
            run.mFirstCue = cue;
        }
        final long j = -1;
        if (this.mTimeProvider != null) {
            try {
                j = this.mTimeProvider.getCurrentTimeUs(false, true) / 1000;
            } catch (IllegalStateException unused) {
            }
        }
        if (this.DEBUG) {
            Log.v(TAG, "mVisible=" + this.mVisible + ", " + cue.mStartTimeMs + " <= " + j + ", " + cue.mEndTimeMs + " >= " + this.mLastTimeMs);
        }
        if (this.mVisible && cue.mStartTimeMs <= j && cue.mEndTimeMs >= this.mLastTimeMs) {
            if (this.mRunnable != null) {
                this.mHandler.removeCallbacks(this.mRunnable);
            }
            this.mRunnable = new Runnable() { // from class: android.media.SubtitleTrack.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (this) {
                        SubtitleTrack.this.mRunnable = null;
                        SubtitleTrack.this.updateActiveCues(true, j);
                        SubtitleTrack.this.updateView(SubtitleTrack.this.mActiveCues);
                    }
                }
            };
            if (this.mHandler.postDelayed(this.mRunnable, 10L)) {
                if (this.DEBUG) {
                    Log.v(TAG, "scheduling update");
                }
            } else if (this.DEBUG) {
                Log.w(TAG, "failed to schedule subtitle view update");
            }
            return true;
        }
        if (this.mVisible && cue.mEndTimeMs >= this.mLastTimeMs && (cue.mStartTimeMs < this.mNextScheduledTimeMs || this.mNextScheduledTimeMs < 0)) {
            scheduleTimedEvents();
        }
        return false;
    }

    public synchronized void setTimeProvider(MediaTimeProvider mediaTimeProvider) {
        if (this.mTimeProvider == mediaTimeProvider) {
            return;
        }
        if (this.mTimeProvider != null) {
            this.mTimeProvider.cancelNotifications(this);
        }
        this.mTimeProvider = mediaTimeProvider;
        if (this.mTimeProvider != null) {
            this.mTimeProvider.scheduleUpdate(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CueList {
        private static final String TAG = "CueList";
        public boolean DEBUG = false;
        private SortedMap<Long, Vector<Cue>> mCues = new TreeMap();

        private boolean addEvent(Cue cue, long j) {
            Vector<Cue> vector = this.mCues.get(Long.valueOf(j));
            if (vector == null) {
                vector = new Vector<>(2);
                this.mCues.put(Long.valueOf(j), vector);
            } else if (vector.contains(cue)) {
                return false;
            }
            vector.add(cue);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeEvent(Cue cue, long j) {
            Vector<Cue> vector = this.mCues.get(Long.valueOf(j));
            if (vector != null) {
                vector.remove(cue);
                if (vector.size() == 0) {
                    this.mCues.remove(Long.valueOf(j));
                }
            }
        }

        public void add(Cue cue) {
            if (cue.mStartTimeMs < cue.mEndTimeMs && addEvent(cue, cue.mStartTimeMs)) {
                long j = cue.mStartTimeMs;
                if (cue.mInnerTimesMs != null) {
                    for (long j2 : cue.mInnerTimesMs) {
                        if (j2 > j && j2 < cue.mEndTimeMs) {
                            addEvent(cue, j2);
                            j = j2;
                        }
                    }
                }
                addEvent(cue, cue.mEndTimeMs);
            }
        }

        public void remove(Cue cue) {
            removeEvent(cue, cue.mStartTimeMs);
            if (cue.mInnerTimesMs != null) {
                for (long j : cue.mInnerTimesMs) {
                    removeEvent(cue, j);
                }
            }
            removeEvent(cue, cue.mEndTimeMs);
        }

        public Iterable<Pair<Long, Cue>> entriesBetween(final long j, final long j2) {
            return new Iterable<Pair<Long, Cue>>() { // from class: android.media.SubtitleTrack.CueList.1
                @Override // java.lang.Iterable
                public Iterator<Pair<Long, Cue>> iterator() {
                    if (CueList.this.DEBUG) {
                        Log.d(CueList.TAG, "slice (" + j + ", " + j2 + "]=");
                    }
                    try {
                        return new EntryIterator(CueList.this.mCues.subMap(Long.valueOf(j + 1), Long.valueOf(j2 + 1)));
                    } catch (IllegalArgumentException unused) {
                        return new EntryIterator(null);
                    }
                }
            };
        }

        public long nextTimeAfter(long j) {
            try {
                SortedMap<Long, Vector<Cue>> tailMap = this.mCues.tailMap(Long.valueOf(j + 1));
                if (tailMap != null) {
                    return tailMap.firstKey().longValue();
                }
                return -1L;
            } catch (IllegalArgumentException unused) {
                return -1L;
            } catch (NoSuchElementException unused2) {
                return -1L;
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        class EntryIterator implements Iterator<Pair<Long, Cue>> {
            private long mCurrentTimeMs;
            private boolean mDone;
            private Pair<Long, Cue> mLastEntry;
            private Iterator<Cue> mLastListIterator;
            private Iterator<Cue> mListIterator;
            private SortedMap<Long, Vector<Cue>> mRemainingCues;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.mDone;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Pair<Long, Cue> next() {
                if (this.mDone) {
                    throw new NoSuchElementException("");
                }
                this.mLastEntry = new Pair<>(Long.valueOf(this.mCurrentTimeMs), this.mListIterator.next());
                this.mLastListIterator = this.mListIterator;
                if (!this.mListIterator.hasNext()) {
                    nextKey();
                }
                return this.mLastEntry;
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.mLastListIterator == null || ((Cue) this.mLastEntry.second).mEndTimeMs != ((Long) this.mLastEntry.first).longValue()) {
                    throw new IllegalStateException("");
                }
                this.mLastListIterator.remove();
                this.mLastListIterator = null;
                if (((Vector) CueList.this.mCues.get(this.mLastEntry.first)).size() == 0) {
                    CueList.this.mCues.remove(this.mLastEntry.first);
                }
                Cue cue = (Cue) this.mLastEntry.second;
                CueList.this.removeEvent(cue, cue.mStartTimeMs);
                if (cue.mInnerTimesMs != null) {
                    for (long j : cue.mInnerTimesMs) {
                        CueList.this.removeEvent(cue, j);
                    }
                }
            }

            public EntryIterator(SortedMap<Long, Vector<Cue>> sortedMap) {
                if (CueList.this.DEBUG) {
                    Log.v(CueList.TAG, sortedMap + "");
                }
                this.mRemainingCues = sortedMap;
                this.mLastListIterator = null;
                nextKey();
            }

            private void nextKey() {
                while (this.mRemainingCues != null) {
                    try {
                        this.mCurrentTimeMs = this.mRemainingCues.firstKey().longValue();
                        this.mListIterator = this.mRemainingCues.get(Long.valueOf(this.mCurrentTimeMs)).iterator();
                        try {
                            this.mRemainingCues = this.mRemainingCues.tailMap(Long.valueOf(this.mCurrentTimeMs + 1));
                        } catch (IllegalArgumentException unused) {
                            this.mRemainingCues = null;
                        }
                        this.mDone = false;
                        if (this.mListIterator.hasNext()) {
                            return;
                        }
                    } catch (NoSuchElementException unused2) {
                        this.mDone = true;
                        this.mRemainingCues = null;
                        this.mListIterator = null;
                        return;
                    }
                }
                throw new NoSuchElementException("");
            }
        }

        CueList() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finishedRun(long j) {
        Run run;
        if (j == 0 || j == -1 || (run = this.mRunsByID.get(j)) == null) {
            return;
        }
        run.storeByEndTimeMs(this.mRunsByEndTime);
    }

    public void setRunDiscardTimeMs(long j, long j2) {
        Run run;
        if (j == 0 || j == -1 || (run = this.mRunsByID.get(j)) == null) {
            return;
        }
        run.mEndTimeMs = j2;
        run.storeByEndTimeMs(this.mRunsByEndTime);
    }

    public int getTrackType() {
        return getRenderingWidget() == null ? 3 : 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Run {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public long mEndTimeMs;
        public Cue mFirstCue;
        public Run mNextRunAtEndTimeMs;
        public Run mPrevRunAtEndTimeMs;
        public long mRunID;
        private long mStoredEndTimeMs;

        private Run() {
            this.mEndTimeMs = -1L;
            this.mRunID = 0L;
            this.mStoredEndTimeMs = -1L;
        }

        public void storeByEndTimeMs(LongSparseArray<Run> longSparseArray) {
            int indexOfKey = longSparseArray.indexOfKey(this.mStoredEndTimeMs);
            if (indexOfKey >= 0) {
                if (this.mPrevRunAtEndTimeMs == null) {
                    if (this.mNextRunAtEndTimeMs == null) {
                        longSparseArray.removeAt(indexOfKey);
                    } else {
                        longSparseArray.setValueAt(indexOfKey, this.mNextRunAtEndTimeMs);
                    }
                }
                removeAtEndTimeMs();
            }
            if (this.mEndTimeMs >= 0) {
                this.mPrevRunAtEndTimeMs = null;
                this.mNextRunAtEndTimeMs = longSparseArray.get(this.mEndTimeMs);
                if (this.mNextRunAtEndTimeMs != null) {
                    this.mNextRunAtEndTimeMs.mPrevRunAtEndTimeMs = this;
                }
                longSparseArray.put(this.mEndTimeMs, this);
                this.mStoredEndTimeMs = this.mEndTimeMs;
            }
        }

        public void removeAtEndTimeMs() {
            Run run = this.mPrevRunAtEndTimeMs;
            if (this.mPrevRunAtEndTimeMs != null) {
                this.mPrevRunAtEndTimeMs.mNextRunAtEndTimeMs = this.mNextRunAtEndTimeMs;
                this.mPrevRunAtEndTimeMs = null;
            }
            if (this.mNextRunAtEndTimeMs != null) {
                this.mNextRunAtEndTimeMs.mPrevRunAtEndTimeMs = run;
                this.mNextRunAtEndTimeMs = null;
            }
        }
    }
}
