package com.media.common.util;

import android.app.Application;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BaseApplication extends Application {
    public static BaseApplication instance;
    public ExecutorService dataThreadPool;
    public ExecutorService fixedThreadPool;

    public static BaseApplication getInstance() {
        return instance;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        instance = this;
        this.fixedThreadPool = Executors.newFixedThreadPool(1);
        this.dataThreadPool = Executors.newFixedThreadPool(1);
        ToastUtils.init(getApplicationContext());
    }

    public ExecutorService getFixedThreadPool() {
        return this.fixedThreadPool;
    }

    public ExecutorService getDataThreadPool() {
        return this.dataThreadPool;
    }
}
