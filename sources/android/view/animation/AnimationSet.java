package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.telephony.SubscriptionPlan;
import android.util.AttributeSet;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AnimationSet extends Animation {
    private static final int PROPERTY_CHANGE_BOUNDS_MASK = 128;
    private static final int PROPERTY_DURATION_MASK = 32;
    private static final int PROPERTY_FILL_AFTER_MASK = 1;
    private static final int PROPERTY_FILL_BEFORE_MASK = 2;
    private static final int PROPERTY_MORPH_MATRIX_MASK = 64;
    private static final int PROPERTY_REPEAT_MODE_MASK = 4;
    private static final int PROPERTY_SHARE_INTERPOLATOR_MASK = 16;
    private static final int PROPERTY_START_OFFSET_MASK = 8;
    private ArrayList<Animation> mAnimations;
    private boolean mDirty;
    private int mFlags;
    private boolean mHasAlpha;
    private long mLastEnd;
    private long[] mStoredOffsets;
    private Transformation mTempTransformation;

    public AnimationSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFlags = 0;
        this.mAnimations = new ArrayList<>();
        this.mTempTransformation = new Transformation();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AnimationSet);
        setFlag(16, obtainStyledAttributes.getBoolean(1, true));
        init();
        if (context.getApplicationInfo().targetSdkVersion >= 14) {
            if (obtainStyledAttributes.hasValue(0)) {
                this.mFlags |= 32;
            }
            if (obtainStyledAttributes.hasValue(2)) {
                this.mFlags = 2 | this.mFlags;
            }
            if (obtainStyledAttributes.hasValue(3)) {
                this.mFlags |= 1;
            }
            if (obtainStyledAttributes.hasValue(5)) {
                this.mFlags |= 4;
            }
            if (obtainStyledAttributes.hasValue(4)) {
                this.mFlags |= 8;
            }
        }
        obtainStyledAttributes.recycle();
    }

    public AnimationSet(boolean z) {
        this.mFlags = 0;
        this.mAnimations = new ArrayList<>();
        this.mTempTransformation = new Transformation();
        setFlag(16, z);
        init();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.animation.Animation
    /* renamed from: clone */
    public AnimationSet mo15clone() throws CloneNotSupportedException {
        AnimationSet animationSet = (AnimationSet) super.mo15clone();
        animationSet.mTempTransformation = new Transformation();
        animationSet.mAnimations = new ArrayList<>();
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        for (int i = 0; i < size; i++) {
            animationSet.mAnimations.add(arrayList.get(i).mo15clone());
        }
        return animationSet;
    }

    private void setFlag(int i, boolean z) {
        if (z) {
            this.mFlags = i | this.mFlags;
        } else {
            this.mFlags = (~i) & this.mFlags;
        }
    }

    private void init() {
        this.mStartTime = 0L;
    }

    @Override // android.view.animation.Animation
    public void setFillAfter(boolean z) {
        this.mFlags |= 1;
        super.setFillAfter(z);
    }

    @Override // android.view.animation.Animation
    public void setFillBefore(boolean z) {
        this.mFlags |= 2;
        super.setFillBefore(z);
    }

    @Override // android.view.animation.Animation
    public void setRepeatMode(int i) {
        this.mFlags |= 4;
        super.setRepeatMode(i);
    }

    @Override // android.view.animation.Animation
    public void setStartOffset(long j) {
        this.mFlags |= 8;
        super.setStartOffset(j);
    }

    @Override // android.view.animation.Animation
    public boolean hasAlpha() {
        if (this.mDirty) {
            int i = 0;
            this.mHasAlpha = false;
            this.mDirty = false;
            int size = this.mAnimations.size();
            ArrayList<Animation> arrayList = this.mAnimations;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (arrayList.get(i).hasAlpha()) {
                    this.mHasAlpha = true;
                    break;
                }
                i++;
            }
        }
        return this.mHasAlpha;
    }

    @Override // android.view.animation.Animation
    public void setDuration(long j) {
        this.mFlags |= 32;
        super.setDuration(j);
        this.mLastEnd = this.mStartOffset + this.mDuration;
    }

    public void addAnimation(Animation animation) {
        this.mAnimations.add(animation);
        if (((this.mFlags & 64) == 0) && animation.willChangeTransformationMatrix()) {
            this.mFlags |= 64;
        }
        if (((this.mFlags & 128) == 0) && animation.willChangeBounds()) {
            this.mFlags |= 128;
        }
        if ((this.mFlags & 32) == 32) {
            this.mLastEnd = this.mStartOffset + this.mDuration;
        } else if (this.mAnimations.size() == 1) {
            this.mDuration = animation.getStartOffset() + animation.getDuration();
            this.mLastEnd = this.mStartOffset + this.mDuration;
        } else {
            this.mLastEnd = Math.max(this.mLastEnd, this.mStartOffset + animation.getStartOffset() + animation.getDuration());
            this.mDuration = this.mLastEnd - this.mStartOffset;
        }
        this.mDirty = true;
    }

    @Override // android.view.animation.Animation
    public void setStartTime(long j) {
        super.setStartTime(j);
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        for (int i = 0; i < size; i++) {
            arrayList.get(i).setStartTime(j);
        }
    }

    @Override // android.view.animation.Animation
    public long getStartTime() {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        long j = SubscriptionPlan.BYTES_UNLIMITED;
        for (int i = 0; i < size; i++) {
            j = Math.min(j, arrayList.get(i).getStartTime());
        }
        return j;
    }

    @Override // android.view.animation.Animation
    public void restrictDuration(long j) {
        super.restrictDuration(j);
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).restrictDuration(j);
        }
    }

    @Override // android.view.animation.Animation
    public long getDuration() {
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        if ((this.mFlags & 32) == 32) {
            return this.mDuration;
        }
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, arrayList.get(i).getDuration());
        }
        return j;
    }

    @Override // android.view.animation.Animation
    public long computeDurationHint() {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        long j = 0;
        for (int i = size - 1; i >= 0; i--) {
            long computeDurationHint = arrayList.get(i).computeDurationHint();
            if (computeDurationHint > j) {
                j = computeDurationHint;
            }
        }
        return j;
    }

    @Override // android.view.animation.Animation
    public void initializeInvalidateRegion(int i, int i2, int i3, int i4) {
        RectF rectF = this.mPreviousRegion;
        rectF.set(i, i2, i3, i4);
        rectF.inset(-1.0f, -1.0f);
        if (this.mFillBefore) {
            int size = this.mAnimations.size();
            ArrayList<Animation> arrayList = this.mAnimations;
            Transformation transformation = this.mTempTransformation;
            Transformation transformation2 = this.mPreviousTransformation;
            for (int i5 = size - 1; i5 >= 0; i5--) {
                Animation animation = arrayList.get(i5);
                if (!animation.isFillEnabled() || animation.getFillBefore() || animation.getStartOffset() == 0) {
                    transformation.clear();
                    Interpolator interpolator = animation.mInterpolator;
                    animation.applyTransformation(interpolator != null ? interpolator.getInterpolation(0.0f) : 0.0f, transformation);
                    transformation2.compose(transformation);
                }
            }
        }
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j, Transformation transformation) {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        Transformation transformation2 = this.mTempTransformation;
        transformation.clear();
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        for (int i = size - 1; i >= 0; i--) {
            Animation animation = arrayList.get(i);
            transformation2.clear();
            z3 = animation.getTransformation(j, transformation2, getScaleFactor()) || z3;
            transformation.compose(transformation2);
            z2 = z2 || animation.hasStarted();
            z = animation.hasEnded() && z;
        }
        if (z2 && !this.mStarted) {
            if (this.mListener != null) {
                this.mListener.onAnimationStart(this);
            }
            this.mStarted = true;
        }
        if (z != this.mEnded) {
            if (this.mListener != null) {
                this.mListener.onAnimationEnd(this);
            }
            this.mEnded = z;
        }
        return z3;
    }

    @Override // android.view.animation.Animation
    public void scaleCurrentDuration(float f) {
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).scaleCurrentDuration(f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r3.length != r9) goto L35;
     */
    @Override // android.view.animation.Animation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initialize(int i, int i2, int i3, int i4) {
        long j;
        int i5;
        boolean z;
        Interpolator interpolator;
        Interpolator interpolator2;
        boolean z2;
        super.initialize(i, i2, i3, i4);
        boolean z3 = (this.mFlags & 32) == 32;
        boolean z4 = (this.mFlags & 1) == 1;
        boolean z5 = (this.mFlags & 2) == 2;
        boolean z6 = (this.mFlags & 4) == 4;
        boolean z7 = (this.mFlags & 16) == 16;
        boolean z8 = (this.mFlags & 8) == 8;
        if (z7) {
            ensureInterpolator();
        }
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        long j2 = this.mDuration;
        boolean z9 = this.mFillAfter;
        boolean z10 = this.mFillBefore;
        int i6 = this.mRepeatMode;
        Interpolator interpolator3 = this.mInterpolator;
        long j3 = this.mStartOffset;
        long[] jArr = this.mStoredOffsets;
        if (z8) {
            if (jArr != null) {
                j = j3;
            } else {
                j = j3;
            }
            jArr = new long[size];
            this.mStoredOffsets = jArr;
        } else {
            j = j3;
            if (jArr != null) {
                jArr = null;
                this.mStoredOffsets = null;
            }
        }
        int i7 = 0;
        while (i7 < size) {
            Animation animation = arrayList.get(i7);
            if (z3) {
                animation.setDuration(j2);
            }
            if (z4) {
                animation.setFillAfter(z9);
            }
            if (z5) {
                animation.setFillBefore(z10);
            }
            if (z6) {
                i5 = i6;
                animation.setRepeatMode(i5);
            } else {
                i5 = i6;
            }
            if (z7) {
                z = z3;
                interpolator = interpolator3;
                animation.setInterpolator(interpolator);
            } else {
                z = z3;
                interpolator = interpolator3;
            }
            if (z8) {
                long startOffset = animation.getStartOffset();
                interpolator2 = interpolator;
                z2 = z4;
                animation.setStartOffset(startOffset + j);
                jArr[i7] = startOffset;
            } else {
                interpolator2 = interpolator;
                z2 = z4;
            }
            animation.initialize(i, i2, i3, i4);
            i7++;
            i6 = i5;
            z3 = z;
            z4 = z2;
            interpolator3 = interpolator2;
            jArr = jArr;
            z8 = z8;
        }
    }

    @Override // android.view.animation.Animation
    public void reset() {
        super.reset();
        restoreChildrenStartOffset();
    }

    void restoreChildrenStartOffset() {
        long[] jArr = this.mStoredOffsets;
        if (jArr == null) {
            return;
        }
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).setStartOffset(jArr[i]);
        }
    }

    public List<Animation> getAnimations() {
        return this.mAnimations;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return (this.mFlags & 64) == 64;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return (this.mFlags & 128) == 128;
    }
}
