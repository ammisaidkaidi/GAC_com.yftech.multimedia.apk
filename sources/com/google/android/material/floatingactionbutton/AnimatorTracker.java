package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
class AnimatorTracker {

    @Nullable
    private Animator currentAnimator;

    public void onNextAnimationStart(Animator animator) {
        cancelCurrent();
        this.currentAnimator = animator;
    }

    public void cancelCurrent() {
        if (this.currentAnimator != null) {
            this.currentAnimator.cancel();
        }
    }

    public void clear() {
        this.currentAnimator = null;
    }
}
