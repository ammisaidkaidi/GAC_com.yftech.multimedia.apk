package org.greenrobot.eventbus;

import android.os.Looper;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidLogger;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface Logger {
    void log(Level level, String str);

    void log(Level level, String str, Throwable th);

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class JavaLogger implements Logger {
        protected final java.util.logging.Logger logger;

        public JavaLogger(String str) {
            this.logger = java.util.logging.Logger.getLogger(str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str) {
            this.logger.log(level, str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str, Throwable th) {
            this.logger.log(level, str, th);
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class SystemOutLogger implements Logger {
        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str, Throwable th) {
            System.out.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class Default {
        public static Logger get() {
            if (AndroidLogger.isAndroidLogAvailable() && getAndroidMainLooperOrNull() != null) {
                return new AndroidLogger("EventBus");
            }
            return new SystemOutLogger();
        }

        static Object getAndroidMainLooperOrNull() {
            try {
                return Looper.getMainLooper();
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }
}
