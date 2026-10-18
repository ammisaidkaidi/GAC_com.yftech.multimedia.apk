package com.android.internal.view.animation;

import android.animation.TimeInterpolator;
import android.view.Choreographer;

@HasNativeInterpolator
/* loaded from: /home/user/work/dex/classes3.dex */
public class FallbackLUTInterpolator implements NativeInterpolatorFactory, TimeInterpolator {
    private static final int MAX_SAMPLE_POINTS = 300;
    private final float[] mLut;
    private TimeInterpolator mSourceInterpolator;

    public FallbackLUTInterpolator(TimeInterpolator timeInterpolator, long j) {
        this.mSourceInterpolator = timeInterpolator;
        this.mLut = createLUT(timeInterpolator, j);
    }

    private static float[] createLUT(TimeInterpolator timeInterpolator, long j) {
        int min = Math.min(Math.max(2, (int) Math.ceil(j / ((int) (Choreographer.getInstance().getFrameIntervalNanos() / 1000000)))), 300);
        float[] fArr = new float[min];
        float f = min - 1;
        for (int i = 0; i < min; i++) {
            fArr[i] = timeInterpolator.getInterpolation(i / f);
        }
        return fArr;
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createLutInterpolator(this.mLut);
    }

    public static long createNativeInterpolator(TimeInterpolator timeInterpolator, long j) {
        return NativeInterpolatorFactoryHelper.createLutInterpolator(createLUT(timeInterpolator, j));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return this.mSourceInterpolator.getInterpolation(f);
    }
}
