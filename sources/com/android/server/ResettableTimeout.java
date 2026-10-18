package com.android.server;

import android.os.ConditionVariable;
import android.os.SystemClock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class ResettableTimeout {
    private ConditionVariable mLock = new ConditionVariable();
    private volatile long mOffAt;
    private volatile boolean mOffCalled;
    private Thread mThread;

    public abstract void off();

    public abstract void on(boolean z);

    ResettableTimeout() {
    }

    public void go(long j) {
        synchronized (this) {
            this.mOffAt = SystemClock.uptimeMillis() + j;
            boolean z = false;
            if (this.mThread == null) {
                this.mLock.close();
                this.mThread = new T();
                this.mThread.start();
                this.mLock.block();
                this.mOffCalled = false;
            } else {
                z = true;
                this.mThread.interrupt();
            }
            on(z);
        }
    }

    public void cancel() {
        synchronized (this) {
            this.mOffAt = 0L;
            if (this.mThread != null) {
                this.mThread.interrupt();
                this.mThread = null;
            }
            if (!this.mOffCalled) {
                this.mOffCalled = true;
                off();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class T extends Thread {
        private T() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long uptimeMillis;
            ResettableTimeout.this.mLock.open();
            while (true) {
                synchronized (this) {
                    uptimeMillis = ResettableTimeout.this.mOffAt - SystemClock.uptimeMillis();
                    if (uptimeMillis <= 0) {
                        ResettableTimeout.this.mOffCalled = true;
                        ResettableTimeout.this.off();
                        ResettableTimeout.this.mThread = null;
                        return;
                    }
                }
                try {
                    sleep(uptimeMillis);
                } catch (InterruptedException unused) {
                }
            }
        }
    }
}
