package com.android.internal.midi;

import com.facebook.common.time.Clock;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: /home/user/work/dex/classes3.dex */
public class EventScheduler {
    private static final long NANOS_PER_MILLI = 1000000;
    private boolean mClosed;
    private final Object mLock = new Object();
    private FastEventQueue mEventPool = null;
    private int mMaxPoolSize = 200;
    private volatile SortedMap<Long, FastEventQueue> mEventBuffer = new TreeMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class FastEventQueue {
        volatile long mEventsAdded = 1;
        volatile long mEventsRemoved = 0;
        volatile SchedulableEvent mFirst;
        volatile SchedulableEvent mLast;

        FastEventQueue(SchedulableEvent schedulableEvent) {
            this.mFirst = schedulableEvent;
            this.mLast = this.mFirst;
        }

        int size() {
            return (int) (this.mEventsAdded - this.mEventsRemoved);
        }

        public SchedulableEvent remove() {
            this.mEventsRemoved++;
            SchedulableEvent schedulableEvent = this.mFirst;
            this.mFirst = schedulableEvent.mNext;
            schedulableEvent.mNext = null;
            return schedulableEvent;
        }

        public void add(SchedulableEvent schedulableEvent) {
            schedulableEvent.mNext = null;
            this.mLast.mNext = schedulableEvent;
            this.mLast = schedulableEvent;
            this.mEventsAdded++;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SchedulableEvent {
        private volatile SchedulableEvent mNext = null;
        private long mTimestamp;

        public SchedulableEvent(long j) {
            this.mTimestamp = j;
        }

        public long getTimestamp() {
            return this.mTimestamp;
        }

        public void setTimestamp(long j) {
            this.mTimestamp = j;
        }
    }

    public SchedulableEvent removeEventfromPool() {
        if (this.mEventPool == null || this.mEventPool.size() <= 1) {
            return null;
        }
        return this.mEventPool.remove();
    }

    public void addEventToPool(SchedulableEvent schedulableEvent) {
        if (this.mEventPool == null) {
            this.mEventPool = new FastEventQueue(schedulableEvent);
        } else if (this.mEventPool.size() < this.mMaxPoolSize) {
            this.mEventPool.add(schedulableEvent);
        }
    }

    public void add(SchedulableEvent schedulableEvent) {
        synchronized (this.mLock) {
            FastEventQueue fastEventQueue = this.mEventBuffer.get(Long.valueOf(schedulableEvent.getTimestamp()));
            if (fastEventQueue == null) {
                long longValue = this.mEventBuffer.isEmpty() ? Clock.MAX_TIME : this.mEventBuffer.firstKey().longValue();
                this.mEventBuffer.put(Long.valueOf(schedulableEvent.getTimestamp()), new FastEventQueue(schedulableEvent));
                if (schedulableEvent.getTimestamp() < longValue) {
                    this.mLock.notify();
                }
            } else {
                fastEventQueue.add(schedulableEvent);
            }
        }
    }

    private SchedulableEvent removeNextEventLocked(long j) {
        FastEventQueue fastEventQueue = this.mEventBuffer.get(Long.valueOf(j));
        if (fastEventQueue.size() == 1) {
            this.mEventBuffer.remove(Long.valueOf(j));
        }
        return fastEventQueue.remove();
    }

    public SchedulableEvent getNextEvent(long j) {
        SchedulableEvent removeNextEventLocked;
        synchronized (this.mLock) {
            if (!this.mEventBuffer.isEmpty()) {
                long longValue = this.mEventBuffer.firstKey().longValue();
                removeNextEventLocked = longValue <= j ? removeNextEventLocked(longValue) : null;
            }
        }
        return removeNextEventLocked;
    }

    public SchedulableEvent waitNextEvent() throws InterruptedException {
        SchedulableEvent schedulableEvent;
        synchronized (this.mLock) {
            while (true) {
                if (this.mClosed) {
                    schedulableEvent = null;
                    break;
                }
                long j = 2147483647L;
                if (!this.mEventBuffer.isEmpty()) {
                    long nanoTime = System.nanoTime();
                    long longValue = this.mEventBuffer.firstKey().longValue();
                    if (longValue <= nanoTime) {
                        schedulableEvent = removeNextEventLocked(longValue);
                        break;
                    }
                    long j2 = 1 + ((longValue - nanoTime) / NANOS_PER_MILLI);
                    if (j2 <= 2147483647L) {
                        j = j2;
                    }
                }
                this.mLock.wait((int) j);
            }
        }
        return schedulableEvent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void flush() {
        this.mEventBuffer = new TreeMap();
    }

    public void close() {
        synchronized (this.mLock) {
            this.mClosed = true;
            this.mLock.notify();
        }
    }
}
