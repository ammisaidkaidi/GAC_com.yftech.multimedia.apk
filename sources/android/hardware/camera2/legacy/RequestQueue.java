package android.hardware.camera2.legacy;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.utils.SubmitInfo;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class RequestQueue {
    private static final long INVALID_FRAME = -1;
    private static final String TAG = "RequestQueue";
    private final List<Long> mJpegSurfaceIds;
    private BurstHolder mRepeatingRequest = null;
    private final ArrayDeque<BurstHolder> mRequestQueue = new ArrayDeque<>();
    private long mCurrentFrameNumber = 0;
    private long mCurrentRepeatingFrameNumber = -1;
    private int mCurrentRequestId = 0;

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class RequestQueueEntry {
        private final BurstHolder mBurstHolder;
        private final Long mFrameNumber;
        private final boolean mQueueEmpty;

        public BurstHolder getBurstHolder() {
            return this.mBurstHolder;
        }

        public Long getFrameNumber() {
            return this.mFrameNumber;
        }

        public boolean isQueueEmpty() {
            return this.mQueueEmpty;
        }

        public RequestQueueEntry(BurstHolder burstHolder, Long l, boolean z) {
            this.mBurstHolder = burstHolder;
            this.mFrameNumber = l;
            this.mQueueEmpty = z;
        }
    }

    public RequestQueue(List<Long> list) {
        this.mJpegSurfaceIds = list;
    }

    public synchronized RequestQueueEntry getNext() {
        BurstHolder poll = this.mRequestQueue.poll();
        boolean z = poll != null && this.mRequestQueue.size() == 0;
        if (poll == null && this.mRepeatingRequest != null) {
            poll = this.mRepeatingRequest;
            this.mCurrentRepeatingFrameNumber = this.mCurrentFrameNumber + poll.getNumberOfRequests();
        }
        if (poll == null) {
            return null;
        }
        RequestQueueEntry requestQueueEntry = new RequestQueueEntry(poll, Long.valueOf(this.mCurrentFrameNumber), z);
        this.mCurrentFrameNumber += poll.getNumberOfRequests();
        return requestQueueEntry;
    }

    public synchronized long stopRepeating(int i) {
        long j;
        j = -1;
        if (this.mRepeatingRequest != null && this.mRepeatingRequest.getRequestId() == i) {
            this.mRepeatingRequest = null;
            long j2 = this.mCurrentRepeatingFrameNumber == -1 ? -1L : this.mCurrentRepeatingFrameNumber - 1;
            this.mCurrentRepeatingFrameNumber = -1L;
            Log.i(TAG, "Repeating capture request cancelled.");
            j = j2;
        } else {
            Log.e(TAG, "cancel failed: no repeating request exists for request id: " + i);
        }
        return j;
    }

    public synchronized long stopRepeating() {
        if (this.mRepeatingRequest == null) {
            Log.e(TAG, "cancel failed: no repeating request exists.");
            return -1L;
        }
        return stopRepeating(this.mRepeatingRequest.getRequestId());
    }

    public synchronized SubmitInfo submit(CaptureRequest[] captureRequestArr, boolean z) {
        int i;
        long calculateLastFrame;
        i = this.mCurrentRequestId;
        this.mCurrentRequestId = i + 1;
        BurstHolder burstHolder = new BurstHolder(i, z, captureRequestArr, this.mJpegSurfaceIds);
        if (burstHolder.isRepeating()) {
            Log.i(TAG, "Repeating capture request set.");
            if (this.mRepeatingRequest != null && this.mCurrentRepeatingFrameNumber != -1) {
                calculateLastFrame = this.mCurrentRepeatingFrameNumber - 1;
                this.mCurrentRepeatingFrameNumber = -1L;
                this.mRepeatingRequest = burstHolder;
            }
            calculateLastFrame = -1;
            this.mCurrentRepeatingFrameNumber = -1L;
            this.mRepeatingRequest = burstHolder;
        } else {
            this.mRequestQueue.offer(burstHolder);
            calculateLastFrame = calculateLastFrame(burstHolder.getRequestId());
        }
        return new SubmitInfo(i, calculateLastFrame);
    }

    private long calculateLastFrame(int i) {
        long j = this.mCurrentFrameNumber;
        Iterator<BurstHolder> it = this.mRequestQueue.iterator();
        while (it.hasNext()) {
            j += r2.getNumberOfRequests();
            if (it.next().getRequestId() == i) {
                return j - 1;
            }
        }
        throw new IllegalStateException("At least one request must be in the queue to calculate frame number");
    }
}
