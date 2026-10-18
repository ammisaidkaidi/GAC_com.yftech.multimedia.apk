package android.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToDoubleFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public final class SmartSelectSprite {
    private static final int CORNER_DURATION = 50;
    private static final int EXPAND_DURATION = 300;
    static final Comparator<RectF> RECTANGLE_COMPARATOR = Comparator.comparingDouble(new ToDoubleFunction() { // from class: android.widget.-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 double, still in use, count: 1, list:
              (r0v1 double) from 0x0006: RETURN (r0v1 double)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
            	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
            	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:56)
            	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:452)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // java.util.function.ToDoubleFunction
        public final double applyAsDouble(java.lang.Object r1) {
            /*
                r0 = this;
                android.graphics.RectF r1 = (android.graphics.RectF) r1
                double r0 = android.widget.SmartSelectSprite.lambda$static$0(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: android.widget.$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA.applyAsDouble(java.lang.Object):double");
        }
    }).thenComparingDouble(new ToDoubleFunction() { // from class: android.widget.-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 double, still in use, count: 1, list:
              (r0v1 double) from 0x0006: RETURN (r0v1 double)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
            	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
            	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:56)
            	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:452)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // java.util.function.ToDoubleFunction
        public final double applyAsDouble(java.lang.Object r1) {
            /*
                r0 = this;
                android.graphics.RectF r1 = (android.graphics.RectF) r1
                double r0 = android.widget.SmartSelectSprite.lambda$static$1(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: android.widget.$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE.applyAsDouble(java.lang.Object):double");
        }
    });
    private final Interpolator mCornerInterpolator;
    private final Interpolator mExpandInterpolator;
    private final int mFillColor;
    private final Runnable mInvalidator;
    private Animator mActiveAnimator = null;
    private Drawable mExistingDrawable = null;
    private RectangleList mExistingRectangleList = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class RectangleWithTextSelectionLayout {
        private final RectF mRectangle;
        private final int mTextSelectionLayout;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RectangleWithTextSelectionLayout(RectF rectF, int i) {
            this.mRectangle = (RectF) Preconditions.checkNotNull(rectF);
            this.mTextSelectionLayout = i;
        }

        public RectF getRectangle() {
            return this.mRectangle;
        }

        public int getTextSelectionLayout() {
            return this.mTextSelectionLayout;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class RoundedRectangleShape extends Shape {
        private static final String PROPERTY_ROUND_RATIO = "roundRatio";
        private final RectF mBoundingRectangle;
        private final float mBoundingWidth;
        private final Path mClipPath;
        private final RectF mDrawRect;
        private final int mExpansionDirection;
        private final boolean mInverted;
        private float mLeftBoundary;
        private float mRightBoundary;
        private float mRoundRatio;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        private @interface ExpansionDirection {
            public static final int CENTER = 0;
            public static final int LEFT = -1;
            public static final int RIGHT = 1;
        }

        private static int invert(int i) {
            return i * (-1);
        }

        private RoundedRectangleShape(RectF rectF, int i, boolean z) {
            this.mRoundRatio = 1.0f;
            this.mDrawRect = new RectF();
            this.mClipPath = new Path();
            this.mLeftBoundary = 0.0f;
            this.mRightBoundary = 0.0f;
            this.mBoundingRectangle = new RectF(rectF);
            this.mBoundingWidth = rectF.width();
            this.mInverted = z && i != 0;
            if (z) {
                this.mExpansionDirection = invert(i);
            } else {
                this.mExpansionDirection = i;
            }
            if (rectF.height() > rectF.width()) {
                setRoundRatio(0.0f);
            } else {
                setRoundRatio(1.0f);
            }
        }

        @Override // android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            if (this.mLeftBoundary == this.mRightBoundary) {
                return;
            }
            float cornerRadius = getCornerRadius();
            float adjustedCornerRadius = getAdjustedCornerRadius();
            this.mDrawRect.set(this.mBoundingRectangle);
            float f = cornerRadius / 2.0f;
            this.mDrawRect.left = (this.mBoundingRectangle.left + this.mLeftBoundary) - f;
            this.mDrawRect.right = this.mBoundingRectangle.left + this.mRightBoundary + f;
            canvas.save();
            this.mClipPath.reset();
            this.mClipPath.addRoundRect(this.mDrawRect, adjustedCornerRadius, adjustedCornerRadius, Path.Direction.CW);
            canvas.clipPath(this.mClipPath);
            canvas.drawRect(this.mBoundingRectangle, paint);
            canvas.restore();
        }

        void setRoundRatio(float f) {
            this.mRoundRatio = f;
        }

        float getRoundRatio() {
            return this.mRoundRatio;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStartBoundary(float f) {
            if (this.mInverted) {
                this.mRightBoundary = this.mBoundingWidth - f;
            } else {
                this.mLeftBoundary = f;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEndBoundary(float f) {
            if (this.mInverted) {
                this.mLeftBoundary = this.mBoundingWidth - f;
            } else {
                this.mRightBoundary = f;
            }
        }

        private float getCornerRadius() {
            return Math.min(this.mBoundingRectangle.width(), this.mBoundingRectangle.height());
        }

        private float getAdjustedCornerRadius() {
            return getCornerRadius() * this.mRoundRatio;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getBoundingWidth() {
            return (int) (this.mBoundingRectangle.width() + getCornerRadius());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class RectangleList extends Shape {
        private static final String PROPERTY_LEFT_BOUNDARY = "leftBoundary";
        private static final String PROPERTY_RIGHT_BOUNDARY = "rightBoundary";
        private int mDisplayType;
        private final Path mOutlinePolygonPath;
        private final List<RoundedRectangleShape> mRectangles;
        private final List<RoundedRectangleShape> mReversedRectangles;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        private @interface DisplayType {
            public static final int POLYGON = 1;
            public static final int RECTANGLES = 0;
        }

        private RectangleList(List<RoundedRectangleShape> list) {
            this.mDisplayType = 0;
            this.mRectangles = new ArrayList(list);
            this.mReversedRectangles = new ArrayList(list);
            Collections.reverse(this.mReversedRectangles);
            this.mOutlinePolygonPath = generateOutlinePolygonPath(list);
        }

        private void setLeftBoundary(float f) {
            float totalWidth = getTotalWidth();
            for (RoundedRectangleShape roundedRectangleShape : this.mReversedRectangles) {
                float boundingWidth = totalWidth - roundedRectangleShape.getBoundingWidth();
                if (f < boundingWidth) {
                    roundedRectangleShape.setStartBoundary(0.0f);
                } else if (f > totalWidth) {
                    roundedRectangleShape.setStartBoundary(roundedRectangleShape.getBoundingWidth());
                } else {
                    roundedRectangleShape.setStartBoundary((roundedRectangleShape.getBoundingWidth() - totalWidth) + f);
                }
                totalWidth = boundingWidth;
            }
        }

        private void setRightBoundary(float f) {
            float f2 = 0.0f;
            for (RoundedRectangleShape roundedRectangleShape : this.mRectangles) {
                float boundingWidth = roundedRectangleShape.getBoundingWidth() + f2;
                if (boundingWidth < f) {
                    roundedRectangleShape.setEndBoundary(roundedRectangleShape.getBoundingWidth());
                } else if (f2 > f) {
                    roundedRectangleShape.setEndBoundary(0.0f);
                } else {
                    roundedRectangleShape.setEndBoundary(f - f2);
                }
                f2 = boundingWidth;
            }
        }

        void setDisplayType(int i) {
            this.mDisplayType = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTotalWidth() {
            Iterator<RoundedRectangleShape> it = this.mRectangles.iterator();
            int i = 0;
            while (it.hasNext()) {
                i = (int) (i + it.next().getBoundingWidth());
            }
            return i;
        }

        @Override // android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            if (this.mDisplayType == 1) {
                drawPolygon(canvas, paint);
            } else {
                drawRectangles(canvas, paint);
            }
        }

        private void drawRectangles(Canvas canvas, Paint paint) {
            Iterator<RoundedRectangleShape> it = this.mRectangles.iterator();
            while (it.hasNext()) {
                it.next().draw(canvas, paint);
            }
        }

        private void drawPolygon(Canvas canvas, Paint paint) {
            canvas.drawPath(this.mOutlinePolygonPath, paint);
        }

        private static Path generateOutlinePolygonPath(List<RoundedRectangleShape> list) {
            Path path = new Path();
            for (RoundedRectangleShape roundedRectangleShape : list) {
                Path path2 = new Path();
                path2.addRect(roundedRectangleShape.mBoundingRectangle, Path.Direction.CW);
                path.op(path2, Path.Op.UNION);
            }
            return path;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmartSelectSprite(Context context, int i, Runnable runnable) {
        this.mExpandInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_slow_in);
        this.mCornerInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_linear_in);
        this.mFillColor = i;
        this.mInvalidator = (Runnable) Preconditions.checkNotNull(runnable);
    }

    public void startAnimation(PointF pointF, List<RectangleWithTextSelectionLayout> list, Runnable runnable) {
        RectangleWithTextSelectionLayout rectangleWithTextSelectionLayout;
        cancelAnimation();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: android.widget.-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartSelectSprite.this.mInvalidator.run();
            }
        };
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        Iterator<RectangleWithTextSelectionLayout> it = list.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                rectangleWithTextSelectionLayout = null;
                break;
            }
            rectangleWithTextSelectionLayout = it.next();
            RectF rectangle = rectangleWithTextSelectionLayout.getRectangle();
            if (contains(rectangle, pointF)) {
                break;
            } else {
                i = (int) (i + rectangle.width());
            }
        }
        if (rectangleWithTextSelectionLayout == null) {
            throw new IllegalArgumentException("Center point is not inside any of the rectangles!");
        }
        int i2 = (int) (i + (pointF.x - rectangleWithTextSelectionLayout.getRectangle().left));
        int[] generateDirections = generateDirections(rectangleWithTextSelectionLayout, list);
        for (int i3 = 0; i3 < size; i3++) {
            RectangleWithTextSelectionLayout rectangleWithTextSelectionLayout2 = list.get(i3);
            RoundedRectangleShape roundedRectangleShape = new RoundedRectangleShape(rectangleWithTextSelectionLayout2.getRectangle(), generateDirections[i3], rectangleWithTextSelectionLayout2.getTextSelectionLayout() == 0);
            arrayList2.add(createCornerAnimator(roundedRectangleShape, animatorUpdateListener));
            arrayList.add(roundedRectangleShape);
        }
        RectangleList rectangleList = new RectangleList(arrayList);
        ShapeDrawable shapeDrawable = new ShapeDrawable(rectangleList);
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(this.mFillColor);
        paint.setStyle(Paint.Style.FILL);
        this.mExistingRectangleList = rectangleList;
        this.mExistingDrawable = shapeDrawable;
        float f = i2;
        this.mActiveAnimator = createAnimator(rectangleList, f, f, arrayList2, animatorUpdateListener, runnable);
        this.mActiveAnimator.start();
    }

    public boolean isAnimationActive() {
        return this.mActiveAnimator != null && this.mActiveAnimator.isRunning();
    }

    private Animator createAnimator(RectangleList rectangleList, float f, float f2, List<Animator> list, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Runnable runnable) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(rectangleList, "rightBoundary", f2, rectangleList.getTotalWidth());
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(rectangleList, "leftBoundary", f, 0.0f);
        ofFloat.setDuration(300L);
        ofFloat2.setDuration(300L);
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat2.addUpdateListener(animatorUpdateListener);
        ofFloat.setInterpolator(this.mExpandInterpolator);
        ofFloat2.setInterpolator(this.mExpandInterpolator);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(list);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ofFloat2, ofFloat);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playSequentially(animatorSet2, animatorSet);
        setUpAnimatorListener(animatorSet3, runnable);
        return animatorSet3;
    }

    private void setUpAnimatorListener(Animator animator, final Runnable runnable) {
        animator.addListener(new Animator.AnimatorListener() { // from class: android.widget.SmartSelectSprite.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                SmartSelectSprite.this.mExistingRectangleList.setDisplayType(1);
                SmartSelectSprite.this.mInvalidator.run();
                runnable.run();
            }
        });
    }

    private ObjectAnimator createCornerAnimator(RoundedRectangleShape roundedRectangleShape, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(roundedRectangleShape, "roundRatio", roundedRectangleShape.getRoundRatio(), 0.0f);
        ofFloat.setDuration(50L);
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat.setInterpolator(this.mCornerInterpolator);
        return ofFloat;
    }

    private static int[] generateDirections(RectangleWithTextSelectionLayout rectangleWithTextSelectionLayout, List<RectangleWithTextSelectionLayout> list) {
        int[] iArr = new int[list.size()];
        int indexOf = list.indexOf(rectangleWithTextSelectionLayout);
        for (int i = 0; i < indexOf - 1; i++) {
            iArr[i] = -1;
        }
        if (list.size() == 1) {
            iArr[indexOf] = 0;
        } else if (indexOf == 0) {
            iArr[indexOf] = -1;
        } else if (indexOf == list.size() - 1) {
            iArr[indexOf] = 1;
        } else {
            iArr[indexOf] = 0;
        }
        for (int i2 = indexOf + 1; i2 < iArr.length; i2++) {
            iArr[i2] = 1;
        }
        return iArr;
    }

    private static boolean contains(RectF rectF, PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        return f >= rectF.left && f <= rectF.right && f2 >= rectF.top && f2 <= rectF.bottom;
    }

    private void removeExistingDrawables() {
        this.mExistingDrawable = null;
        this.mExistingRectangleList = null;
        this.mInvalidator.run();
    }

    public void cancelAnimation() {
        if (this.mActiveAnimator != null) {
            this.mActiveAnimator.cancel();
            this.mActiveAnimator = null;
            removeExistingDrawables();
        }
    }

    public void draw(Canvas canvas) {
        if (this.mExistingDrawable != null) {
            this.mExistingDrawable.draw(canvas);
        }
    }
}
