package android.os;

import android.util.Log;
import android.util.Printer;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class Looper {
    private static final String TAG = "Looper";
    private static Looper sMainLooper;
    static final ThreadLocal<Looper> sThreadLocal = new ThreadLocal<>();
    private Printer mLogging;
    final MessageQueue mQueue;
    private long mSlowDeliveryThresholdMs;
    private long mSlowDispatchThresholdMs;
    final Thread mThread = Thread.currentThread();
    private long mTraceTag;

    public static void prepare() {
        prepare(true);
    }

    private static void prepare(boolean z) {
        if (sThreadLocal.get() != null) {
            throw new RuntimeException("Only one Looper may be created per thread");
        }
        sThreadLocal.set(new Looper(z));
    }

    public static void prepareMainLooper() {
        prepare(false);
        synchronized (Looper.class) {
            if (sMainLooper != null) {
                throw new IllegalStateException("The main Looper has already been prepared.");
            }
            sMainLooper = myLooper();
        }
    }

    public static Looper getMainLooper() {
        Looper looper;
        synchronized (Looper.class) {
            looper = sMainLooper;
        }
        return looper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0104, code lost:
    
        if (showSlowLog(r9, r15.when, r24, "delivery", r15) != false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cf A[Catch: all -> 0x0196, TRY_LEAVE, TryCatch #0 {all -> 0x0196, blocks: (B:31:0x00c8, B:33:0x00cf), top: B:30:0x00c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00da A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x018e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void loop() {
        long j;
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        Printer printer;
        long clearCallingIdentity;
        Looper myLooper = myLooper();
        if (myLooper == null) {
            throw new RuntimeException("No Looper; Looper.prepare() wasn't called on this thread.");
        }
        MessageQueue messageQueue = myLooper.mQueue;
        Binder.clearCallingIdentity();
        long clearCallingIdentity2 = Binder.clearCallingIdentity();
        int i = SystemProperties.getInt("log.looper." + Process.myUid() + "." + Thread.currentThread().getName() + ".slow", 0);
        boolean z4 = false;
        while (true) {
            Message next = messageQueue.next();
            if (next == null) {
                return;
            }
            Printer printer2 = myLooper.mLogging;
            if (printer2 != null) {
                printer2.println(">>>>> Dispatching to " + next.target + " " + next.callback + ": " + next.what);
            }
            long j3 = myLooper.mTraceTag;
            long j4 = myLooper.mSlowDispatchThresholdMs;
            long j5 = myLooper.mSlowDeliveryThresholdMs;
            if (i > 0) {
                j2 = i;
                j = j2;
            } else {
                j = j4;
                j2 = j5;
            }
            boolean z5 = true;
            try {
                if (j2 > 0) {
                    z = z4;
                    if (next.when > 0) {
                        z2 = true;
                        z3 = j <= 0;
                        boolean z6 = !z2 || z3;
                        if (j3 != 0 && Trace.isTagEnabled(j3)) {
                            Trace.traceBegin(j3, next.target.getTraceName(next));
                        }
                        long uptimeMillis = !z6 ? SystemClock.uptimeMillis() : 0L;
                        next.target.dispatchMessage(next);
                        long uptimeMillis2 = !z3 ? SystemClock.uptimeMillis() : 0L;
                        if (z2) {
                            if (!z) {
                                printer = printer2;
                            } else if (uptimeMillis - next.when <= 10) {
                                Slog.w(TAG, "Drained");
                                printer = printer2;
                                z5 = false;
                            }
                            if (z3) {
                                showSlowLog(j, uptimeMillis, uptimeMillis2, "dispatch", next);
                            }
                            if (printer != null) {
                                printer.println("<<<<< Finished to " + next.target + " " + next.callback);
                            }
                            clearCallingIdentity = Binder.clearCallingIdentity();
                            if (clearCallingIdentity2 != clearCallingIdentity) {
                                Log.wtf(TAG, "Thread identity changed from 0x" + Long.toHexString(clearCallingIdentity2) + " to 0x" + Long.toHexString(clearCallingIdentity) + " while dispatching to " + next.target.getClass().getName() + " " + next.callback + " what=" + next.what);
                            }
                            next.recycleUnchecked();
                            z4 = z5;
                        }
                        printer = printer2;
                        z5 = z;
                        if (z3) {
                        }
                        if (printer != null) {
                        }
                        clearCallingIdentity = Binder.clearCallingIdentity();
                        if (clearCallingIdentity2 != clearCallingIdentity) {
                        }
                        next.recycleUnchecked();
                        z4 = z5;
                    }
                } else {
                    z = z4;
                }
                next.target.dispatchMessage(next);
                if (!z3) {
                }
                if (z2) {
                }
                printer = printer2;
                z5 = z;
                if (z3) {
                }
                if (printer != null) {
                }
                clearCallingIdentity = Binder.clearCallingIdentity();
                if (clearCallingIdentity2 != clearCallingIdentity) {
                }
                next.recycleUnchecked();
                z4 = z5;
            } finally {
                if (j3 != 0) {
                    Trace.traceEnd(j3);
                }
            }
            z2 = false;
            if (j <= 0) {
            }
            if (z2) {
            }
            if (j3 != 0) {
                Trace.traceBegin(j3, next.target.getTraceName(next));
            }
            if (!z6) {
            }
        }
    }

    private static boolean showSlowLog(long j, long j2, long j3, String str, Message message) {
        long j4 = j3 - j2;
        if (j4 < j) {
            return false;
        }
        Slog.w(TAG, "Slow " + str + " took " + j4 + "ms " + Thread.currentThread().getName() + " h=" + message.target.getClass().getName() + " c=" + message.callback + " m=" + message.what);
        return true;
    }

    public static Looper myLooper() {
        return sThreadLocal.get();
    }

    public static MessageQueue myQueue() {
        return myLooper().mQueue;
    }

    private Looper(boolean z) {
        this.mQueue = new MessageQueue(z);
    }

    public boolean isCurrentThread() {
        return Thread.currentThread() == this.mThread;
    }

    public void setMessageLogging(Printer printer) {
        this.mLogging = printer;
    }

    public void setTraceTag(long j) {
        this.mTraceTag = j;
    }

    public void setSlowLogThresholdMs(long j, long j2) {
        this.mSlowDispatchThresholdMs = j;
        this.mSlowDeliveryThresholdMs = j2;
    }

    public void quit() {
        this.mQueue.quit(false);
    }

    public void quitSafely() {
        this.mQueue.quit(true);
    }

    public Thread getThread() {
        return this.mThread;
    }

    public MessageQueue getQueue() {
        return this.mQueue;
    }

    public void dump(Printer printer, String str) {
        printer.println(str + toString());
        this.mQueue.dump(printer, str + "  ", null);
    }

    public void dump(Printer printer, String str, Handler handler) {
        printer.println(str + toString());
        this.mQueue.dump(printer, str + "  ", handler);
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        protoOutputStream.write(1138166333441L, this.mThread.getName());
        protoOutputStream.write(1112396529666L, this.mThread.getId());
        this.mQueue.writeToProto(protoOutputStream, 1146756268035L);
        protoOutputStream.end(start);
    }

    public String toString() {
        return "Looper (" + this.mThread.getName() + ", tid " + this.mThread.getId() + ") {" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }
}
