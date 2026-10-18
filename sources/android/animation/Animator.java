package android.animation;

import android.content.res.ConstantState;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class Animator implements Cloneable {
    public static final long DURATION_INFINITE = -1;
    private AnimatorConstantState mConstantState;
    ArrayList<AnimatorListener> mListeners = null;
    ArrayList<AnimatorPauseListener> mPauseListeners = null;
    boolean mPaused = false;
    int mChangingConfigurations = 0;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface AnimatorPauseListener {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void animateBasedOnPlayTime(long j, long j2, boolean z) {
    }

    public boolean canReverse() {
        return false;
    }

    public void cancel() {
    }

    public void end() {
    }

    public abstract long getDuration();

    public TimeInterpolator getInterpolator() {
        return null;
    }

    public abstract long getStartDelay();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitialized() {
        return true;
    }

    public abstract boolean isRunning();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean pulseAnimationFrame(long j) {
        return false;
    }

    public void setAllowRunningAsynchronously(boolean z) {
    }

    public abstract Animator setDuration(long j);

    public abstract void setInterpolator(TimeInterpolator timeInterpolator);

    public abstract void setStartDelay(long j);

    public void setTarget(Object obj) {
    }

    public void setupEndValues() {
    }

    public void setupStartValues() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void skipToEndValue(boolean z) {
    }

    public void start() {
    }

    public void pause() {
        if (!isStarted() || this.mPaused) {
            return;
        }
        this.mPaused = true;
        if (this.mPauseListeners != null) {
            ArrayList arrayList = (ArrayList) this.mPauseListeners.clone();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AnimatorPauseListener) arrayList.get(i)).onAnimationPause(this);
            }
        }
    }

    public void resume() {
        if (this.mPaused) {
            this.mPaused = false;
            if (this.mPauseListeners != null) {
                ArrayList arrayList = (ArrayList) this.mPauseListeners.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((AnimatorPauseListener) arrayList.get(i)).onAnimationResume(this);
                }
            }
        }
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    public long getTotalDuration() {
        long duration = getDuration();
        if (duration == -1) {
            return -1L;
        }
        return getStartDelay() + duration;
    }

    public boolean isStarted() {
        return isRunning();
    }

    public void addListener(AnimatorListener animatorListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(animatorListener);
    }

    public void removeListener(AnimatorListener animatorListener) {
        if (this.mListeners == null) {
            return;
        }
        this.mListeners.remove(animatorListener);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
    }

    public ArrayList<AnimatorListener> getListeners() {
        return this.mListeners;
    }

    public void addPauseListener(AnimatorPauseListener animatorPauseListener) {
        if (this.mPauseListeners == null) {
            this.mPauseListeners = new ArrayList<>();
        }
        this.mPauseListeners.add(animatorPauseListener);
    }

    public void removePauseListener(AnimatorPauseListener animatorPauseListener) {
        if (this.mPauseListeners == null) {
            return;
        }
        this.mPauseListeners.remove(animatorPauseListener);
        if (this.mPauseListeners.size() == 0) {
            this.mPauseListeners = null;
        }
    }

    public void removeAllListeners() {
        if (this.mListeners != null) {
            this.mListeners.clear();
            this.mListeners = null;
        }
        if (this.mPauseListeners != null) {
            this.mPauseListeners.clear();
            this.mPauseListeners = null;
        }
    }

    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public void setChangingConfigurations(int i) {
        this.mChangingConfigurations = i;
    }

    public void appendChangingConfigurations(int i) {
        this.mChangingConfigurations = i | this.mChangingConfigurations;
    }

    public ConstantState<Animator> createConstantState() {
        return new AnimatorConstantState(this);
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Animator mo0clone() {
        try {
            Animator animator = (Animator) super.clone();
            if (this.mListeners != null) {
                animator.mListeners = new ArrayList<>(this.mListeners);
            }
            if (this.mPauseListeners != null) {
                animator.mPauseListeners = new ArrayList<>(this.mPauseListeners);
            }
            return animator;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void reverse() {
        throw new IllegalStateException("Reverse is not supported");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startWithoutPulsing(boolean z) {
        if (z) {
            reverse();
        } else {
            start();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface AnimatorListener {
        void onAnimationCancel(Animator animator);

        void onAnimationEnd(Animator animator);

        void onAnimationRepeat(Animator animator);

        void onAnimationStart(Animator animator);

        default void onAnimationStart(Animator animator, boolean z) {
            onAnimationStart(animator);
        }

        default void onAnimationEnd(Animator animator, boolean z) {
            onAnimationEnd(animator);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class AnimatorConstantState extends ConstantState<Animator> {
        final Animator mAnimator;
        int mChangingConf;

        public AnimatorConstantState(Animator animator) {
            this.mAnimator = animator;
            this.mAnimator.mConstantState = this;
            this.mChangingConf = this.mAnimator.getChangingConfigurations();
        }

        @Override // android.content.res.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConf;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.content.res.ConstantState
        public Animator newInstance() {
            Animator mo0clone = this.mAnimator.mo0clone();
            mo0clone.mConstantState = this;
            return mo0clone;
        }
    }
}
