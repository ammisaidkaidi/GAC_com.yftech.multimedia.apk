package android.filterfw.core;

/* compiled from: GLFrame.java */
/* loaded from: /home/user/work/dex/classes.dex */
class GLFrameTimer {
    private static StopWatchMap mTimer;

    GLFrameTimer() {
    }

    public static StopWatchMap get() {
        if (mTimer == null) {
            mTimer = new StopWatchMap();
        }
        return mTimer;
    }
}
