package com.alibaba.android.vlayout.layout;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.Range;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class AbstractFullFillLayoutHelper extends BaseLayoutHelper {
    private static final String TAG = "FullFillLayoutHelper";
    private LayoutManagerHelper mTempLayoutHelper;
    protected boolean hasHeader = false;
    protected boolean hasFooter = false;
    protected boolean mLayoutWithAnchor = false;

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return true;
    }

    protected void doLayoutView(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    protected void onMeasure(int i, int i2) {
    }

    protected final void setMeasuredDimension(int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
    
        if (r2 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
    
        r6 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
    
        if (r1 >= r6) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        r8 = r7[r1];
        r7[r1] = r7[r6];
        r7[r6] = r8;
        r1 = r1 + 1;
        r6 = r6 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getAllChildren(View[] viewArr, RecyclerView.Recycler recycler, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        View nextView;
        int i = 0;
        boolean z = layoutStateWrapper.getItemDirection() == 1;
        int intValue = (z ? getRange().getLower() : getRange().getUpper()).intValue();
        int currentPosition = layoutStateWrapper.getCurrentPosition();
        if (!z ? currentPosition > intValue : currentPosition > intValue) {
            Log.w(TAG, "Please handle strange order views carefully");
        }
        int i2 = 0;
        while (i2 < viewArr.length && !isOutOfRange(layoutStateWrapper.getCurrentPosition()) && (nextView = nextView(recycler, layoutStateWrapper, layoutManagerHelper, layoutChunkResult)) != null) {
            viewArr[i2] = nextView;
            ViewGroup.LayoutParams layoutParams = nextView.getLayoutParams();
            if (layoutParams == null) {
                nextView.setLayoutParams(generateDefaultLayoutParams());
            } else if (!checkLayoutParams(layoutParams)) {
                nextView.setLayoutParams(generateLayoutParams(layoutParams));
            }
            i2++;
        }
        return i2;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        this.mTempLayoutHelper = layoutManagerHelper;
        doLayoutView(recycler, state, layoutStateWrapper, layoutChunkResult, layoutManagerHelper);
        this.mTempLayoutHelper = null;
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        if (anchorInfoWrapper.layoutFromEnd) {
            if (!this.hasFooter) {
                anchorInfoWrapper.position = getRange().getUpper().intValue();
            }
        } else if (!this.hasHeader) {
            anchorInfoWrapper.position = getRange().getLower().intValue();
        }
        this.mLayoutWithAnchor = true;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        super.afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
        this.mLayoutWithAnchor = false;
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        if (layoutManagerHelper.getOrientation() == 1) {
            if (z) {
                return this.mMarginBottom + this.mPaddingBottom;
            }
            return (-this.mMarginTop) - this.mPaddingTop;
        }
        if (z) {
            return this.mMarginRight + this.mPaddingRight;
        }
        return (-this.mMarginLeft) - this.mPaddingLeft;
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.LayoutParams(layoutParams);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public boolean isRecyclable(int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper, boolean z) {
        Range<Integer> range = getRange();
        if (range.contains((Range<Integer>) Integer.valueOf(i))) {
            if (this.hasHeader && i == getRange().getLower().intValue()) {
                return true;
            }
            if (this.hasFooter && i == getRange().getUpper().intValue()) {
                return true;
            }
            return Range.create(Integer.valueOf(i2), Integer.valueOf(i3)).contains(Range.create(Integer.valueOf(range.getLower().intValue() + (this.hasHeader ? 1 : 0)), Integer.valueOf(range.getUpper().intValue() - (this.hasFooter ? 1 : 0))));
        }
        Log.w(TAG, "Child item not match");
        return true;
    }

    public void setHasHeader(boolean z) {
        this.hasHeader = z;
    }

    public void setHasFooter(boolean z) {
        this.hasFooter = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calculateRect(int i, Rect rect, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutManagerHelper layoutManagerHelper) {
        int i2 = 0;
        if (layoutManagerHelper.getOrientation() == 1) {
            rect.left = layoutManagerHelper.getPaddingLeft() + this.mMarginLeft + this.mPaddingLeft;
            rect.right = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mMarginRight) - this.mPaddingRight;
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                int offset = layoutStateWrapper.getOffset();
                if (!this.mLayoutWithAnchor && !this.hasFooter) {
                    i2 = this.mMarginBottom + this.mPaddingBottom;
                }
                rect.bottom = offset - i2;
                rect.top = rect.bottom - i;
                return;
            }
            int offset2 = layoutStateWrapper.getOffset();
            if (!this.mLayoutWithAnchor && !this.hasHeader) {
                i2 = this.mMarginTop + this.mPaddingTop;
            }
            rect.top = offset2 + i2;
            rect.bottom = rect.top + i;
            return;
        }
        rect.top = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop;
        rect.bottom = ((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - this.mMarginBottom) - this.mPaddingBottom;
        if (layoutStateWrapper.getLayoutDirection() == -1) {
            int offset3 = layoutStateWrapper.getOffset();
            if (!this.mLayoutWithAnchor && !this.hasFooter) {
                i2 = this.mMarginRight + this.mPaddingRight;
            }
            rect.right = offset3 - i2;
            rect.left = rect.right - i;
            return;
        }
        int offset4 = layoutStateWrapper.getOffset();
        if (!this.mLayoutWithAnchor && !this.hasHeader) {
            i2 = this.mMarginLeft + this.mPaddingLeft;
        }
        rect.left = offset4 + i2;
        rect.right = rect.left + i;
    }
}
