package com.media.common.ui.widget.top_snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes3.dex */
class SnackBarManager {
    private static final int LONG_DURATION_MS = 2750;
    static final int MSG_TIMEOUT = 0;
    private static final int SHORT_DURATION_MS = 1500;
    private static SnackBarManager sSnackbarManager;
    private SnackBarRecord mCurrentSnackbar;
    private SnackBarRecord mNextSnackbar;
    private final Object mLock = new Object();
    private final Handler mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.media.common.ui.widget.top_snackbar.SnackBarManager.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            SnackBarManager.this.handleTimeout((SnackBarRecord) message.obj);
            return true;
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Callback {
        void dismiss(int i);

        void show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SnackBarManager getInstance() {
        if (sSnackbarManager == null) {
            sSnackbarManager = new SnackBarManager();
        }
        return sSnackbarManager;
    }

    private SnackBarManager() {
    }

    public void show(int i, Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback)) {
                this.mCurrentSnackbar.duration = i;
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
                scheduleTimeoutLocked(this.mCurrentSnackbar);
                return;
            }
            if (isNextSnackBarLocked(callback)) {
                this.mNextSnackbar.duration = i;
            } else {
                this.mNextSnackbar = new SnackBarRecord(i, callback);
            }
            if (this.mCurrentSnackbar == null || !cancelSnackbarLocked(this.mCurrentSnackbar, 4)) {
                this.mCurrentSnackbar = null;
                showNextSnackBarLocked();
            }
        }
    }

    public void dismiss(Callback callback, int i) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback)) {
                cancelSnackbarLocked(this.mCurrentSnackbar, i);
            } else if (isNextSnackBarLocked(callback)) {
                cancelSnackbarLocked(this.mNextSnackbar, i);
            }
        }
    }

    public void onDismissed(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback)) {
                this.mCurrentSnackbar = null;
                if (this.mNextSnackbar != null) {
                    showNextSnackBarLocked();
                }
            }
        }
    }

    public void onShown(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback)) {
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    public void pauseTimeout(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback) && !this.mCurrentSnackbar.paused) {
                this.mCurrentSnackbar.paused = true;
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
            }
        }
    }

    public void restoreTimeoutIfPaused(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbarLocked(callback) && this.mCurrentSnackbar.paused) {
                this.mCurrentSnackbar.paused = false;
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    public boolean isCurrent(Callback callback) {
        boolean isCurrentSnackbarLocked;
        synchronized (this.mLock) {
            isCurrentSnackbarLocked = isCurrentSnackbarLocked(callback);
        }
        return isCurrentSnackbarLocked;
    }

    public boolean isCurrentOrNext(Callback callback) {
        boolean z;
        synchronized (this.mLock) {
            z = isCurrentSnackbarLocked(callback) || isNextSnackBarLocked(callback);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SnackBarRecord {
        final WeakReference<Callback> callback;
        int duration;
        boolean paused;

        SnackBarRecord(int i, Callback callback) {
            this.callback = new WeakReference<>(callback);
            this.duration = i;
        }

        boolean isSnackBar(Callback callback) {
            return callback != null && this.callback.get() == callback;
        }
    }

    private void showNextSnackBarLocked() {
        if (this.mNextSnackbar != null) {
            this.mCurrentSnackbar = this.mNextSnackbar;
            this.mNextSnackbar = null;
            Callback callback = this.mCurrentSnackbar.callback.get();
            if (callback != null) {
                callback.show();
            } else {
                this.mCurrentSnackbar = null;
            }
        }
    }

    private boolean cancelSnackbarLocked(SnackBarRecord snackBarRecord, int i) {
        Callback callback = snackBarRecord.callback.get();
        if (callback == null) {
            return false;
        }
        this.mHandler.removeCallbacksAndMessages(snackBarRecord);
        callback.dismiss(i);
        return true;
    }

    private boolean isCurrentSnackbarLocked(Callback callback) {
        return this.mCurrentSnackbar != null && this.mCurrentSnackbar.isSnackBar(callback);
    }

    private boolean isNextSnackBarLocked(Callback callback) {
        return this.mNextSnackbar != null && this.mNextSnackbar.isSnackBar(callback);
    }

    private void scheduleTimeoutLocked(SnackBarRecord snackBarRecord) {
        if (snackBarRecord.duration == -2) {
            return;
        }
        int i = LONG_DURATION_MS;
        if (snackBarRecord.duration > 0) {
            i = snackBarRecord.duration;
        } else if (snackBarRecord.duration == -1) {
            i = SHORT_DURATION_MS;
        }
        this.mHandler.removeCallbacksAndMessages(snackBarRecord);
        this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 0, snackBarRecord), i);
    }

    void handleTimeout(SnackBarRecord snackBarRecord) {
        synchronized (this.mLock) {
            if (this.mCurrentSnackbar == snackBarRecord || this.mNextSnackbar == snackBarRecord) {
                cancelSnackbarLocked(snackBarRecord, 2);
            }
        }
    }
}
