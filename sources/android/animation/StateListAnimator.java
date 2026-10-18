package android.animation;

import android.content.res.ConstantState;
import android.util.StateSet;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class StateListAnimator implements Cloneable {
    private AnimatorListenerAdapter mAnimatorListener;
    private int mChangingConfigurations;
    private StateListAnimatorConstantState mConstantState;
    private WeakReference<View> mViewRef;
    private ArrayList<Tuple> mTuples = new ArrayList<>();
    private Tuple mLastMatch = null;
    private Animator mRunningAnimator = null;

    public StateListAnimator() {
        initAnimatorListener();
    }

    private void initAnimatorListener() {
        this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: android.animation.StateListAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.setTarget(null);
                if (StateListAnimator.this.mRunningAnimator == animator) {
                    StateListAnimator.this.mRunningAnimator = null;
                }
            }
        };
    }

    public void addState(int[] iArr, Animator animator) {
        Tuple tuple = new Tuple(iArr, animator);
        tuple.mAnimator.addListener(this.mAnimatorListener);
        this.mTuples.add(tuple);
        this.mChangingConfigurations |= animator.getChangingConfigurations();
    }

    public Animator getRunningAnimator() {
        return this.mRunningAnimator;
    }

    public View getTarget() {
        if (this.mViewRef == null) {
            return null;
        }
        return this.mViewRef.get();
    }

    public void setTarget(View view) {
        View target = getTarget();
        if (target == view) {
            return;
        }
        if (target != null) {
            clearTarget();
        }
        if (view != null) {
            this.mViewRef = new WeakReference<>(view);
        }
    }

    private void clearTarget() {
        int size = this.mTuples.size();
        for (int i = 0; i < size; i++) {
            this.mTuples.get(i).mAnimator.setTarget(null);
        }
        this.mViewRef = null;
        this.mLastMatch = null;
        this.mRunningAnimator = null;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public StateListAnimator m7clone() {
        try {
            StateListAnimator stateListAnimator = (StateListAnimator) super.clone();
            stateListAnimator.mTuples = new ArrayList<>(this.mTuples.size());
            stateListAnimator.mLastMatch = null;
            stateListAnimator.mRunningAnimator = null;
            stateListAnimator.mViewRef = null;
            stateListAnimator.mAnimatorListener = null;
            stateListAnimator.initAnimatorListener();
            int size = this.mTuples.size();
            for (int i = 0; i < size; i++) {
                Tuple tuple = this.mTuples.get(i);
                Animator mo0clone = tuple.mAnimator.mo0clone();
                mo0clone.removeListener(this.mAnimatorListener);
                stateListAnimator.addState(tuple.mSpecs, mo0clone);
            }
            stateListAnimator.setChangingConfigurations(getChangingConfigurations());
            return stateListAnimator;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError("cannot clone state list animator", e);
        }
    }

    public void setState(int[] iArr) {
        Tuple tuple;
        int size = this.mTuples.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tuple = null;
                break;
            }
            tuple = this.mTuples.get(i);
            if (StateSet.stateSetMatches(tuple.mSpecs, iArr)) {
                break;
            } else {
                i++;
            }
        }
        if (tuple == this.mLastMatch) {
            return;
        }
        if (this.mLastMatch != null) {
            cancel();
        }
        this.mLastMatch = tuple;
        if (tuple != null) {
            start(tuple);
        }
    }

    private void start(Tuple tuple) {
        tuple.mAnimator.setTarget(getTarget());
        this.mRunningAnimator = tuple.mAnimator;
        this.mRunningAnimator.start();
    }

    private void cancel() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.cancel();
            this.mRunningAnimator = null;
        }
    }

    public ArrayList<Tuple> getTuples() {
        return this.mTuples;
    }

    public void jumpToCurrentState() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.end();
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

    public ConstantState<StateListAnimator> createConstantState() {
        return new StateListAnimatorConstantState(this);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Tuple {
        final Animator mAnimator;
        final int[] mSpecs;

        private Tuple(int[] iArr, Animator animator) {
            this.mSpecs = iArr;
            this.mAnimator = animator;
        }

        public int[] getSpecs() {
            return this.mSpecs;
        }

        public Animator getAnimator() {
            return this.mAnimator;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class StateListAnimatorConstantState extends ConstantState<StateListAnimator> {
        final StateListAnimator mAnimator;
        int mChangingConf;

        public StateListAnimatorConstantState(StateListAnimator stateListAnimator) {
            this.mAnimator = stateListAnimator;
            this.mAnimator.mConstantState = this;
            this.mChangingConf = this.mAnimator.getChangingConfigurations();
        }

        @Override // android.content.res.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConf;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.content.res.ConstantState
        public StateListAnimator newInstance() {
            StateListAnimator m7clone = this.mAnimator.m7clone();
            m7clone.mConstantState = this;
            return m7clone;
        }
    }
}
