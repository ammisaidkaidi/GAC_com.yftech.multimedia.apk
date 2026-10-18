package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.DrawableContainer;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class AnimationDrawable extends DrawableContainer implements Runnable, Animatable {
    private boolean mAnimating;
    private AnimationState mAnimationState;
    private int mCurFrame;
    private boolean mMutated;
    private boolean mRunning;

    public AnimationDrawable() {
        this(null, null);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            unscheduleSelf(this);
        } else if (z2 || visible) {
            setFrame(z2 || ((!this.mRunning && !this.mAnimationState.mOneShot) || this.mCurFrame >= this.mAnimationState.getChildCount()) ? 0 : this.mCurFrame, true, this.mAnimating);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        boolean z = true;
        this.mAnimating = true;
        if (isRunning()) {
            return;
        }
        if (this.mAnimationState.getChildCount() <= 1 && this.mAnimationState.mOneShot) {
            z = false;
        }
        setFrame(0, false, z);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimating = false;
        if (isRunning()) {
            this.mCurFrame = 0;
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // java.lang.Runnable
    public void run() {
        nextFrame(false);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        this.mRunning = false;
        super.unscheduleSelf(runnable);
    }

    public int getNumberOfFrames() {
        return this.mAnimationState.getChildCount();
    }

    public Drawable getFrame(int i) {
        return this.mAnimationState.getChild(i);
    }

    public int getDuration(int i) {
        return this.mAnimationState.mDurations[i];
    }

    public boolean isOneShot() {
        return this.mAnimationState.mOneShot;
    }

    public void setOneShot(boolean z) {
        this.mAnimationState.mOneShot = z;
    }

    public void addFrame(Drawable drawable, int i) {
        this.mAnimationState.addFrame(drawable, i);
        if (this.mRunning) {
            return;
        }
        setFrame(0, true, false);
    }

    private void nextFrame(boolean z) {
        int i = this.mCurFrame + 1;
        int childCount = this.mAnimationState.getChildCount();
        boolean z2 = this.mAnimationState.mOneShot && i >= childCount + (-1);
        if (!this.mAnimationState.mOneShot && i >= childCount) {
            i = 0;
        }
        setFrame(i, z, true ^ z2);
    }

    private void setFrame(int i, boolean z, boolean z2) {
        if (i >= this.mAnimationState.getChildCount()) {
            return;
        }
        this.mAnimating = z2;
        this.mCurFrame = i;
        selectDrawable(i);
        if (z || z2) {
            unscheduleSelf(this);
        }
        if (z2) {
            this.mCurFrame = i;
            this.mRunning = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + this.mAnimationState.mDurations[i]);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.AnimationDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, obtainAttributes, 0);
        updateStateFromTypedArray(obtainAttributes);
        updateDensity(resources);
        obtainAttributes.recycle();
        inflateChildElements(resources, xmlPullParser, attributeSet, theme);
        setFrame(0, true, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        if (r5 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
    
        r2 = r8.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r2 != 4) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r2 != 2) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        r5 = android.graphics.drawable.Drawable.createFromXmlInner(r7, r8, r9, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r8.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0069, code lost:
    
        r6.mAnimationState.addFrame(r5, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006e, code lost:
    
        if (r5 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        r5.setCallback(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.AnimationDrawableItem);
                int i = obtainAttributes.getInt(0, -1);
                if (i < 0) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'duration' attribute");
                }
                Drawable drawable = obtainAttributes.getDrawable(1);
                obtainAttributes.recycle();
            }
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        this.mAnimationState.mVariablePadding = typedArray.getBoolean(1, this.mAnimationState.mVariablePadding);
        this.mAnimationState.mOneShot = typedArray.getBoolean(2, this.mAnimationState.mOneShot);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mAnimationState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.graphics.drawable.DrawableContainer
    public AnimationState cloneConstantState() {
        return new AnimationState(this.mAnimationState, this, null);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AnimationState extends DrawableContainer.DrawableContainerState {
        private int[] mDurations;
        private boolean mOneShot;

        AnimationState(AnimationState animationState, AnimationDrawable animationDrawable, Resources resources) {
            super(animationState, animationDrawable, resources);
            this.mOneShot = false;
            if (animationState != null) {
                this.mDurations = animationState.mDurations;
                this.mOneShot = animationState.mOneShot;
            } else {
                this.mDurations = new int[getCapacity()];
                this.mOneShot = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mutate() {
            this.mDurations = (int[]) this.mDurations.clone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimationDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimationDrawable(this, resources);
        }

        public void addFrame(Drawable drawable, int i) {
            this.mDurations[super.addChild(drawable)] = i;
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int i, int i2) {
            super.growArray(i, i2);
            int[] iArr = new int[i2];
            System.arraycopy(this.mDurations, 0, iArr, 0, i);
            this.mDurations = iArr;
        }
    }

    @Override // android.graphics.drawable.DrawableContainer
    protected void setConstantState(DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof AnimationState) {
            this.mAnimationState = (AnimationState) drawableContainerState;
        }
    }

    private AnimationDrawable(AnimationState animationState, Resources resources) {
        this.mCurFrame = 0;
        setConstantState(new AnimationState(animationState, this, resources));
        if (animationState != null) {
            setFrame(0, true, false);
        }
    }
}
