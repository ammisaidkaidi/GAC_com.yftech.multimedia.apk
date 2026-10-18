package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.Preconditions;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class FadeDrawable extends ArrayDrawable {

    @VisibleForTesting
    public static final int TRANSITION_NONE = 2;

    @VisibleForTesting
    public static final int TRANSITION_RUNNING = 1;

    @VisibleForTesting
    public static final int TRANSITION_STARTING = 0;
    private final int mActualImageLayer;

    @VisibleForTesting
    int mAlpha;

    @VisibleForTesting
    int[] mAlphas;
    private final int mDefaultLayerAlpha;
    private final boolean mDefaultLayerIsOn;

    @VisibleForTesting
    int mDurationMs;
    private boolean mIsFadingActualImage;

    @VisibleForTesting
    boolean[] mIsLayerOn;
    private final Drawable[] mLayers;

    @Nullable
    private OnFadeListener mOnFadeListener;

    @VisibleForTesting
    int mPreventInvalidateCount;

    @VisibleForTesting
    int[] mStartAlphas;

    @VisibleForTesting
    long mStartTimeMs;

    @VisibleForTesting
    int mTransitionState;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnFadeListener {
        void onFadeFinished();

        void onFadeStarted();
    }

    public FadeDrawable(Drawable[] drawableArr) {
        this(drawableArr, false, -1);
    }

    public FadeDrawable(Drawable[] drawableArr, boolean z, int i) {
        super(drawableArr);
        Preconditions.checkState(drawableArr.length >= 1, "At least one layer required!");
        this.mLayers = drawableArr;
        this.mStartAlphas = new int[drawableArr.length];
        this.mAlphas = new int[drawableArr.length];
        this.mAlpha = 255;
        this.mIsLayerOn = new boolean[drawableArr.length];
        this.mPreventInvalidateCount = 0;
        this.mDefaultLayerIsOn = z;
        this.mDefaultLayerAlpha = this.mDefaultLayerIsOn ? 255 : 0;
        this.mActualImageLayer = i;
        resetInternal();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.mPreventInvalidateCount == 0) {
            super.invalidateSelf();
        }
    }

    public void beginBatchMode() {
        this.mPreventInvalidateCount++;
    }

    public void endBatchMode() {
        this.mPreventInvalidateCount--;
        invalidateSelf();
    }

    public void setTransitionDuration(int i) {
        this.mDurationMs = i;
        if (this.mTransitionState == 1) {
            this.mTransitionState = 0;
        }
    }

    public int getTransitionDuration() {
        return this.mDurationMs;
    }

    private void resetInternal() {
        this.mTransitionState = 2;
        Arrays.fill(this.mStartAlphas, this.mDefaultLayerAlpha);
        this.mStartAlphas[0] = 255;
        Arrays.fill(this.mAlphas, this.mDefaultLayerAlpha);
        this.mAlphas[0] = 255;
        Arrays.fill(this.mIsLayerOn, this.mDefaultLayerIsOn);
        this.mIsLayerOn[0] = true;
    }

    public void reset() {
        resetInternal();
        invalidateSelf();
    }

    public void fadeInLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = true;
        invalidateSelf();
    }

    public void fadeOutLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = false;
        invalidateSelf();
    }

    public void fadeInAllLayers() {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, true);
        invalidateSelf();
    }

    public void fadeOutAllLayers() {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, false);
        invalidateSelf();
    }

    public void fadeToLayer(int i) {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, false);
        this.mIsLayerOn[i] = true;
        invalidateSelf();
    }

    public void fadeUpToLayer(int i) {
        this.mTransitionState = 0;
        int i2 = i + 1;
        Arrays.fill(this.mIsLayerOn, 0, i2, true);
        Arrays.fill(this.mIsLayerOn, i2, this.mLayers.length, false);
        invalidateSelf();
    }

    public void showLayerImmediately(int i) {
        this.mIsLayerOn[i] = true;
        this.mAlphas[i] = 255;
        invalidateSelf();
    }

    public void hideLayerImmediately(int i) {
        this.mIsLayerOn[i] = false;
        this.mAlphas[i] = 0;
        invalidateSelf();
    }

    public void finishTransitionImmediately() {
        this.mTransitionState = 2;
        for (int i = 0; i < this.mLayers.length; i++) {
            this.mAlphas[i] = this.mIsLayerOn[i] ? 255 : 0;
        }
        invalidateSelf();
    }

    private boolean updateAlphas(float f) {
        boolean z = true;
        for (int i = 0; i < this.mLayers.length; i++) {
            this.mAlphas[i] = (int) (this.mStartAlphas[i] + ((this.mIsLayerOn[i] ? 1 : -1) * 255 * f));
            if (this.mAlphas[i] < 0) {
                this.mAlphas[i] = 0;
            }
            if (this.mAlphas[i] > 255) {
                this.mAlphas[i] = 255;
            }
            if (this.mIsLayerOn[i] && this.mAlphas[i] < 255) {
                z = false;
            }
            if (!this.mIsLayerOn[i] && this.mAlphas[i] > 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean updateAlphas;
        switch (this.mTransitionState) {
            case 0:
                System.arraycopy(this.mAlphas, 0, this.mStartAlphas, 0, this.mLayers.length);
                this.mStartTimeMs = getCurrentTimeMs();
                updateAlphas = updateAlphas(this.mDurationMs == 0 ? 1.0f : 0.0f);
                onFadeStarted();
                this.mTransitionState = updateAlphas ? 2 : 1;
                break;
            case 1:
                Preconditions.checkState(this.mDurationMs > 0);
                updateAlphas = updateAlphas(((float) (getCurrentTimeMs() - this.mStartTimeMs)) / this.mDurationMs);
                this.mTransitionState = updateAlphas ? 2 : 1;
                break;
            case 2:
            default:
                updateAlphas = true;
                break;
        }
        for (int i = 0; i < this.mLayers.length; i++) {
            drawDrawableWithAlpha(canvas, this.mLayers[i], (int) Math.ceil((this.mAlphas[i] * this.mAlpha) / 255.0d));
        }
        if (updateAlphas) {
            onFadeFinished();
        } else {
            invalidateSelf();
        }
    }

    private void drawDrawableWithAlpha(Canvas canvas, Drawable drawable, int i) {
        if (drawable == null || i <= 0) {
            return;
        }
        this.mPreventInvalidateCount++;
        drawable.mutate().setAlpha(i);
        this.mPreventInvalidateCount--;
        drawable.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    protected long getCurrentTimeMs() {
        return SystemClock.uptimeMillis();
    }

    @VisibleForTesting
    public int getTransitionState() {
        return this.mTransitionState;
    }

    public boolean isLayerOn(int i) {
        return this.mIsLayerOn[i];
    }

    public boolean isDefaultLayerIsOn() {
        return this.mDefaultLayerIsOn;
    }

    public void setOnFadeListener(OnFadeListener onFadeListener) {
        this.mOnFadeListener = onFadeListener;
    }

    private void onFadeStarted() {
        if (!this.mIsFadingActualImage && this.mActualImageLayer >= 0 && this.mActualImageLayer < this.mIsLayerOn.length && this.mIsLayerOn[this.mActualImageLayer]) {
            this.mIsFadingActualImage = true;
            if (this.mOnFadeListener != null) {
                this.mOnFadeListener.onFadeStarted();
            }
        }
    }

    private void onFadeFinished() {
        if (this.mIsFadingActualImage) {
            this.mIsFadingActualImage = false;
            if (this.mOnFadeListener != null) {
                this.mOnFadeListener.onFadeFinished();
            }
        }
    }
}
