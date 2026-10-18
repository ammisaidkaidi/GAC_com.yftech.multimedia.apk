package android.net;

import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ConnectivityThread extends HandlerThread {
    static /* synthetic */ ConnectivityThread access$000() {
        return createInstance();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class Singleton {
        private static final ConnectivityThread INSTANCE = ConnectivityThread.access$000();

        private Singleton() {
        }
    }

    private ConnectivityThread() {
        super("ConnectivityThread");
    }

    private static ConnectivityThread createInstance() {
        ConnectivityThread connectivityThread = new ConnectivityThread();
        connectivityThread.start();
        return connectivityThread;
    }

    public static ConnectivityThread get() {
        return Singleton.INSTANCE;
    }

    public static Looper getInstanceLooper() {
        return Singleton.INSTANCE.getLooper();
    }
}
