package com.yftech.car.widget.media.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TaskManager {
    private static TaskManager instance;
    private Handler mHandler;
    private int mThreadSize = 3;
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());
    private ExecutorService threadExecutor;

    private TaskManager() {
    }

    public static TaskManager getInstance() {
        if (instance == null) {
            synchronized (TaskManager.class) {
                if (instance == null) {
                    instance = new TaskManager();
                }
            }
        }
        return instance;
    }

    public void setThreadSize(int i) {
        this.mThreadSize = i;
    }

    public void ui(Runnable runnable) {
        this.mUiHandler.post(runnable);
    }

    public void post(Runnable runnable) {
        if (this.mHandler == null) {
            HandlerThread handlerThread = new HandlerThread("sync_thread_data_scanner");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper());
        }
        this.mHandler.post(runnable);
    }

    public void threadRunnable(Runnable runnable) {
        if (this.threadExecutor == null) {
            this.threadExecutor = Executors.newFixedThreadPool(this.mThreadSize);
        }
        this.threadExecutor.execute(runnable);
    }
}
