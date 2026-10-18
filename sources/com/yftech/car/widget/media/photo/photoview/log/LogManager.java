package com.yftech.car.widget.media.photo.photoview.log;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class LogManager {
    private static Logger logger = new LoggerDefault();

    public static void setLogger(Logger logger2) {
        logger = logger2;
    }

    public static Logger getLogger() {
        return logger;
    }
}
