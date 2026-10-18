package android.hardware.camera2.legacy;

import android.hardware.camera2.legacy.LegacyExceptionUtils;
import android.util.Log;
import android.util.MutableLong;
import android.util.Pair;
import android.view.Surface;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: /home/user/work/dex/classes.dex */
public class CaptureCollector {
    private static final boolean DEBUG = false;
    private static final int FLAG_RECEIVED_ALL_JPEG = 3;
    private static final int FLAG_RECEIVED_ALL_PREVIEW = 12;
    private static final int FLAG_RECEIVED_JPEG = 1;
    private static final int FLAG_RECEIVED_JPEG_TS = 2;
    private static final int FLAG_RECEIVED_PREVIEW = 4;
    private static final int FLAG_RECEIVED_PREVIEW_TS = 8;
    private static final int MAX_JPEGS_IN_FLIGHT = 1;
    private static final String TAG = "CaptureCollector";
    private final CameraDeviceState mDeviceState;
    private final int mMaxInFlight;
    private final ArrayDeque<CaptureHolder> mPreviewCaptureQueue;
    private final ArrayDeque<CaptureHolder> mPreviewProduceQueue;
    private final ArrayList<CaptureHolder> mCompletedRequests = new ArrayList<>();
    private final ReentrantLock mLock = new ReentrantLock();
    private int mInFlight = 0;
    private int mInFlightPreviews = 0;
    private final ArrayDeque<CaptureHolder> mJpegCaptureQueue = new ArrayDeque<>(1);
    private final ArrayDeque<CaptureHolder> mJpegProduceQueue = new ArrayDeque<>(1);
    private final TreeSet<CaptureHolder> mActiveRequests = new TreeSet<>();
    private final Condition mIsEmpty = this.mLock.newCondition();
    private final Condition mNotFull = this.mLock.newCondition();
    private final Condition mPreviewsEmpty = this.mLock.newCondition();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class CaptureHolder implements Comparable<CaptureHolder> {
        private final LegacyRequest mLegacy;
        private final RequestHolder mRequest;
        public final boolean needsJpeg;
        public final boolean needsPreview;
        private long mTimestamp = 0;
        private int mReceivedFlags = 0;
        private boolean mHasStarted = false;
        private boolean mFailedJpeg = false;
        private boolean mFailedPreview = false;
        private boolean mCompleted = false;
        private boolean mPreviewCompleted = false;

        public CaptureHolder(RequestHolder requestHolder, LegacyRequest legacyRequest) {
            this.mRequest = requestHolder;
            this.mLegacy = legacyRequest;
            this.needsJpeg = requestHolder.hasJpegTargets();
            this.needsPreview = requestHolder.hasPreviewTargets();
        }

        public boolean isPreviewCompleted() {
            return (this.mReceivedFlags & 12) == 12;
        }

        public boolean isJpegCompleted() {
            return (this.mReceivedFlags & 3) == 3;
        }

        public boolean isCompleted() {
            return this.needsJpeg == isJpegCompleted() && this.needsPreview == isPreviewCompleted();
        }

        public void tryComplete() {
            if (!this.mPreviewCompleted && this.needsPreview && isPreviewCompleted()) {
                CaptureCollector.this.onPreviewCompleted();
                this.mPreviewCompleted = true;
            }
            if (!isCompleted() || this.mCompleted) {
                return;
            }
            if (this.mFailedPreview || this.mFailedJpeg) {
                if (!this.mHasStarted) {
                    this.mRequest.failRequest();
                    CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, 3);
                } else {
                    for (Surface surface : this.mRequest.getRequest().getTargets()) {
                        try {
                            if (this.mRequest.jpegType(surface)) {
                                if (this.mFailedJpeg) {
                                    CaptureCollector.this.mDeviceState.setCaptureResult(this.mRequest, null, 5, surface);
                                }
                            } else if (this.mFailedPreview) {
                                CaptureCollector.this.mDeviceState.setCaptureResult(this.mRequest, null, 5, surface);
                            }
                        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e) {
                            Log.e(CaptureCollector.TAG, "Unexpected exception when querying Surface: " + e);
                        }
                    }
                }
            }
            CaptureCollector.this.onRequestCompleted(this);
            this.mCompleted = true;
        }

