package android.util;

import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import java.util.ArrayDeque;
import java.util.Deque;

/* loaded from: /home/user/work/dex/classes2.dex */
public class TimingsTraceLog {
    private static final boolean DEBUG_BOOT_TIME = !Build.IS_USER;
    private final Deque<Pair<String, Long>> mStartTimes;
    private final String mTag;
    private long mThreadId;
    private long mTraceTag;

    public TimingsTraceLog(String str, long j) {
        this.mStartTimes = DEBUG_BOOT_TIME ? new ArrayDeque() : null;
        this.mTag = str;
        this.mTraceTag = j;
        this.mThreadId = Thread.currentThread().getId();
    }

    public void traceBegin(String str) {
        assertSameThread();
        Trace.traceBegin(this.mTraceTag, str);
        if (DEBUG_BOOT_TIME) {
            this.mStartTimes.push(Pair.create(str, Long.valueOf(SystemClock.elapsedRealtime())));
        }
    }

    public void traceEnd() {
        assertSameThread();
        Trace.traceEnd(this.mTraceTag);
        if (DEBUG_BOOT_TIME) {
            if (this.mStartTimes.peek() == null) {
                Slog.w(this.mTag, "traceEnd called more times than traceBegin");
            } else {
                Pair<String, Long> pop = this.mStartTimes.pop();
                logDuration(pop.first, SystemClock.elapsedRealtime() - pop.second.longValue());
            }
        }
    }

    private void assertSameThread() {
        Thread currentThread = Thread.currentThread();
        if (currentThread.getId() == this.mThreadId) {
            return;
        }
        throw new IllegalStateException("Instance of TimingsTraceLog can only be called from the thread it was created on (tid: " + this.mThreadId + "), but was from " + currentThread.getName() + " (tid: " + currentThread.getId() + ")");
    }

    public void logDuration(String str, long j) {
        Slog.d(this.mTag, str + " took to complete: " + j + "ms");
    }
}
