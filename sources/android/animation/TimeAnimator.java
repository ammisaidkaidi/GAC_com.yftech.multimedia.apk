package android.animation;

import android.view.animation.AnimationUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TimeAnimator extends ValueAnimator {
    private TimeListener mListener;
    private long mPreviousTime = -1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TimeListener {
        void onTimeUpdate(TimeAnimator timeAnimator, long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.animation.ValueAnimator
    public void animateValue(float f) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.animation.ValueAnimator
    public void initAnimation() {
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        this.mPreviousTime = -1L;
        super.start();
    }

    @Override // android.animation.ValueAnimator
    boolean animateBasedOnTime(long j) {
        if (this.mListener == null) {
            return false;
        }
        long j2 = j - this.mStartTime;
        long j3 = this.mPreviousTime < 0 ? 0L : j - this.mPreviousTime;
        this.mPreviousTime = j;
        this.mListener.onTimeUpdate(this, j2, j3);
        return false;
    }

    @Override // android.animation.ValueAnimator
    public void setCurrentPlayTime(long j) {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mStartTime = Math.max(this.mStartTime, currentAnimationTimeMillis - j);
        this.mStartTimeCommitted = true;
        animateBasedOnTime(currentAnimationTimeMillis);
    }

    public void setTimeListener(TimeListener timeListener) {
        this.mListener = timeListener;
    }
}
