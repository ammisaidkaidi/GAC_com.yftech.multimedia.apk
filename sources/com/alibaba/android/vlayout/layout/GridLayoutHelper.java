package com.alibaba.android.vlayout.layout;

import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class GridLayoutHelper extends BaseLayoutHelper {
    private static boolean DEBUG = false;
    private static final int MAIN_DIR_SPEC = View.MeasureSpec.makeMeasureSpec(0, 0);
    private static final String TAG = "GridLayoutHelper";
    private int mHGap;
    private boolean mIgnoreExtra;
    private boolean mIsAutoExpand;
    private boolean mLayoutWithAnchor;
    private View[] mSet;
    private int mSizePerSpan;
    private int[] mSpanCols;
    private int mSpanCount;
    private int[] mSpanIndices;

    @NonNull
    private SpanSizeLookup mSpanSizeLookup;
    private int mTotalSize;
    private int mVGap;
    private float[] mWeights;

    public GridLayoutHelper(int i) {
        this(i, -1, -1);
    }

    public GridLayoutHelper(int i, int i2) {
        this(i, i2, 0);
    }

    public GridLayoutHelper(int i, int i2, int i3) {
        this(i, i2, i3, i3);
    }

    public GridLayoutHelper(int i, int i2, int i3, int i4) {
        this.mSpanCount = 4;
        this.mSizePerSpan = 0;
        this.mTotalSize = 0;
        this.mIsAutoExpand = true;
        this.mIgnoreExtra = false;
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mVGap = 0;
        this.mHGap = 0;
        this.mWeights = new float[0];
        this.mLayoutWithAnchor = false;
        setSpanCount(i);
        this.mSpanSizeLookup.setSpanIndexCacheEnabled(true);
        setItemCount(i2);
        setVGap(i3);
        setHGap(i4);
    }

    public void setWeights(float[] fArr) {
        if (fArr != null) {
            this.mWeights = Arrays.copyOf(fArr, fArr.length);
        } else {
            this.mWeights = new float[0];
        }
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        if (spanSizeLookup != null) {
            spanSizeLookup.setStartPosition(this.mSpanSizeLookup.getStartPosition());
            this.mSpanSizeLookup = spanSizeLookup;
        }
    }

    public void setAutoExpand(boolean z) {
        this.mIsAutoExpand = z;
    }

    public void setIgnoreExtra(boolean z) {
        this.mIgnoreExtra = z;
    }

    public void setSpanCount(int i) {
        if (i == this.mSpanCount) {
            return;
        }
        if (i < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
        this.mSpanCount = i;
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        ensureSpanCount();
    }

    public int getVGap() {
        return this.mVGap;
    }

    public int getHGap() {
        return this.mHGap;
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        this.mSpanSizeLookup.setStartPosition(i);
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void setGap(int i) {
        setVGap(i);
        setHGap(i);
    }

    public void setVGap(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mVGap = i;
    }

    public void setHGap(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mHGap = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:302:0x0103, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0115, code lost:
    
        if (r4 == getRange().getLower().intValue()) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
    
        if (r4 == getRange().getUpper().intValue()) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0101, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0135, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0220, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x024f, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:295:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02a2  */
    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int i;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i4;
        int offset;
        int i5;
        int i6;
        int i7;
        int paddingTop;
        int decoratedMeasurementInOther;
        int i8;
        int i9;
        int i10;
        boolean z6;
        int paddingLeft;
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int i11;
        int currentPosition;
        int spanSize;
        View next;
        int i12;
        boolean z7;
        RecyclerView.Recycler recycler2 = recycler;
        VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper2 = layoutStateWrapper;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        layoutStateWrapper.getCurrentPosition();
        boolean isEnableMarginOverLap = layoutManagerHelper.isEnableMarginOverLap();
        int itemDirection = layoutStateWrapper.getItemDirection();
        boolean z8 = itemDirection == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        boolean z9 = layoutManagerHelper.getOrientation() == 1;
        if (z9) {
            this.mTotalSize = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - layoutManagerHelper.getPaddingLeft()) - getHorizontalMargin()) - getHorizontalPadding();
            this.mSizePerSpan = (int) ((((this.mTotalSize - ((this.mSpanCount - 1) * this.mHGap)) * 1.0f) / this.mSpanCount) + 0.5f);
        } else {
            this.mTotalSize = (((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - layoutManagerHelper.getPaddingTop()) - getVerticalMargin()) - getVerticalPadding();
            this.mSizePerSpan = (int) ((((this.mTotalSize - ((this.mSpanCount - 1) * this.mVGap)) * 1.0f) / this.mSpanCount) + 0.5f);
        }
        int i13 = this.mSpanCount;
        ensureSpanCount();
        if (z8) {
            i = i13;
        } else {
            int spanIndex = getSpanIndex(recycler2, state, layoutStateWrapper.getCurrentPosition());
            i = getSpanSize(recycler2, state, layoutStateWrapper.getCurrentPosition()) + spanIndex;
            if (spanIndex != this.mSpanCount - 1) {
                int currentPosition2 = layoutStateWrapper.getCurrentPosition();
                int i14 = this.mSpanCount - i;
                int i15 = currentPosition2;
                int i16 = 0;
                boolean z10 = false;
                int i17 = 0;
                z2 = false;
                while (i16 < this.mSpanCount && i14 > 0) {
                    i15 -= itemDirection;
                    if (isOutOfRange(i15)) {
                        break;
                    }
                    int spanSize2 = getSpanSize(recycler2, state, i15);
                    if (spanSize2 > this.mSpanCount) {
                        throw new IllegalArgumentException("Item at position " + i15 + " requires " + spanSize2 + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
                    }
                    View retrieve = layoutStateWrapper2.retrieve(recycler2, i15);
                    if (retrieve == null) {
                        break;
                    }
                    if (z10) {
                        i12 = itemDirection;
                    } else {
                        if (layoutManagerHelper.getReverseLayout()) {
                            i12 = itemDirection;
                        } else {
                            i12 = itemDirection;
                        }
                        z10 = z7;
                    }
                    if (!z2) {
                        boolean z11 = layoutManagerHelper.getReverseLayout() ? false : false;
                        z2 = z11;
                    }
                    i14 -= spanSize2;
                    if (i14 < 0) {
                        break;
                    }
                    i17 += spanSize2;
                    this.mSet[i16] = retrieve;
                    i16++;
                    itemDirection = i12;
                }
                boolean z12 = z10;
                if (i16 > 0) {
                    int i18 = i16 - 1;
                    int i19 = 0;
                    while (i19 < i18) {
                        View view = this.mSet[i19];
                        this.mSet[i19] = this.mSet[i18];
                        this.mSet[i18] = view;
                        i19++;
                        i18--;
                        i16 = i16;
                    }
                }
                z = z12;
                i3 = i17;
                i2 = i16;
                while (true) {
                    if (i2 < this.mSpanCount || !layoutStateWrapper2.hasMore(state) || i <= 0) {
                        break;
                    }
                    currentPosition = layoutStateWrapper.getCurrentPosition();
                    if (!isOutOfRange(currentPosition)) {
                        if (DEBUG) {
                            Log.d(TAG, "pos [" + currentPosition + "] is out of range");
                        }
                    } else {
                        spanSize = getSpanSize(recycler2, state, currentPosition);
                        if (spanSize > this.mSpanCount) {
                            throw new IllegalArgumentException("Item at position " + currentPosition + " requires " + spanSize + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
                        }
                        i -= spanSize;
                        if (i < 0 || (next = layoutStateWrapper2.next(recycler2)) == null) {
                            break;
                        }
                        if (!z) {
                            boolean z13 = layoutManagerHelper.getReverseLayout() ? false : false;
                            z = z13;
                        }
                        if (!z2) {
                            boolean z14 = layoutManagerHelper.getReverseLayout() ? false : false;
                            z2 = z14;
                        }
                        i3 += spanSize;
                        this.mSet[i2] = next;
                        i2++;
                    }
                }
                int i20 = i;
                if (i2 != 0) {
                    return;
                }
                boolean z15 = z9;
                assignSpans(recycler, state, i2, i3, z8, layoutManagerHelper);
                if (i20 > 0 && i2 == i3 && this.mIsAutoExpand) {
                    if (z15) {
                        this.mSizePerSpan = (this.mTotalSize - ((i2 - 1) * this.mHGap)) / i2;
                    } else {
                        this.mSizePerSpan = (this.mTotalSize - ((i2 - 1) * this.mVGap)) / i2;
                    }
                } else if (!z8 && i20 == 0 && i2 == i3 && this.mIsAutoExpand) {
                    if (z15) {
                        this.mSizePerSpan = (this.mTotalSize - ((i2 - 1) * this.mHGap)) / i2;
                    } else {
                        this.mSizePerSpan = (this.mTotalSize - ((i2 - 1) * this.mVGap)) / i2;
                    }
                }
                if (this.mWeights == null || this.mWeights.length <= 0) {
                    z3 = false;
                } else {
                    if (z15) {
                        i11 = this.mTotalSize - ((i2 - 1) * this.mHGap);
                    } else {
                        i11 = this.mTotalSize - ((i2 - 1) * this.mVGap);
                    }
                    int i21 = (i20 <= 0 || !this.mIsAutoExpand) ? this.mSpanCount : i2;
                    int i22 = i11;
                    int i23 = 0;
                    for (int i24 = 0; i24 < i21; i24++) {
                        if (i24 < this.mWeights.length && !Float.isNaN(this.mWeights[i24]) && this.mWeights[i24] >= 0.0f) {
                            this.mSpanCols[i24] = (int) ((((this.mWeights[i24] * 1.0f) / 100.0f) * i11) + 0.5f);
                            i22 -= this.mSpanCols[i24];
                        } else {
                            i23++;
                            this.mSpanCols[i24] = -1;
                        }
                    }
                    if (i23 > 0) {
                        int i25 = i22 / i23;
                        for (int i26 = 0; i26 < i21; i26++) {
                            if (this.mSpanCols[i26] < 0) {
                                this.mSpanCols[i26] = i25;
                            }
                        }
                    }
                    z3 = true;
                }
                int i27 = 0;
                int i28 = 0;
                while (i27 < i2) {
                    View view2 = this.mSet[i27];
                    layoutManagerHelper.addChildView(layoutStateWrapper2, view2, z8 ? -1 : 0);
                    int spanSize3 = getSpanSize(recycler2, state, layoutManagerHelper.getPosition(view2));
                    if (z3) {
                        int i29 = this.mSpanIndices[i27];
                        int i30 = 0;
                        for (int i31 = 0; i31 < spanSize3; i31++) {
                            i30 += this.mSpanCols[i31 + i29];
                        }
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, i30), 1073741824);
                    } else {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((this.mSizePerSpan * spanSize3) + (Math.max(0, spanSize3 - 1) * (z15 ? this.mHGap : this.mVGap)), 1073741824);
                    }
                    VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view2.getLayoutParams();
                    if (layoutManagerHelper.getOrientation() == 1) {
                        layoutManagerHelper.measureChildWithMargins(view2, makeMeasureSpec2, getMainDirSpec(layoutParams.height, this.mTotalSize, View.MeasureSpec.getSize(makeMeasureSpec2), layoutParams.mAspectRatio));
                    } else {
                        layoutManagerHelper.measureChildWithMargins(view2, getMainDirSpec(layoutParams.width, this.mTotalSize, View.MeasureSpec.getSize(makeMeasureSpec2), layoutParams.mAspectRatio), View.MeasureSpec.getSize(makeMeasureSpec2));
                    }
                    int decoratedMeasurement = mainOrientationHelper.getDecoratedMeasurement(view2);
                    if (decoratedMeasurement > i28) {
                        i28 = decoratedMeasurement;
                    }
                    i27++;
                    layoutStateWrapper2 = layoutStateWrapper;
                }
                int mainDirSpec = getMainDirSpec(i28, this.mTotalSize, 0, Float.NaN);
                int i32 = 0;
                while (i32 < i2) {
                    View view3 = this.mSet[i32];
                    if (mainOrientationHelper.getDecoratedMeasurement(view3) != i28) {
                        int spanSize4 = getSpanSize(recycler2, state, layoutManagerHelper.getPosition(view3));
                        if (z3) {
                            int i33 = this.mSpanIndices[i32];
                            int i34 = 0;
                            for (int i35 = 0; i35 < spanSize4; i35++) {
                                i34 += this.mSpanCols[i35 + i33];
                            }
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, i34), 1073741824);
                        } else {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((this.mSizePerSpan * spanSize4) + (Math.max(0, spanSize4 - 1) * (z15 ? this.mHGap : this.mVGap)), 1073741824);
                        }
                        if (layoutManagerHelper.getOrientation() == 1) {
                            layoutManagerHelper.measureChildWithMargins(view3, makeMeasureSpec, mainDirSpec);
                        } else {
                            layoutManagerHelper.measureChildWithMargins(view3, mainDirSpec, makeMeasureSpec);
                        }
                    }
                    i32++;
                    recycler2 = recycler;
                }
                if (z) {
                    z5 = true;
                    z4 = isEnableMarginOverLap;
                    i4 = computeStartSpace(layoutManagerHelper, z15, !layoutManagerHelper.getReverseLayout(), z4);
                } else {
                    z4 = isEnableMarginOverLap;
                    z5 = true;
                    i4 = 0;
                }
                int computeEndSpace = z2 ? computeEndSpace(layoutManagerHelper, z15, layoutManagerHelper.getReverseLayout() ^ z5, z4) : 0;
                boolean z16 = z15;
                layoutChunkResult.mConsumed = i28 + i4 + computeEndSpace;
                boolean z17 = layoutStateWrapper.getLayoutDirection() == -1;
                if (!this.mLayoutWithAnchor && ((!z2 || !z17) && (!z || z17))) {
                    layoutChunkResult.mConsumed += z16 ? this.mVGap : this.mHGap;
                }
                if (z16) {
                    if (layoutStateWrapper.getLayoutDirection() == -1) {
                        int offset2 = (layoutStateWrapper.getOffset() - computeEndSpace) - ((this.mLayoutWithAnchor || z2) ? 0 : this.mVGap);
                        i7 = offset2;
                        i6 = offset2 - i28;
                    } else {
                        int offset3 = ((this.mLayoutWithAnchor || z) ? 0 : this.mVGap) + layoutStateWrapper.getOffset() + i4;
                        i6 = offset3;
                        i7 = i28 + offset3;
                    }
                    offset = 0;
                    i5 = 0;
                } else if (layoutStateWrapper.getLayoutDirection() == -1) {
                    int offset4 = (layoutStateWrapper.getOffset() - computeEndSpace) - ((this.mLayoutWithAnchor || z2) ? 0 : this.mHGap);
                    int i36 = offset4 - i28;
                    i6 = 0;
                    i7 = 0;
                    i5 = offset4;
                    offset = i36;
                } else {
                    offset = ((this.mLayoutWithAnchor || z) ? 0 : this.mHGap) + layoutStateWrapper.getOffset() + i4;
                    i5 = i28 + offset;
                    i6 = 0;
                    i7 = 0;
                }
                int i37 = 0;
                while (i37 < i2) {
                    View view4 = this.mSet[i37];
                    int i38 = this.mSpanIndices[i37];
                    VirtualLayoutManager.LayoutParams layoutParams2 = (VirtualLayoutManager.LayoutParams) view4.getLayoutParams();
                    if (z16) {
                        if (z3) {
                            paddingLeft = layoutManagerHelper.getPaddingLeft() + this.mMarginLeft + this.mPaddingLeft;
                            for (int i39 = 0; i39 < i38; i39++) {
                                paddingLeft += this.mSpanCols[i39] + this.mHGap;
                            }
                        } else {
                            paddingLeft = (this.mHGap * i38) + layoutManagerHelper.getPaddingLeft() + this.mMarginLeft + this.mPaddingLeft + (this.mSizePerSpan * i38);
                        }
                        int decoratedMeasurementInOther2 = mainOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingLeft;
                        i8 = paddingLeft;
                        i9 = i6;
                        decoratedMeasurementInOther = i7;
                        i10 = decoratedMeasurementInOther2;
                    } else {
                        if (z3) {
                            paddingTop = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop;
                            for (int i40 = 0; i40 < i38; i40++) {
                                paddingTop += this.mSpanCols[i40] + this.mVGap;
                            }
                        } else {
                            paddingTop = (this.mVGap * i38) + layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop + (this.mSizePerSpan * i38);
                        }
                        decoratedMeasurementInOther = mainOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingTop;
                        i8 = offset;
                        i9 = paddingTop;
                        i10 = i5;
                    }
                    if (DEBUG) {
                        StringBuilder sb = new StringBuilder();
                        z6 = z16;
                        sb.append("layout item in position: ");
                        sb.append(layoutParams2.getViewPosition());
                        sb.append(" with text ");
                        sb.append((Object) ((TextView) view4).getText());
                        sb.append(" with SpanIndex: ");
                        sb.append(i38);
                        sb.append(" into (");
                        sb.append(i8);
                        sb.append(", ");
                        sb.append(i9);
                        sb.append(", ");
                        sb.append(i10);
                        sb.append(", ");
                        sb.append(decoratedMeasurementInOther);
                        sb.append(" )");
                        Log.d(TAG, sb.toString());
                    } else {
                        z6 = z16;
                    }
                    int i41 = decoratedMeasurementInOther;
                    int i42 = i10;
                    int i43 = i9;
                    int i44 = i8;
                    layoutChildWithMargin(view4, i8, i9, i42, i41, layoutManagerHelper);
                    if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                        layoutChunkResult.mIgnoreConsumed = true;
                    }
                    layoutChunkResult.mFocusable |= view4.isFocusable();
                    i37++;
                    i7 = i41;
                    i5 = i42;
                    i6 = i43;
                    offset = i44;
                    z16 = z6;
                }
                this.mLayoutWithAnchor = false;
                Arrays.fill(this.mSet, (Object) null);
                Arrays.fill(this.mSpanIndices, 0);
                Arrays.fill(this.mSpanCols, 0);
                return;
            }
        }
        i2 = 0;
        i3 = 0;
        z = false;
        z2 = false;
        while (true) {
            if (i2 < this.mSpanCount) {
                break;
                break;
            } else {
                currentPosition = layoutStateWrapper.getCurrentPosition();
                if (!isOutOfRange(currentPosition)) {
                }
            }
            i3 += spanSize;
            this.mSet[i2] = next;
            i2++;
        }
        int i202 = i;
        if (i2 != 0) {
        }
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        if (z) {
            if (i == getItemCount() - 1) {
                if (z3) {
                    i4 = this.mMarginBottom;
                    i5 = this.mPaddingBottom;
                } else {
                    i4 = this.mMarginRight;
                    i5 = this.mPaddingRight;
                }
                return i4 + i5;
            }
        } else if (i == 0) {
            if (z3) {
                i2 = -this.mMarginTop;
                i3 = this.mPaddingTop;
            } else {
                i2 = -this.mMarginLeft;
                i3 = this.mPaddingLeft;
            }
            return i2 - i3;
        }
        return super.computeAlignOffset(i, z, z2, layoutManagerHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onItemsChanged(LayoutManagerHelper layoutManagerHelper) {
        super.onItemsChanged(layoutManagerHelper);
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    private int getMainDirSpec(int i, int i2, int i3, float f) {
        if (!Float.isNaN(f) && f > 0.0f && i3 > 0) {
            return View.MeasureSpec.makeMeasureSpec((int) ((i3 / f) + 0.5f), 1073741824);
        }
        if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
            return View.MeasureSpec.makeMeasureSpec((int) ((i2 / this.mAspectRatio) + 0.5f), 1073741824);
        }
        if (i < 0) {
            return MAIN_DIR_SPEC;
        }
        return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    }

    private void ensureSpanCount() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
        if (this.mSpanIndices == null || this.mSpanIndices.length != this.mSpanCount) {
            this.mSpanIndices = new int[this.mSpanCount];
        }
        if (this.mSpanCols == null || this.mSpanCols.length != this.mSpanCount) {
            this.mSpanCols = new int[this.mSpanCount];
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        if (state.getItemCount() <= 0 || state.isPreLayout()) {
            return;
        }
        int cachedSpanIndex = this.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, this.mSpanCount);
        if (anchorInfoWrapper.layoutFromEnd) {
            while (cachedSpanIndex < this.mSpanCount - 1 && anchorInfoWrapper.position < getRange().getUpper().intValue()) {
                anchorInfoWrapper.position++;
                cachedSpanIndex = this.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, this.mSpanCount);
            }
        } else {
            while (cachedSpanIndex > 0 && anchorInfoWrapper.position > 0) {
                anchorInfoWrapper.position--;
                cachedSpanIndex = this.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, this.mSpanCount);
            }
        }
        this.mLayoutWithAnchor = true;
    }

    private int getSpanIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout == -1) {
            return 0;
        }
        return this.mSpanSizeLookup.getCachedSpanIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
    }

    private int getSpanSize(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout == -1) {
            return 0;
        }
        return this.mSpanSizeLookup.getSpanSize(convertPreLayoutPositionToPostLayout);
    }

    private void assignSpans(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, boolean z, LayoutManagerHelper layoutManagerHelper) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        if (z) {
            i4 = i;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = i - 1;
            i4 = -1;
            i5 = -1;
        }
        if (layoutManagerHelper.getOrientation() == 1 && layoutManagerHelper.isDoLayoutRTL()) {
            i7 = i2 - 1;
            i6 = -1;
        } else {
            i6 = 1;
        }
        while (i3 != i4) {
            int spanSize = getSpanSize(recycler, state, layoutManagerHelper.getPosition(this.mSet[i3]));
            if (i6 == -1 && spanSize > 1) {
                this.mSpanIndices[i3] = i7 - (spanSize - 1);
            } else {
                this.mSpanIndices[i3] = i7;
            }
            i7 += spanSize * i6;
            i3 += i5;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // com.alibaba.android.vlayout.layout.GridLayoutHelper.SpanSizeLookup
        public int getSpanSize(int i) {
            return 1;
        }

        @Override // com.alibaba.android.vlayout.layout.GridLayoutHelper.SpanSizeLookup
        public int getSpanIndex(int i, int i2) {
            return (i - this.mStartPosition) % i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class SpanSizeLookup {
        final SparseIntArray mSpanIndexCache = new SparseIntArray();
        private boolean mCacheSpanIndices = false;
        int mStartPosition = 0;

        public abstract int getSpanSize(int i);

        public void setSpanIndexCacheEnabled(boolean z) {
            this.mCacheSpanIndices = z;
        }

        public void setStartPosition(int i) {
            this.mStartPosition = i;
        }

        public int getStartPosition() {
            return this.mStartPosition;
        }

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getCachedSpanIndex(int i, int i2) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(i, i2);
            }
            int i3 = this.mSpanIndexCache.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanIndex = getSpanIndex(i, i2);
            this.mSpanIndexCache.put(i, spanIndex);
            return spanIndex;
        }

        public int getSpanIndex(int i, int i2) {
            int i3;
            int findReferenceIndexFromCache;
            int spanSize = getSpanSize(i);
            if (spanSize == i2) {
                return 0;
            }
            int i4 = this.mStartPosition;
            if (!this.mCacheSpanIndices || this.mSpanIndexCache.size() <= 0 || (findReferenceIndexFromCache = findReferenceIndexFromCache(i)) < 0) {
                i3 = 0;
            } else {
                int spanSize2 = this.mSpanIndexCache.get(findReferenceIndexFromCache) + getSpanSize(findReferenceIndexFromCache);
                int i5 = findReferenceIndexFromCache + 1;
                i3 = spanSize2;
                i4 = i5;
            }
            while (i4 < i) {
                int spanSize3 = getSpanSize(i4);
                i3 += spanSize3;
                if (i3 == i2) {
                    i3 = 0;
                } else if (i3 > i2) {
                    i3 = spanSize3;
                }
                i4++;
            }
            if (spanSize + i3 <= i2) {
                return i3;
            }
            return 0;
        }

        int findReferenceIndexFromCache(int i) {
            int size = this.mSpanIndexCache.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.mSpanIndexCache.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.mSpanIndexCache.size()) {
                return -1;
            }
            return this.mSpanIndexCache.keyAt(i4);
        }

        public int getSpanGroupIndex(int i, int i2) {
            int spanSize = getSpanSize(i);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int spanSize2 = getSpanSize(i5);
                i3 += spanSize2;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = spanSize2;
                }
            }
            return i3 + spanSize > i2 ? i4 + 1 : i4;
        }
    }
}
