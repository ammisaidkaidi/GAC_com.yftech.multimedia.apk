package android.os;

import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import java.io.FileDescriptor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class MessageQueue {
    private static final boolean DEBUG = false;
    private static final String TAG = "MessageQueue";
    private boolean mBlocked;
    private SparseArray<FileDescriptorRecord> mFileDescriptorRecords;
    Message mMessages;
    private int mNextBarrierToken;
    private IdleHandler[] mPendingIdleHandlers;
    private final boolean mQuitAllowed;
    private boolean mQuitting;
    private final ArrayList<IdleHandler> mIdleHandlers = new ArrayList<>();
    private long mPtr = nativeInit();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface IdleHandler {
        boolean queueIdle();
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnFileDescriptorEventListener {
        public static final int EVENT_ERROR = 4;
        public static final int EVENT_INPUT = 1;
        public static final int EVENT_OUTPUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        public @interface Events {
        }

        int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i);
    }

    private static native void nativeDestroy(long j);

    private static native long nativeInit();

    private static native boolean nativeIsPolling(long j);

    private native void nativePollOnce(long j, int i);

    private static native void nativeSetFileDescriptorEvents(long j, int i, int i2);

    private static native void nativeWake(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageQueue(boolean z) {
        this.mQuitAllowed = z;
    }

    protected void finalize() throws Throwable {
        try {
            dispose();
        } finally {
            super.finalize();
        }
    }

    private void dispose() {
        if (this.mPtr != 0) {
            nativeDestroy(this.mPtr);
            this.mPtr = 0L;
        }
    }

    public boolean isIdle() {
        boolean z;
        synchronized (this) {
            z = this.mMessages == null || SystemClock.uptimeMillis() < this.mMessages.when;
        }
        return z;
    }

    public void addIdleHandler(IdleHandler idleHandler) {
        if (idleHandler == null) {
            throw new NullPointerException("Can't add a null IdleHandler");
        }
        synchronized (this) {
            this.mIdleHandlers.add(idleHandler);
        }
    }

    public void removeIdleHandler(IdleHandler idleHandler) {
        synchronized (this) {
            this.mIdleHandlers.remove(idleHandler);
        }
    }

    public boolean isPolling() {
        boolean isPollingLocked;
        synchronized (this) {
            isPollingLocked = isPollingLocked();
        }
        return isPollingLocked;
    }

    private boolean isPollingLocked() {
        return !this.mQuitting && nativeIsPolling(this.mPtr);
    }

    public void addOnFileDescriptorEventListener(FileDescriptor fileDescriptor, int i, OnFileDescriptorEventListener onFileDescriptorEventListener) {
        if (fileDescriptor == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        if (onFileDescriptorEventListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fileDescriptor, i, onFileDescriptorEventListener);
        }
    }

    public void removeOnFileDescriptorEventListener(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fileDescriptor, 0, null);
        }
    }

    private void updateOnFileDescriptorEventListenerLocked(FileDescriptor fileDescriptor, int i, OnFileDescriptorEventListener onFileDescriptorEventListener) {
        int i2;
        int int$ = fileDescriptor.getInt$();
        FileDescriptorRecord fileDescriptorRecord = null;
        if (this.mFileDescriptorRecords != null) {
            i2 = this.mFileDescriptorRecords.indexOfKey(int$);
            if (i2 >= 0 && (fileDescriptorRecord = this.mFileDescriptorRecords.valueAt(i2)) != null && fileDescriptorRecord.mEvents == i) {
                return;
            }
        } else {
            i2 = -1;
        }
        if (i == 0) {
            if (fileDescriptorRecord != null) {
                fileDescriptorRecord.mEvents = 0;
                this.mFileDescriptorRecords.removeAt(i2);
                nativeSetFileDescriptorEvents(this.mPtr, int$, 0);
                return;
            }
            return;
        }
        int i3 = i | 4;
        if (fileDescriptorRecord == null) {
            if (this.mFileDescriptorRecords == null) {
                this.mFileDescriptorRecords = new SparseArray<>();
            }
            this.mFileDescriptorRecords.put(int$, new FileDescriptorRecord(fileDescriptor, i3, onFileDescriptorEventListener));
        } else {
            fileDescriptorRecord.mListener = onFileDescriptorEventListener;
            fileDescriptorRecord.mEvents = i3;
            fileDescriptorRecord.mSeq++;
        }
        nativeSetFileDescriptorEvents(this.mPtr, int$, i3);
    }

    private int dispatchEvents(int i, int i2) {
        synchronized (this) {
            FileDescriptorRecord fileDescriptorRecord = this.mFileDescriptorRecords.get(i);
            if (fileDescriptorRecord == null) {
                return 0;
            }
            int i3 = fileDescriptorRecord.mEvents;
            int i4 = i2 & i3;
            if (i4 == 0) {
                return i3;
            }
            OnFileDescriptorEventListener onFileDescriptorEventListener = fileDescriptorRecord.mListener;
            int i5 = fileDescriptorRecord.mSeq;
            int onFileDescriptorEvents = onFileDescriptorEventListener.onFileDescriptorEvents(fileDescriptorRecord.mDescriptor, i4);
            if (onFileDescriptorEvents != 0) {
                onFileDescriptorEvents |= 4;
            }
            if (onFileDescriptorEvents != i3) {
                synchronized (this) {
                    int indexOfKey = this.mFileDescriptorRecords.indexOfKey(i);
                    if (indexOfKey >= 0 && this.mFileDescriptorRecords.valueAt(indexOfKey) == fileDescriptorRecord && fileDescriptorRecord.mSeq == i5) {
                        fileDescriptorRecord.mEvents = onFileDescriptorEvents;
                        if (onFileDescriptorEvents == 0) {
                            this.mFileDescriptorRecords.removeAt(indexOfKey);
                        }
                    }
                }
            }
            return onFileDescriptorEvents;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009c, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009d, code lost:
    
        if (r5 >= r6) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        r7 = r14.mPendingIdleHandlers[r5];
        r14.mPendingIdleHandlers[r5] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a7, code lost:
    
        r8 = r7.queueIdle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ac, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ad, code lost:
    
        android.util.Log.wtf(android.os.MessageQueue.TAG, "IdleHandler threw exception", r8);
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c5, code lost:
    
        r5 = 0;
        r6 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Message next() {
        Message message;
        IdleHandler idleHandler;
        boolean z;
        Message message2;
        long j = this.mPtr;
        if (j == 0) {
            return null;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 != 0) {
                Binder.flushPendingCommands();
            }
            nativePollOnce(j, i2);
            synchronized (this) {
                long uptimeMillis = SystemClock.uptimeMillis();
                Message message3 = this.mMessages;
                if (message3 == null || message3.target != null) {
                    message = null;
                } else {
                    while (true) {
                        message2 = message3.next;
                        if (message2 == null || message2.isAsynchronous()) {
                            break;
                        }
                        message3 = message2;
                    }
                    message = message3;
                    message3 = message2;
                }
                if (message3 == null) {
                    i2 = -1;
                } else if (uptimeMillis < message3.when) {
                    i2 = (int) Math.min(message3.when - uptimeMillis, 2147483647L);
                } else {
                    this.mBlocked = false;
                    if (message != null) {
                        message.next = message3.next;
                    } else {
                        this.mMessages = message3.next;
                    }
                    message3.next = null;
                    message3.markInUse();
                    return message3;
                }
                if (this.mQuitting) {
                    dispose();
                    return null;
                }
                if (i < 0 && (this.mMessages == null || uptimeMillis < this.mMessages.when)) {
                    i = this.mIdleHandlers.size();
                }
                if (i <= 0) {
                    this.mBlocked = true;
                } else {
                    if (this.mPendingIdleHandlers == null) {
                        this.mPendingIdleHandlers = new IdleHandler[Math.max(i, 4)];
                    }
                    this.mPendingIdleHandlers = (IdleHandler[]) this.mIdleHandlers.toArray(this.mPendingIdleHandlers);
                }
            }
        }
        if (!z) {
            synchronized (this) {
                this.mIdleHandlers.remove(idleHandler);
            }
        }
        int i3 = i3 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void quit(boolean z) {
        if (!this.mQuitAllowed) {
            throw new IllegalStateException("Main thread not allowed to quit.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                return;
            }
            this.mQuitting = true;
            if (z) {
                removeAllFutureMessagesLocked();
            } else {
                removeAllMessagesLocked();
            }
            nativeWake(this.mPtr);
        }
    }

    public int postSyncBarrier() {
        return postSyncBarrier(SystemClock.uptimeMillis());
    }

    private int postSyncBarrier(long j) {
        int i;
        synchronized (this) {
            i = this.mNextBarrierToken;
            this.mNextBarrierToken = i + 1;
            Message obtain = Message.obtain();
            obtain.markInUse();
            obtain.when = j;
            obtain.arg1 = i;
            Message message = null;
            Message message2 = this.mMessages;
            if (j != 0) {
                while (message2 != null && message2.when <= j) {
                    Message message3 = message2;
                    message2 = message2.next;
                    message = message3;
                }
            }
            if (message != null) {
                obtain.next = message2;
                message.next = obtain;
            } else {
                obtain.next = message2;
                this.mMessages = obtain;
            }
        }
        return i;
    }

    public void removeSyncBarrier(int i) {
        Message message;
        synchronized (this) {
            Message message2 = null;
            Message message3 = this.mMessages;
            while (true) {
                Message message4 = message3;
                message = message2;
                message2 = message4;
                if (message2 == null || (message2.target == null && message2.arg1 == i)) {
                    break;
                } else {
                    message3 = message2.next;
                }
            }
            if (message2 == null) {
                throw new IllegalStateException("The specified message queue synchronization  barrier token has not been posted or has already been removed.");
            }
            boolean z = false;
            if (message != null) {
                message.next = message2.next;
            } else {
                this.mMessages = message2.next;
                if (this.mMessages == null || this.mMessages.target != null) {
                    z = true;
                }
            }
            message2.recycleUnchecked();
            if (z && !this.mQuitting) {
                nativeWake(this.mPtr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0081 A[Catch: all -> 0x0088, TryCatch #0 {, blocks: (B:7:0x000b, B:9:0x0010, B:10:0x0034, B:13:0x0036, B:17:0x0046, B:20:0x004d, B:22:0x0051, B:24:0x0055, B:28:0x005e, B:30:0x0062, B:33:0x006b, B:42:0x0074, B:44:0x0081, B:45:0x0086, B:49:0x0079), top: B:6:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean enqueueMessage(Message message, long j) {
        boolean z;
        Message message2;
        if (message.target == null) {
            throw new IllegalArgumentException("Message must have a target.");
        }
        if (message.isInUse()) {
            throw new IllegalStateException(message + " This message is already in use.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                IllegalStateException illegalStateException = new IllegalStateException(message.target + " sending message to a Handler on a dead thread");
                Log.w(TAG, illegalStateException.getMessage(), illegalStateException);
                message.recycle();
                return false;
            }
            message.markInUse();
            message.when = j;
            Message message3 = this.mMessages;
            if (message3 != null && j != 0 && j >= message3.when) {
                z = this.mBlocked && message3.target == null && message.isAsynchronous();
                while (true) {
                    message2 = message3.next;
                    if (message2 == null || j < message2.when) {
                        break;
                    }
                    if (z && message2.isAsynchronous()) {
                        z = false;
                    }
                    message3 = message2;
                }
                message.next = message2;
                message3.next = message;
                if (z) {
                    nativeWake(this.mPtr);
                }
                return true;
            }
            message.next = message3;
            this.mMessages = message;
            z = this.mBlocked;
            if (z) {
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasMessages(Handler handler, int i, Object obj) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler && message.what == i && (obj == null || message.obj == obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasMessages(Handler handler, Runnable runnable, Object obj) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler && message.callback == runnable && (obj == null || message.obj == obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasMessages(Handler handler) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeMessages(Handler handler, int i, Object obj) {
        if (handler == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && message.what == i && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.what == i && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeMessages(Handler handler, Runnable runnable, Object obj) {
        if (handler == null || runnable == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && message.callback == runnable && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.callback == runnable && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeCallbacksAndMessages(Handler handler, Object obj) {
        if (handler == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    private void removeAllMessagesLocked() {
        Message message = this.mMessages;
        while (message != null) {
            Message message2 = message.next;
            message.recycleUnchecked();
            message = message2;
        }
        this.mMessages = null;
    }

    private void removeAllFutureMessagesLocked() {
        long uptimeMillis = SystemClock.uptimeMillis();
        Message message = this.mMessages;
        if (message == null) {
            return;
        }
        if (message.when > uptimeMillis) {
            removeAllMessagesLocked();
            return;
        }
        while (true) {
            Message message2 = message.next;
            if (message2 == null) {
                return;
            }
            if (message2.when > uptimeMillis) {
                message.next = null;
                while (true) {
                    Message message3 = message2.next;
                    message2.recycleUnchecked();
                    if (message3 == null) {
                        return;
                    } else {
                        message2 = message3;
                    }
                }
            } else {
                message = message2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dump(Printer printer, String str, Handler handler) {
        synchronized (this) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = 0;
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (handler == null || handler == message.target) {
                    printer.println(str + "Message " + i + ": " + message.toString(uptimeMillis));
                }
                i++;
            }
            printer.println(str + "(Total messages: " + i + ", polling=" + isPollingLocked() + ", quitting=" + this.mQuitting + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                message.writeToProto(protoOutputStream, 2246267895809L);
            }
            protoOutputStream.write(1133871366146L, isPollingLocked());
            protoOutputStream.write(1133871366147L, this.mQuitting);
        }
        protoOutputStream.end(start);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class FileDescriptorRecord {
        public final FileDescriptor mDescriptor;
        public int mEvents;
        public OnFileDescriptorEventListener mListener;
        public int mSeq;

        public FileDescriptorRecord(FileDescriptor fileDescriptor, int i, OnFileDescriptorEventListener onFileDescriptorEventListener) {
            this.mDescriptor = fileDescriptor;
            this.mEvents = i;
            this.mListener = onFileDescriptorEventListener;
        }
    }
}
