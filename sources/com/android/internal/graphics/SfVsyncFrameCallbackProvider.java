package com.android.internal.graphics;

import android.animation.AnimationHandler;
import android.view.Choreographer;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class SfVsyncFrameCallbackProvider implements AnimationHandler.AnimationFrameCallbackProvider {
    private final Choreographer mChoreographer;

    public SfVsyncFrameCallbackProvider() {
        this.mChoreographer = Choreographer.getSfInstance();
    }

    public SfVsyncFrameCallbackProvider(Choreographer choreographer) {
        this.mChoreographer = choreographer;
    }

    public void postFrameCallback(Choreographer.FrameCallback frameCallback) {
        this.mChoreographer.postFrameCallback(frameCallback);
    }

    public void postCommitCallback(Runnable runnable) {
        this.mChoreographer.postCallback(3, runnable, null);
    }

    public long getFrameTime() {
        return this.mChoreographer.getFrameTime();
    }

    public long getFrameDelay() {
        return Choreographer.getFrameDelay();
    }

    public void setFrameDelay(long j) {
        Choreographer.setFrameDelay(j);
    }
}
