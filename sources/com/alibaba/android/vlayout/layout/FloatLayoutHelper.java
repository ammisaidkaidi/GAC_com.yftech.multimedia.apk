package com.alibaba.android.vlayout.layout;

import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FloatLayoutHelper extends FixAreaLayoutHelper {
    private static final String TAG = "FloatLayoutHelper";
    private int mTransitionX = 0;
    private int mTransitionY = 0;
    private int mZIndex = 1;
    private int mPos = -1;
    protected View mFixView = null;
    protected boolean mDoNormalHandle = false;
    private int mX = 0;
    private int mY = 0;
    private int mAlignType = 0;
    private final View.OnTouchListener touchDragListener = new View.OnTouchListener() { // from class: com.alibaba.android.vlayout.layout.FloatLayoutHelper.1
        private int bottomMargin;
        private boolean isDrag;
        private int lastPosX;
        private int lastPosY;
        private int leftMargin;
        private int mTouchSlop;
        private final Rect parentLoction = new Rect();
        private int parentViewHeight;
        private int parentViewWidth;
        private int rightMargin;
        private int topMargin;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.mTouchSlop == 0) {
                this.mTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
                this.parentViewHeight = ((View) view.getParent()).getHeight();
                this.parentViewWidth = ((View) view.getParent()).getWidth();
                ((View) view.getParent()).getGlobalVisibleRect(this.parentLoction);
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    this.leftMargin = marginLayoutParams.leftMargin;
                    this.topMargin = marginLayoutParams.topMargin;
                    this.rightMargin = marginLayoutParams.rightMargin;
                    this.bottomMargin = marginLayoutParams.bottomMargin;
                }
            }
            switch (motionEvent.getAction()) {
                case 0:
                    this.isDrag = false;
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    this.lastPosX = (int) motionEvent.getX();
                    this.lastPosY = (int) motionEvent.getY();
                    break;
                case 1:
                case 3:
                    doPullOverAnimation(view);
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    view.setPressed(false);
                    break;
                case 2:
                    if (Math.abs(motionEvent.getX() - this.lastPosX) > this.mTouchSlop || Math.abs(motionEvent.getY() - this.lastPosY) > this.mTouchSlop) {
                        this.isDrag = true;
                    }
                    if (this.isDrag) {
                        int rawX = (int) motionEvent.getRawX();
                        int rawY = (int) motionEvent.getRawY();
                        int i = rawX - this.parentLoction.left;
                        int i2 = rawY - this.parentLoction.top;
                        int width = view.getWidth();
                        int height = i2 - (view.getHeight() / 2);
                        view.setTranslationX((((i - (width / 2)) - view.getLeft()) - this.leftMargin) - FloatLayoutHelper.this.mAdjuster.left);
                        int top = (height - view.getTop()) - this.topMargin;
                        if (view.getHeight() + top + view.getTop() + this.bottomMargin > this.parentViewHeight) {
                            top = ((this.parentViewHeight - view.getHeight()) - view.getTop()) - this.bottomMargin;
                        }
                        if ((view.getTop() + top) - this.topMargin < 0) {
                            top = (-view.getTop()) + this.topMargin;
                        }
                        view.setTranslationY(top);
                        break;
                    }
                    break;
            }
            return this.isDrag;
        }

        private void doPullOverAnimation(View view) {
            ObjectAnimator ofFloat;
            if (view.getTranslationX() + (view.getWidth() / 2) + view.getLeft() > this.parentViewWidth / 2) {
                ofFloat = ObjectAnimator.ofFloat(view, "translationX", view.getTranslationX(), (((this.parentViewWidth - view.getWidth()) - view.getLeft()) - this.rightMargin) - FloatLayoutHelper.this.mAdjuster.right);
                FloatLayoutHelper.this.mTransitionX = (((this.parentViewWidth - view.getWidth()) - view.getLeft()) - this.rightMargin) - FloatLayoutHelper.this.mAdjuster.right;
            } else {
                ofFloat = ObjectAnimator.ofFloat(view, "translationX", view.getTranslationX(), (-view.getLeft()) + this.leftMargin + FloatLayoutHelper.this.mAdjuster.left);
                FloatLayoutHelper.this.mTransitionX = (-view.getLeft()) + this.leftMargin + FloatLayoutHelper.this.mAdjuster.left;
            }
            FloatLayoutHelper.this.mTransitionY = (int) view.getTranslationY();
            ofFloat.setDuration(200L);
            ofFloat.start();
        }
    };
    private boolean dragEnable = true;

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public boolean requireLayoutView() {
        return false;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setBgColor(int i) {
    }

    protected boolean shouldBeDraw(int i, int i2) {
        return true;
    }

    public void setDefaultLocation(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setAlignType(int i) {
        this.mAlignType = i;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void setItemCount(int i) {
        if (i > 0) {
            super.setItemCount(1);
        } else {
            super.setItemCount(0);
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        this.mPos = i;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        View view = this.mFixView;
        if (view == null) {
            view = layoutStateWrapper.next(recycler);
        } else {
            layoutStateWrapper.skipCurrentPosition();
        }
        if (view == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        layoutManagerHelper.getChildViewHolder(view).setIsRecyclable(false);
        this.mDoNormalHandle = state.isPreLayout();
        if (this.mDoNormalHandle) {
            layoutManagerHelper.addChildView(layoutStateWrapper, view);
        }
        this.mFixView = view;
        this.mFixView.setClickable(true);
        doMeasureAndLayout(view, layoutManagerHelper);
        layoutChunkResult.mConsumed = 0;
        layoutChunkResult.mIgnoreConsumed = true;
        handleStateOnResult(layoutChunkResult, view);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void beforeLayout(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutManagerHelper layoutManagerHelper) {
        super.beforeLayout(recycler, state, layoutManagerHelper);
        if (this.mFixView != null && layoutManagerHelper.isViewHolderUpdated(this.mFixView)) {
            layoutManagerHelper.removeChildView(this.mFixView);
            layoutManagerHelper.recycleView(this.mFixView);
            this.mFixView.setOnTouchListener(null);
            this.mFixView = null;
        }
        this.mDoNormalHandle = false;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        super.afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
        if (this.mPos < 0) {
            return;
        }
        if (this.mDoNormalHandle) {
            this.mFixView = null;
            return;
        }
        if (shouldBeDraw(i, i2)) {
            if (this.mFixView != null) {
                if (this.mFixView.getParent() == null) {
                    layoutManagerHelper.addFixedView(this.mFixView);
                    if (this.dragEnable) {
                        this.mFixView.setOnTouchListener(this.touchDragListener);
                    }
                    this.mFixView.setTranslationX(this.mTransitionX);
                    this.mFixView.setTranslationY(this.mTransitionY);
                    return;
                }
                layoutManagerHelper.showView(this.mFixView);
                if (this.dragEnable) {
                    this.mFixView.setOnTouchListener(this.touchDragListener);
                }
                layoutManagerHelper.addFixedView(this.mFixView);
                return;
            }
            this.mFixView = recycler.getViewForPosition(this.mPos);
            layoutManagerHelper.getChildViewHolder(this.mFixView).setIsRecyclable(false);
            doMeasureAndLayout(this.mFixView, layoutManagerHelper);
            layoutManagerHelper.addFixedView(this.mFixView);
            this.mFixView.setTranslationX(this.mTransitionX);
            this.mFixView.setTranslationY(this.mTransitionY);
            if (this.dragEnable) {
                this.mFixView.setOnTouchListener(this.touchDragListener);
            }
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    @Nullable
    public View getFixedView() {
        return this.mFixView;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
        if (this.mFixView != null) {
            this.mFixView.setOnTouchListener(null);
            layoutManagerHelper.removeChildView(this.mFixView);
            layoutManagerHelper.recycleView(this.mFixView);
            this.mFixView = null;
        }
    }

    private void doMeasureAndLayout(View view, LayoutManagerHelper layoutManagerHelper) {
        int childMeasureSpec;
        int paddingLeft;
        int paddingTop;
        int decoratedMeasurementInOther;
        int decoratedMeasurement;
        int i;
        int i2;
        int childMeasureSpec2;
        if (view == null || layoutManagerHelper == null) {
            return;
        }
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view.getLayoutParams();
        boolean z = layoutManagerHelper.getOrientation() == 1;
        if (z) {
            int childMeasureSpec3 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight(), layoutParams.width, !z);
            if (!Float.isNaN(layoutParams.mAspectRatio) && layoutParams.mAspectRatio > 0.0f) {
                childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), (int) ((View.MeasureSpec.getSize(childMeasureSpec3) / layoutParams.mAspectRatio) + 0.5f), z);
            } else if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
                childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), (int) ((View.MeasureSpec.getSize(childMeasureSpec3) / this.mAspectRatio) + 0.5f), z);
            } else {
                childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), layoutParams.height, z);
            }
            layoutManagerHelper.measureChild(view, childMeasureSpec3, childMeasureSpec2);
        } else {
            int childMeasureSpec4 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), layoutParams.height, z);
            if (!Float.isNaN(layoutParams.mAspectRatio) && layoutParams.mAspectRatio > 0.0f) {
                childMeasureSpec = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight(), (int) ((View.MeasureSpec.getSize(childMeasureSpec4) * layoutParams.mAspectRatio) + 0.5f), !z);
            } else if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
                childMeasureSpec = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight(), (int) ((View.MeasureSpec.getSize(childMeasureSpec4) * this.mAspectRatio) + 0.5f), !z);
            } else {
                childMeasureSpec = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight(), layoutParams.width, !z);
            }
            layoutManagerHelper.measureChild(view, childMeasureSpec, childMeasureSpec4);
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        if (this.mAlignType == 1) {
            paddingTop = layoutManagerHelper.getPaddingTop() + this.mY + this.mAdjuster.top;
            decoratedMeasurementInOther = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mX) - this.mAdjuster.right;
            paddingLeft = ((decoratedMeasurementInOther - layoutParams.leftMargin) - layoutParams.rightMargin) - view.getMeasuredWidth();
            decoratedMeasurement = layoutParams.topMargin + paddingTop + layoutParams.bottomMargin + view.getMeasuredHeight();
        } else if (this.mAlignType == 2) {
            paddingLeft = layoutManagerHelper.getPaddingLeft() + this.mX + this.mAdjuster.left;
            decoratedMeasurement = ((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - this.mY) - this.mAdjuster.bottom;
            decoratedMeasurementInOther = view.getMeasuredWidth() + layoutParams.leftMargin + paddingLeft + layoutParams.rightMargin;
            paddingTop = ((decoratedMeasurement - view.getMeasuredHeight()) - layoutParams.topMargin) - layoutParams.bottomMargin;
        } else if (this.mAlignType == 3) {
            decoratedMeasurementInOther = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mX) - this.mAdjuster.right;
            decoratedMeasurement = ((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - this.mY) - this.mAdjuster.bottom;
            paddingLeft = decoratedMeasurementInOther - (z ? mainOrientationHelper.getDecoratedMeasurementInOther(view) : mainOrientationHelper.getDecoratedMeasurement(view));
            paddingTop = decoratedMeasurement - (z ? mainOrientationHelper.getDecoratedMeasurement(view) : mainOrientationHelper.getDecoratedMeasurementInOther(view));
        } else {
            paddingLeft = layoutManagerHelper.getPaddingLeft() + this.mX + this.mAdjuster.left;
            paddingTop = layoutManagerHelper.getPaddingTop() + this.mY + this.mAdjuster.top;
            decoratedMeasurementInOther = (z ? mainOrientationHelper.getDecoratedMeasurementInOther(view) : mainOrientationHelper.getDecoratedMeasurement(view)) + paddingLeft;
            decoratedMeasurement = (z ? mainOrientationHelper.getDecoratedMeasurement(view) : mainOrientationHelper.getDecoratedMeasurementInOther(view)) + paddingTop;
        }
        if (paddingLeft < layoutManagerHelper.getPaddingLeft() + this.mAdjuster.left) {
            paddingLeft = this.mAdjuster.left + layoutManagerHelper.getPaddingLeft();
            decoratedMeasurementInOther = (z ? mainOrientationHelper.getDecoratedMeasurementInOther(view) : mainOrientationHelper.getDecoratedMeasurement(view)) + paddingLeft;
        }
        if (decoratedMeasurementInOther > (layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mAdjuster.right) {
            decoratedMeasurementInOther = (layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mAdjuster.right;
            paddingLeft = ((decoratedMeasurementInOther - layoutParams.leftMargin) - layoutParams.rightMargin) - view.getMeasuredWidth();
        }
        int i3 = paddingLeft;
        if (paddingTop < layoutManagerHelper.getPaddingTop() + this.mAdjuster.top) {
            paddingTop = layoutManagerHelper.getPaddingTop() + this.mAdjuster.top;
            decoratedMeasurement = paddingTop + (z ? mainOrientationHelper.getDecoratedMeasurement(view) : mainOrientationHelper.getDecoratedMeasurementInOther(view));
        }
        if (decoratedMeasurement > (layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - this.mAdjuster.bottom) {
            int contentHeight = (layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - this.mAdjuster.bottom;
            i = contentHeight - (z ? mainOrientationHelper.getDecoratedMeasurement(view) : mainOrientationHelper.getDecoratedMeasurementInOther(view));
            i2 = contentHeight;
        } else {
            i = paddingTop;
            i2 = decoratedMeasurement;
        }
        layoutChildWithMargin(view, i3, i, decoratedMeasurementInOther, i2, layoutManagerHelper);
    }

    public void setDragEnable(boolean z) {
        this.dragEnable = z;
        if (this.mFixView != null) {
            this.mFixView.setOnTouchListener(z ? this.touchDragListener : null);
        }
    }
}
