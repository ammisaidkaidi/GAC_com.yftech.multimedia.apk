package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.logging.FLog;
import com.facebook.common.time.MonotonicClock;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.producers.FetchState;
import com.facebook.imagepipeline.producers.NetworkFetcher;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PriorityNetworkFetcher<FETCH_STATE extends FetchState> implements NetworkFetcher<PriorityFetchState<FETCH_STATE>> {
    public static final String TAG = "PriorityNetworkFetcher";
    private final boolean infiniteRetries;
    private final boolean inflightFetchesCanBeCancelled;
    private volatile boolean isRunning;
    private final MonotonicClock mClock;
    private final HashSet<PriorityFetchState<FETCH_STATE>> mCurrentlyFetching;
    private final NetworkFetcher<FETCH_STATE> mDelegate;
    private final LinkedList<PriorityFetchState<FETCH_STATE>> mHiPriQueue;
    private final boolean mIsHiPriFifo;
    private final Object mLock;
    private final LinkedList<PriorityFetchState<FETCH_STATE>> mLowPriQueue;
    private final int mMaxOutstandingHiPri;
    private final int mMaxOutstandingLowPri;

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public /* bridge */ /* synthetic */ FetchState createFetchState(Consumer consumer, ProducerContext producerContext) {
        return createFetchState((Consumer<EncodedImage>) consumer, producerContext);
    }

    public PriorityNetworkFetcher(NetworkFetcher<FETCH_STATE> networkFetcher, boolean z, int i, int i2, boolean z2, boolean z3) {
        this(networkFetcher, z, i, i2, z2, z3, RealtimeSinceBootClock.get());
    }

    @VisibleForTesting
    public PriorityNetworkFetcher(NetworkFetcher<FETCH_STATE> networkFetcher, boolean z, int i, int i2, boolean z2, boolean z3, MonotonicClock monotonicClock) {
        this.mLock = new Object();
        this.mHiPriQueue = new LinkedList<>();
        this.mLowPriQueue = new LinkedList<>();
        this.mCurrentlyFetching = new HashSet<>();
        this.isRunning = true;
        this.mDelegate = networkFetcher;
        this.mIsHiPriFifo = z;
        this.mMaxOutstandingHiPri = i;
        this.mMaxOutstandingLowPri = i2;
        if (i <= i2) {
            throw new IllegalArgumentException("maxOutstandingHiPri should be > maxOutstandingLowPri");
        }
        this.inflightFetchesCanBeCancelled = z2;
        this.infiniteRetries = z3;
        this.mClock = monotonicClock;
    }

    public void pause() {
        this.isRunning = false;
    }

    public void resume() {
        this.isRunning = true;
        dequeueIfAvailableSlots();
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public void fetch(final PriorityFetchState<FETCH_STATE> priorityFetchState, final NetworkFetcher.Callback callback) {
        priorityFetchState.getContext().addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.PriorityNetworkFetcher.1
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                if (PriorityNetworkFetcher.this.inflightFetchesCanBeCancelled || !PriorityNetworkFetcher.this.mCurrentlyFetching.contains(priorityFetchState)) {
                    PriorityNetworkFetcher.this.removeFromQueue(priorityFetchState, "CANCEL");
                    callback.onCancellation();
                }
            }

            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onPriorityChanged() {
                PriorityNetworkFetcher.this.changePriority(priorityFetchState, priorityFetchState.getContext().getPriority() == Priority.HIGH);
            }
        });
        synchronized (this.mLock) {
            if (this.mCurrentlyFetching.contains(priorityFetchState)) {
                FLog.e(TAG, "fetch state was enqueued twice: " + priorityFetchState);
                return;
            }
            boolean z = priorityFetchState.getContext().getPriority() == Priority.HIGH;
            FLog.v(TAG, "enqueue: %s %s", z ? "HI-PRI" : "LOW-PRI", priorityFetchState.getUri());
            priorityFetchState.callback = callback;
            putInQueue(priorityFetchState, z);
            dequeueIfAvailableSlots();
        }
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public void onFetchCompletion(PriorityFetchState<FETCH_STATE> priorityFetchState, int i) {
        removeFromQueue(priorityFetchState, "SUCCESS");
        this.mDelegate.onFetchCompletion(priorityFetchState.delegatedState, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromQueue(PriorityFetchState<FETCH_STATE> priorityFetchState, String str) {
        synchronized (this.mLock) {
            FLog.v(TAG, "remove: %s %s", str, priorityFetchState.getUri());
            this.mCurrentlyFetching.remove(priorityFetchState);
            if (!this.mHiPriQueue.remove(priorityFetchState)) {
                this.mLowPriQueue.remove(priorityFetchState);
            }
        }
        dequeueIfAvailableSlots();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requeue(PriorityFetchState<FETCH_STATE> priorityFetchState) {
        synchronized (this.mLock) {
            FLog.v(TAG, "requeue: %s", priorityFetchState.getUri());
            boolean z = true;
            priorityFetchState.requeueCount++;
            priorityFetchState.delegatedState = this.mDelegate.createFetchState(priorityFetchState.getConsumer(), priorityFetchState.getContext());
            this.mCurrentlyFetching.remove(priorityFetchState);
            if (!this.mHiPriQueue.remove(priorityFetchState)) {
                this.mLowPriQueue.remove(priorityFetchState);
            }
            if (priorityFetchState.getContext().getPriority() != Priority.HIGH) {
                z = false;
            }
            putInQueue(priorityFetchState, z);
        }
        dequeueIfAvailableSlots();
    }

    private void dequeueIfAvailableSlots() {
        if (this.isRunning) {
            synchronized (this.mLock) {
                int size = this.mCurrentlyFetching.size();
                PriorityFetchState<FETCH_STATE> pollFirst = size < this.mMaxOutstandingHiPri ? this.mHiPriQueue.pollFirst() : null;
                if (pollFirst == null && size < this.mMaxOutstandingLowPri) {
                    pollFirst = this.mLowPriQueue.pollFirst();
                }
                if (pollFirst == null) {
                    return;
                }
                pollFirst.dequeuedTimestamp = this.mClock.now();
                this.mCurrentlyFetching.add(pollFirst);
                FLog.v(TAG, "fetching: %s (concurrent: %s hi-pri queue: %s low-pri queue: %s)", pollFirst.getUri(), Integer.valueOf(size), Integer.valueOf(this.mHiPriQueue.size()), Integer.valueOf(this.mLowPriQueue.size()));
                delegateFetch(pollFirst);
            }
        }
    }

    private void delegateFetch(final PriorityFetchState<FETCH_STATE> priorityFetchState) {
        try {
            this.mDelegate.fetch(priorityFetchState.delegatedState, new NetworkFetcher.Callback() { // from class: com.facebook.imagepipeline.producers.PriorityNetworkFetcher.2
                @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
                public void onResponse(InputStream inputStream, int i) throws IOException {
                    priorityFetchState.callback.onResponse(inputStream, i);
                }

                @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
                public void onFailure(Throwable th) {
                    if (!PriorityNetworkFetcher.this.infiniteRetries || (th instanceof NonrecoverableException)) {
                        PriorityNetworkFetcher.this.removeFromQueue(priorityFetchState, "FAIL");
                        priorityFetchState.callback.onFailure(th);
                    } else {
                        PriorityNetworkFetcher.this.requeue(priorityFetchState);
                    }
                }

                @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
                public void onCancellation() {
                    PriorityNetworkFetcher.this.removeFromQueue(priorityFetchState, "CANCEL");
                    priorityFetchState.callback.onCancellation();
                }
            });
        } catch (Exception unused) {
            removeFromQueue(priorityFetchState, "FAIL");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePriority(PriorityFetchState<FETCH_STATE> priorityFetchState, boolean z) {
        synchronized (this.mLock) {
            try {
                if ((z ? this.mLowPriQueue : this.mHiPriQueue).remove(priorityFetchState)) {
                    FLog.v(TAG, "change-pri: %s %s", z ? "HIPRI" : "LOWPRI", priorityFetchState.getUri());
                    priorityFetchState.priorityChangedCount++;
                    putInQueue(priorityFetchState, z);
                    dequeueIfAvailableSlots();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void putInQueue(PriorityFetchState<FETCH_STATE> priorityFetchState, boolean z) {
        if (z) {
            if (this.mIsHiPriFifo) {
                this.mHiPriQueue.addLast(priorityFetchState);
                return;
            } else {
                this.mHiPriQueue.addFirst(priorityFetchState);
                return;
            }
        }
        this.mLowPriQueue.addLast(priorityFetchState);
    }

    @VisibleForTesting
    List<PriorityFetchState<FETCH_STATE>> getHiPriQueue() {
        return this.mHiPriQueue;
    }

    @VisibleForTesting
    List<PriorityFetchState<FETCH_STATE>> getLowPriQueue() {
        return this.mLowPriQueue;
    }

    @VisibleForTesting
    HashSet<PriorityFetchState<FETCH_STATE>> getCurrentlyFetching() {
        return this.mCurrentlyFetching;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class PriorityFetchState<FETCH_STATE extends FetchState> extends FetchState {

        @Nullable
        NetworkFetcher.Callback callback;
        final int currentlyFetchingCountWhenCreated;
        public FETCH_STATE delegatedState;
        long dequeuedTimestamp;
        final long enqueuedTimestamp;
        final int hiPriCountWhenCreated;
        final boolean isInitialPriorityHigh;
        final int lowPriCountWhenCreated;
        int priorityChangedCount;
        int requeueCount;

        private PriorityFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext, FETCH_STATE fetch_state, long j, int i, int i2, int i3) {
            super(consumer, producerContext);
            this.requeueCount = 0;
            this.priorityChangedCount = 0;
            this.delegatedState = fetch_state;
            this.enqueuedTimestamp = j;
            this.hiPriCountWhenCreated = i;
            this.lowPriCountWhenCreated = i2;
            this.isInitialPriorityHigh = producerContext.getPriority() == Priority.HIGH;
            this.currentlyFetchingCountWhenCreated = i3;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class NonrecoverableException extends Throwable {
        public NonrecoverableException(@androidx.annotation.Nullable String str) {
            super(str);
        }
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public PriorityFetchState<FETCH_STATE> createFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        return new PriorityFetchState<>(consumer, producerContext, this.mDelegate.createFetchState(consumer, producerContext), this.mClock.now(), this.mHiPriQueue.size(), this.mLowPriQueue.size(), this.mCurrentlyFetching.size());
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public boolean shouldPropagate(PriorityFetchState<FETCH_STATE> priorityFetchState) {
        return this.mDelegate.shouldPropagate(priorityFetchState.delegatedState);
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    @Nullable
    public Map<String, String> getExtraMap(PriorityFetchState<FETCH_STATE> priorityFetchState, int i) {
        Map<String, String> extraMap = this.mDelegate.getExtraMap(priorityFetchState.delegatedState, i);
        HashMap hashMap = extraMap != null ? new HashMap(extraMap) : new HashMap();
        hashMap.put("pri_queue_time", "" + (priorityFetchState.dequeuedTimestamp - priorityFetchState.enqueuedTimestamp));
        hashMap.put("hipri_queue_size", "" + priorityFetchState.hiPriCountWhenCreated);
        hashMap.put("lowpri_queue_size", "" + priorityFetchState.lowPriCountWhenCreated);
        hashMap.put("requeueCount", "" + priorityFetchState.requeueCount);
        hashMap.put("priority_changed_count", "" + priorityFetchState.priorityChangedCount);
        hashMap.put("request_initial_priority_is_high", "" + priorityFetchState.isInitialPriorityHigh);
        hashMap.put("currently_fetching_size", "" + priorityFetchState.currentlyFetchingCountWhenCreated);
        return hashMap;
    }
}