        public void setJpegTimestamp(long j) {
            if (!this.needsJpeg) {
                throw new IllegalStateException("setJpegTimestamp called for capture with no jpeg targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setJpegTimestamp called on already completed request.");
            }
            this.mReceivedFlags |= 2;
            if (this.mTimestamp == 0) {
                this.mTimestamp = j;
            }
            if (!this.mHasStarted) {
                this.mHasStarted = true;
                CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, -1);
            }
            tryComplete();
        }

        public void setJpegProduced() {
            if (!this.needsJpeg) {
                throw new IllegalStateException("setJpegProduced called for capture with no jpeg targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setJpegProduced called on already completed request.");
            }
            this.mReceivedFlags |= 1;
            tryComplete();
        }

        public void setJpegFailed() {
            if (!this.needsJpeg || isJpegCompleted()) {
                return;
            }
            this.mFailedJpeg = true;
            this.mReceivedFlags = 1 | this.mReceivedFlags;
            this.mReceivedFlags |= 2;
            tryComplete();
        }

        public void setPreviewTimestamp(long j) {
            if (!this.needsPreview) {
                throw new IllegalStateException("setPreviewTimestamp called for capture with no preview targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setPreviewTimestamp called on already completed request.");
            }
            this.mReceivedFlags |= 8;
            if (this.mTimestamp == 0) {
                this.mTimestamp = j;
            }
            if (!this.needsJpeg && !this.mHasStarted) {
                this.mHasStarted = true;
                CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, -1);
            }
            tryComplete();
        }

        public void setPreviewProduced() {
            if (!this.needsPreview) {
                throw new IllegalStateException("setPreviewProduced called for capture with no preview targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setPreviewProduced called on already completed request.");
            }
            this.mReceivedFlags |= 4;
            tryComplete();
        }

        public void setPreviewFailed() {
            if (!this.needsPreview || isPreviewCompleted()) {
                return;
            }
            this.mFailedPreview = true;
            this.mReceivedFlags |= 4;
            this.mReceivedFlags |= 8;
            tryComplete();
        }

        @Override // java.lang.Comparable
        public int compareTo(CaptureHolder captureHolder) {
            if (this.mRequest.getFrameNumber() > captureHolder.mRequest.getFrameNumber()) {
                return 1;
            }
            return this.mRequest.getFrameNumber() == captureHolder.mRequest.getFrameNumber() ? 0 : -1;
        }

        public boolean equals(Object obj) {
            return (obj instanceof CaptureHolder) && compareTo((CaptureHolder) obj) == 0;
        }
    }

    public CaptureCollector(int i, CameraDeviceState cameraDeviceState) {
        this.mMaxInFlight = i;
        this.mPreviewCaptureQueue = new ArrayDeque<>(this.mMaxInFlight);
        this.mPreviewProduceQueue = new ArrayDeque<>(this.mMaxInFlight);
        this.mDeviceState = cameraDeviceState;
    }

    public boolean queueRequest(RequestHolder requestHolder, LegacyRequest legacyRequest, long j, TimeUnit timeUnit) throws InterruptedException {
        CaptureHolder captureHolder = new CaptureHolder(requestHolder, legacyRequest);
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            if (!captureHolder.needsJpeg && !captureHolder.needsPreview) {
                throw new IllegalStateException("Request must target at least one output surface!");
            }
            if (captureHolder.needsJpeg) {
                while (this.mInFlight > 0) {
                    if (nanos <= 0) {
                        return false;
                    }
                    nanos = this.mIsEmpty.awaitNanos(nanos);
                }
                this.mJpegCaptureQueue.add(captureHolder);
                this.mJpegProduceQueue.add(captureHolder);
            }
            if (captureHolder.needsPreview) {
                while (this.mInFlight >= this.mMaxInFlight) {
                    if (nanos <= 0) {
                        return false;
                    }
                    nanos = this.mNotFull.awaitNanos(nanos);
                }
                this.mPreviewCaptureQueue.add(captureHolder);
                this.mPreviewProduceQueue.add(captureHolder);
                this.mInFlightPreviews++;
            }
            this.mActiveRequests.add(captureHolder);
            this.mInFlight++;
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean waitForEmpty(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (this.mInFlight > 0) {
            try {
                if (nanos > 0) {
                    nanos = this.mIsEmpty.awaitNanos(nanos);
                } else {
                    return false;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        return true;
    }

    public boolean waitForPreviewsEmpty(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (this.mInFlightPreviews > 0) {
            try {
                if (nanos > 0) {
                    nanos = this.mPreviewsEmpty.awaitNanos(nanos);
                } else {
                    return false;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        return true;
    }

    public boolean waitForRequestCompleted(RequestHolder requestHolder, long j, TimeUnit timeUnit, MutableLong mutableLong) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (!removeRequestIfCompleted(requestHolder, mutableLong)) {
            try {
                if (nanos > 0) {
                    nanos = this.mNotFull.awaitNanos(nanos);
                } else {
                    return false;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        return true;
    }

    private boolean removeRequestIfCompleted(RequestHolder requestHolder, MutableLong mutableLong) {
        Iterator<CaptureHolder> it = this.mCompletedRequests.iterator();
        int i = 0;
        while (it.hasNext()) {
            CaptureHolder next = it.next();
            if (next.mRequest.equals(requestHolder)) {
                mutableLong.value = next.mTimestamp;
                this.mCompletedRequests.remove(i);
                return true;
            }
            i++;
        }
        return false;
    }

    public RequestHolder jpegCaptured(long j) {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder poll = this.mJpegCaptureQueue.poll();
            if (poll == null) {
                Log.w(TAG, "jpegCaptured called with no jpeg request on queue!");
                return null;
            }
            poll.setJpegTimestamp(j);
            return poll.mRequest;
        } finally {
            reentrantLock.unlock();
        }
    }

    public Pair<RequestHolder, Long> jpegProduced() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder poll = this.mJpegProduceQueue.poll();
            if (poll == null) {
                Log.w(TAG, "jpegProduced called with no jpeg request on queue!");
                return null;
            }
            poll.setJpegProduced();
            return new Pair<>(poll.mRequest, Long.valueOf(poll.mTimestamp));
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean hasPendingPreviewCaptures() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            return !this.mPreviewCaptureQueue.isEmpty();
        } finally {
            reentrantLock.unlock();
        }
    }

    public Pair<RequestHolder, Long> previewCaptured(long j) {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder poll = this.mPreviewCaptureQueue.poll();
            if (poll != null) {
                poll.setPreviewTimestamp(j);
                return new Pair<>(poll.mRequest, Long.valueOf(poll.mTimestamp));
            }
            return null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public RequestHolder previewProduced() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder poll = this.mPreviewProduceQueue.poll();
            if (poll == null) {
                Log.w(TAG, "previewProduced called with no preview request on queue!");
                return null;
            }
            poll.setPreviewProduced();
            return poll.mRequest;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0025 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #0 {all -> 0x003b, blocks: (B:3:0x0005, B:8:0x0025, B:15:0x001b), top: B:2:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void failNextPreview() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder peek = this.mPreviewCaptureQueue.peek();
            CaptureHolder peek2 = this.mPreviewProduceQueue.peek();
            if (peek != null) {
                if (peek2 != null) {
                    if (peek.compareTo(peek2) <= 0) {
                    }
                }
                if (peek != null) {
                    this.mPreviewCaptureQueue.remove(peek);
                    this.mPreviewProduceQueue.remove(peek);
                    this.mActiveRequests.remove(peek);
                    peek.setPreviewFailed();
                }
            }
            peek = peek2;
            if (peek != null) {
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0025 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #0 {all -> 0x003b, blocks: (B:3:0x0005, B:8:0x0025, B:15:0x001b), top: B:2:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void failNextJpeg() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder peek = this.mJpegCaptureQueue.peek();
            CaptureHolder peek2 = this.mJpegProduceQueue.peek();
            if (peek != null) {
                if (peek2 != null) {
                    if (peek.compareTo(peek2) <= 0) {
                    }
                }
                if (peek != null) {
                    this.mJpegCaptureQueue.remove(peek);
                    this.mJpegProduceQueue.remove(peek);
                    this.mActiveRequests.remove(peek);
                    peek.setJpegFailed();
                }
            }
            peek = peek2;
            if (peek != null) {
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public void failAll() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (true) {
            try {
                CaptureHolder pollFirst = this.mActiveRequests.pollFirst();
                if (pollFirst != null) {
                    pollFirst.setPreviewFailed();
                    pollFirst.setJpegFailed();
                } else {
                    this.mPreviewCaptureQueue.clear();
                    this.mPreviewProduceQueue.clear();
                    this.mJpegCaptureQueue.clear();
                    this.mJpegProduceQueue.clear();
                    return;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewCompleted() {
        this.mInFlightPreviews--;
        if (this.mInFlightPreviews < 0) {
            throw new IllegalStateException("More preview captures completed than requests queued.");
        }
        if (this.mInFlightPreviews == 0) {
            this.mPreviewsEmpty.signalAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRequestCompleted(CaptureHolder captureHolder) {
        RequestHolder unused = captureHolder.mRequest;
        this.mInFlight--;
        if (this.mInFlight < 0) {
            throw new IllegalStateException("More captures completed than requests queued.");
        }
        this.mCompletedRequests.add(captureHolder);
        this.mActiveRequests.remove(captureHolder);
        this.mNotFull.signalAll();
        if (this.mInFlight == 0) {
            this.mIsEmpty.signalAll();
        }
    }
}
