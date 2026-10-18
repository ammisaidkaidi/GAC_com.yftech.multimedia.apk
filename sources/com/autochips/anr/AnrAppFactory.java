package com.autochips.anr;

import dalvik.system.PathClassLoader;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AnrAppFactory {
    private static Object lock = new Object();
    private static AnrAppFactory sInstance;

    public static AnrAppFactory getInstance() {
        if (sInstance == null) {
            synchronized (lock) {
                if (sInstance == null) {
                    try {
                        sInstance = (AnrAppFactory) Class.forName("com.autichips.anr.AnrAppFactoryImpl", false, new PathClassLoader("/system/framework/autochips-framework.jar", AnrAppFactory.class.getClassLoader())).getConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (Exception unused) {
                        sInstance = new AnrAppFactory();
                    }
                }
            }
        }
        return sInstance;
    }

    public AnrAppManager makeAnrAppManager() {
        return new AnrAppManager();
    }
}
