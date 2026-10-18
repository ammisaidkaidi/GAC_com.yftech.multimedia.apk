package com.alibaba.android.vlayout.layout;

import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.Range;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.alibaba.android.vlayout.layout.BaseLayoutHelper;
import com.alibaba.android.vlayout.layout.GridLayoutHelper;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RangeGridLayoutHelper extends BaseLayoutHelper {
    private static boolean DEBUG = false;
    private static final int MAIN_DIR_SPEC = View.MeasureSpec.makeMeasureSpec(0, 0);
    private static final String TAG = "RGLayoutHelper";
    private boolean mLayoutWithAnchor;
    private GridRangeStyle mRangeStyle;
    private int mTotalSize;

    public RangeGridLayoutHelper(int i) {
        this(i, -1, -1);
    }

    public RangeGridLayoutHelper(int i, int i2) {
        this(i, i2, 0);
    }

    public RangeGridLayoutHelper(int i, int i2, int i3) {
        this(i, i2, i3, i3);
    }

    public RangeGridLayoutHelper(int i, int i2, int i3, int i4) {
        this.mTotalSize = 0;
        this.mLayoutWithAnchor = false;
        this.mRangeStyle = new GridRangeStyle(this);
        this.mRangeStyle.setSpanCount(i);
        this.mRangeStyle.setVGap(i3);
        this.mRangeStyle.setHGap(i4);
        setItemCount(i2);
    }

    public void addRangeStyle(int i, int i2, GridRangeStyle gridRangeStyle) {
        this.mRangeStyle.addChildRangeStyle(i, i2, gridRangeStyle);
    }

    public GridRangeStyle getRootRangeStyle() {
        return this.mRangeStyle;
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper
    public void setMargin(int i, int i2, int i3, int i4) {
        super.setMargin(i, i2, i3, i4);
        this.mRangeStyle.setMargin(i, i2, i3, i4);
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        this.mRangeStyle.setPadding(i, i2, i3, i4);
    }

    public void setWeights(float[] fArr) {
        this.mRangeStyle.setWeights(fArr);
    }

    public void setSpanSizeLookup(GridLayoutHelper.SpanSizeLookup spanSizeLookup) {
        this.mRangeStyle.setSpanSizeLookup(spanSizeLookup);
    }

    public void setAutoExpand(boolean z) {
        this.mRangeStyle.setAutoExpand(z);
    }

    public void setIgnoreExtra(boolean z) {
        this.mRangeStyle.setIgnoreExtra(z);
    }

    public void setSpanCount(int i) {
        this.mRangeStyle.setSpanCount(i);
    }

    public int getSpanCount() {
        return this.mRangeStyle.getSpanCount();
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        this.mRangeStyle.setRange(i, i2);
    }

    public void setGap(int i) {
        setVGap(i);
        setHGap(i);
    }

    public void setVGap(int i) {
        this.mRangeStyle.setVGap(i);
    }

    public void setHGap(int i) {
        this.mRangeStyle.setHGap(i);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setAspectRatio(float f) {
        this.mRangeStyle.setAspectRatio(f);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public float getAspectRatio() {
        return this.mRangeStyle.getAspectRatio();
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setBgColor(int i) {
        this.mRangeStyle.setBgColor(i);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setLayoutViewHelper(BaseLayoutHelper.DefaultLayoutViewHelper defaultLayoutViewHelper) {
        this.mRangeStyle.setLayoutViewHelper(defaultLayoutViewHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setLayoutViewBindListener(BaseLayoutHelper.LayoutViewBindListener layoutViewBindListener) {
        this.mRangeStyle.setLayoutViewBindListener(layoutViewBindListener);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void setLayoutViewUnBindListener(BaseLayoutHelper.LayoutViewUnBindListener layoutViewUnBindListener) {
        this.mRangeStyle.setLayoutViewUnBindListener(layoutViewUnBindListener);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public boolean requireLayoutView() {
        return this.mRangeStyle.requireLayoutView();
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void beforeLayout(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutManagerHelper layoutManagerHelper) {
        this.mRangeStyle.beforeLayout(recycler, state, layoutManagerHelper);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02ec, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0381, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0139, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x016a, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x027a, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:173:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0614  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0770  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x077b  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x082f  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x08c3  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x08a0  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x064b  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0632  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0223 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0244  */
    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        boolean z;
        OrientationHelperEx orientationHelperEx;
        int i;
        int i2;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i4;
        boolean z6;
        boolean z7;
        int i5;
        int i6;
        boolean z8;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        OrientationHelperEx orientationHelperEx2;
        int i12;
        int i13;
        GridRangeStyle gridRangeStyle;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        OrientationHelperEx orientationHelperEx3;
        int paddingTop;
        int i20;
        int decoratedMeasurementInOther;
        int i21;
        int paddingLeft;
        int makeMeasureSpec;
        boolean z9;
        int makeMeasureSpec2;
        boolean z10;
        boolean z11;
        View view;
        int i22;
        int currentPosition;
        int spanSize;
        View next;
        VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper2 = layoutStateWrapper;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        int currentPosition2 = layoutStateWrapper.getCurrentPosition();
        GridRangeStyle findRangeStyleByPosition = this.mRangeStyle.findRangeStyleByPosition(currentPosition2);
        int itemDirection = layoutStateWrapper.getItemDirection();
        boolean z12 = itemDirection == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        boolean z13 = layoutManagerHelper.getOrientation() == 1;
        if (z13) {
            this.mTotalSize = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - layoutManagerHelper.getPaddingLeft()) - findRangeStyleByPosition.getFamilyHorizontalMargin()) - findRangeStyleByPosition.getFamilyHorizontalPadding();
            findRangeStyleByPosition.mSizePerSpan = (int) ((((this.mTotalSize - ((findRangeStyleByPosition.mSpanCount - 1) * findRangeStyleByPosition.mHGap)) * 1.0f) / findRangeStyleByPosition.mSpanCount) + 0.5f);
        } else {
            this.mTotalSize = (((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingBottom()) - layoutManagerHelper.getPaddingTop()) - findRangeStyleByPosition.getFamilyVerticalMargin()) - findRangeStyleByPosition.getFamilyVerticalPadding();
            findRangeStyleByPosition.mSizePerSpan = (int) ((((this.mTotalSize - ((findRangeStyleByPosition.mSpanCount - 1) * findRangeStyleByPosition.mVGap)) * 1.0f) / findRangeStyleByPosition.mSpanCount) + 0.5f);
        }
        int i23 = findRangeStyleByPosition.mSpanCount;
        findRangeStyleByPosition.ensureSpanCount();
        if (z12) {
            z = z13;
            orientationHelperEx = mainOrientationHelper;
            i = i23;
        } else {
            z = z13;
            orientationHelperEx = mainOrientationHelper;
            int spanIndex = getSpanIndex(findRangeStyleByPosition.mSpanSizeLookup, findRangeStyleByPosition.mSpanCount, recycler, state, layoutStateWrapper.getCurrentPosition());
            int spanSize2 = getSpanSize(findRangeStyleByPosition.mSpanSizeLookup, recycler, state, layoutStateWrapper.getCurrentPosition()) + spanIndex;
            if (spanIndex != findRangeStyleByPosition.mSpanCount - 1) {
                int currentPosition3 = layoutStateWrapper.getCurrentPosition();
                int i24 = findRangeStyleByPosition.mSpanCount - spanSize2;
                int i25 = currentPosition3;
                int i26 = 0;
                boolean z14 = false;
                boolean z15 = false;
                int i27 = 0;
                while (i26 < findRangeStyleByPosition.mSpanCount && i24 > 0) {
                    i25 -= itemDirection;
                    if (findRangeStyleByPosition.isOutOfRange(i25)) {
                        break;
                    }
                    int spanSize3 = getSpanSize(findRangeStyleByPosition.mSpanSizeLookup, recycler, state, i25);
                    i = spanSize2;
                    if (spanSize3 > findRangeStyleByPosition.mSpanCount) {
                        throw new IllegalArgumentException("Item at position " + i25 + " requires " + spanSize3 + " spans but RangeGridLayoutHelper has only " + findRangeStyleByPosition.mSpanCount + " spans.");
                    }
                    View retrieve = layoutStateWrapper2.retrieve(recycler, i25);
                    if (retrieve == null) {
                        break;
                    }
                    if (!z14) {
                        z14 = layoutManagerHelper.getReverseLayout() ? false : false;
                    }
                    if (!z15) {
                        z15 = layoutManagerHelper.getReverseLayout() ? false : false;
                    }
                    i24 -= spanSize3;
                    if (i24 < 0) {
                        break;
                    }
                    i27 += spanSize3;
                    findRangeStyleByPosition.mSet[i26] = retrieve;
                    i26++;
                    spanSize2 = i;
                }
                i = spanSize2;
                boolean z16 = z15;
                boolean z17 = z14;
                if (i26 > 0) {
                    int i28 = 0;
                    for (int i29 = i26 - 1; i28 < i29; i29--) {
                        View view2 = findRangeStyleByPosition.mSet[i28];
                        findRangeStyleByPosition.mSet[i28] = findRangeStyleByPosition.mSet[i29];
                        findRangeStyleByPosition.mSet[i29] = view2;
                        i28++;
                    }
                }
                i3 = i26;
                z5 = z16;
                i2 = i27;
                z3 = false;
                z4 = false;
                z2 = z17;
                while (true) {
                    if (i3 < findRangeStyleByPosition.mSpanCount || !layoutStateWrapper2.hasMore(state) || i <= 0) {
                        break;
                        break;
                    }
                    currentPosition = layoutStateWrapper.getCurrentPosition();
                    if (!findRangeStyleByPosition.isOutOfRange(currentPosition)) {
                        if (DEBUG) {
                            Log.d(TAG, "pos [" + currentPosition + "] is out of range");
                        }
                    } else {
                        spanSize = getSpanSize(findRangeStyleByPosition.mSpanSizeLookup, recycler, state, currentPosition);
                        if (spanSize > findRangeStyleByPosition.mSpanCount) {
                            throw new IllegalArgumentException("Item at position " + currentPosition + " requires " + spanSize + " spans but GridLayoutManager has only " + findRangeStyleByPosition.mSpanCount + " spans.");
                        }
                        i -= spanSize;
                        if (i < 0 || (next = layoutStateWrapper2.next(recycler)) == null) {
                            break;
                        }
                        if (!z2) {
                            boolean z18 = layoutManagerHelper.getReverseLayout() ? false : false;
                            z2 = z18;
                        }
                        if (!z3 && !findRangeStyleByPosition.equals(this.mRangeStyle)) {
                            if (this.mLayoutWithAnchor) {
                                currentPosition = layoutStateWrapper.getCurrentPosition();
                            }
                            z3 = !layoutManagerHelper.getReverseLayout() ? currentPosition != findRangeStyleByPosition.getRange().getLower().intValue() : currentPosition != findRangeStyleByPosition.getRange().getUpper().intValue();
                        }
                        if (!z5) {
                            boolean z19 = layoutManagerHelper.getReverseLayout() ? false : false;
                            z5 = z19;
                        }
                        if (!z4 && !findRangeStyleByPosition.equals(this.mRangeStyle)) {
                            if (this.mLayoutWithAnchor) {
                                currentPosition = layoutStateWrapper.getCurrentPosition();
                            }
                            z4 = !layoutManagerHelper.getReverseLayout() ? currentPosition != findRangeStyleByPosition.getRange().getUpper().intValue() : currentPosition != findRangeStyleByPosition.getRange().getLower().intValue();
                        }
                        i2 += spanSize;
                        findRangeStyleByPosition.mSet[i3] = next;
                        i3++;
                    }
                }
                int i30 = i2;
                i4 = i3;
                assignSpans(findRangeStyleByPosition, recycler, state, i3, i2, z12, layoutManagerHelper);
                if (i <= 0 && i4 == i30 && findRangeStyleByPosition.mIsAutoExpand) {
                    z6 = z;
                    if (z6) {
                        findRangeStyleByPosition.mSizePerSpan = (this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mHGap)) / i4;
                    } else {
                        findRangeStyleByPosition.mSizePerSpan = (this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mVGap)) / i4;
                    }
                } else {
                    z6 = z;
                    if (!z12 && i == 0 && i4 == i30 && findRangeStyleByPosition.mIsAutoExpand) {
                        if (!z6) {
                            findRangeStyleByPosition.mSizePerSpan = (this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mHGap)) / i4;
                        } else {
                            findRangeStyleByPosition.mSizePerSpan = (this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mVGap)) / i4;
                        }
                    }
                }
                if (findRangeStyleByPosition.mWeights != null || findRangeStyleByPosition.mWeights.length <= 0) {
                    z7 = false;
                } else {
                    int i31 = z6 ? this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mHGap) : this.mTotalSize - ((i4 - 1) * findRangeStyleByPosition.mVGap);
                    int i32 = (i <= 0 || !findRangeStyleByPosition.mIsAutoExpand) ? findRangeStyleByPosition.mSpanCount : i4;
                    int i33 = i31;
                    int i34 = 0;
                    for (int i35 = 0; i35 < i32; i35++) {
                        if (i35 >= findRangeStyleByPosition.mWeights.length || Float.isNaN(findRangeStyleByPosition.mWeights[i35]) || findRangeStyleByPosition.mWeights[i35] < 0.0f) {
                            i34++;
                            findRangeStyleByPosition.mSpanCols[i35] = -1;
                        } else {
                            findRangeStyleByPosition.mSpanCols[i35] = (int) ((((findRangeStyleByPosition.mWeights[i35] * 1.0f) / 100.0f) * i31) + 0.5f);
                            i33 -= findRangeStyleByPosition.mSpanCols[i35];
                        }
                    }
                    if (i34 > 0) {
                        int i36 = i33 / i34;
                        for (int i37 = 0; i37 < i32; i37++) {
                            if (findRangeStyleByPosition.mSpanCols[i37] < 0) {
                                findRangeStyleByPosition.mSpanCols[i37] = i36;
                            }
                        }
                    }
                    z7 = true;
                }
                int i38 = 0;
                i5 = 0;
                while (i5 < i4) {
                    View view3 = findRangeStyleByPosition.mSet[i5];
                    layoutManagerHelper.addChildView(layoutStateWrapper2, view3, z12 ? -1 : 0);
                    int spanSize4 = getSpanSize(findRangeStyleByPosition.mSpanSizeLookup, recycler, state, layoutManagerHelper.getPosition(view3));
                    if (!z7) {
                        z9 = false;
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((findRangeStyleByPosition.mSizePerSpan * spanSize4) + (Math.max(0, spanSize4 - 1) * (z6 ? findRangeStyleByPosition.mHGap : findRangeStyleByPosition.mVGap)), 1073741824);
                    } else {
                        int i39 = findRangeStyleByPosition.mSpanIndices[i5];
                        int i40 = 0;
                        for (int i41 = 0; i41 < spanSize4; i41++) {
                            i40 += findRangeStyleByPosition.mSpanCols[i41 + i39];
                        }
                        z9 = false;
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, i40), 1073741824);
                    }
                    int i42 = makeMeasureSpec2;
                    VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view3.getLayoutParams();
                    if (layoutManagerHelper.getOrientation() == 1) {
                        z10 = z6;
                        view = view3;
                        z11 = z7;
                        i22 = i38;
                        layoutManagerHelper.measureChildWithMargins(view, i42, getMainDirSpec(findRangeStyleByPosition, layoutParams.height, this.mTotalSize, View.MeasureSpec.getSize(i42), layoutParams.mAspectRatio));
                    } else {
                        z10 = z6;
                        z11 = z7;
                        view = view3;
                        i22 = i38;
                        layoutManagerHelper.measureChildWithMargins(view, getMainDirSpec(findRangeStyleByPosition, layoutParams.width, this.mTotalSize, View.MeasureSpec.getSize(i42), layoutParams.mAspectRatio), View.MeasureSpec.getSize(i42));
                    }
                    OrientationHelperEx orientationHelperEx4 = orientationHelperEx;
                    i38 = orientationHelperEx4.getDecoratedMeasurement(view);
                    if (i38 <= i22) {
                        i38 = i22;
                    }
                    i5++;
                    orientationHelperEx = orientationHelperEx4;
                    z6 = z10;
                    z7 = z11;
                    layoutStateWrapper2 = layoutStateWrapper;
                }
                boolean z20 = z6;
                boolean z21 = z7;
                OrientationHelperEx orientationHelperEx5 = orientationHelperEx;
                int i43 = i38;
                int mainDirSpec = getMainDirSpec(findRangeStyleByPosition, i43, this.mTotalSize, 0, Float.NaN);
                for (i6 = 0; i6 < i4; i6++) {
                    View view4 = findRangeStyleByPosition.mSet[i6];
                    if (orientationHelperEx5.getDecoratedMeasurement(view4) != i43) {
                        int spanSize5 = getSpanSize(findRangeStyleByPosition.mSpanSizeLookup, recycler, state, layoutManagerHelper.getPosition(view4));
                        if (!z21) {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((findRangeStyleByPosition.mSizePerSpan * spanSize5) + (Math.max(0, spanSize5 - 1) * (z20 ? findRangeStyleByPosition.mHGap : findRangeStyleByPosition.mVGap)), 1073741824);
                        } else {
                            int i44 = findRangeStyleByPosition.mSpanIndices[i6];
                            int i45 = 0;
                            for (int i46 = 0; i46 < spanSize5; i46++) {
                                i45 += findRangeStyleByPosition.mSpanCols[i46 + i44];
                            }
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, i45), 1073741824);
                        }
                        if (layoutManagerHelper.getOrientation() == 1) {
                            layoutManagerHelper.measureChildWithMargins(view4, makeMeasureSpec, mainDirSpec);
                        } else {
                            layoutManagerHelper.measureChildWithMargins(view4, mainDirSpec, makeMeasureSpec);
                        }
                    }
                }
                boolean z22 = layoutStateWrapper.getLayoutDirection() != 1;
                boolean isEnableMarginOverLap = layoutManagerHelper.isEnableMarginOverLap();
                if (z2) {
                    z8 = z20;
                    i7 = 0;
                } else {
                    z8 = z20;
                    i7 = computeStartSpace(layoutManagerHelper, z8, z22, isEnableMarginOverLap);
                }
                if (z3) {
                    i8 = 0;
                } else if (z8) {
                    i8 = findRangeStyleByPosition.getMarginTop() + findRangeStyleByPosition.getPaddingTop();
                } else {
                    i8 = findRangeStyleByPosition.getMarginLeft() + findRangeStyleByPosition.getPaddingLeft();
                }
                if (z5) {
                    i9 = 0;
                } else if (z8) {
                    i9 = this.mRangeStyle.getMarginBottom() + this.mRangeStyle.getPaddingBottom();
                } else {
                    i9 = this.mRangeStyle.getMarginRight() + this.mRangeStyle.getPaddingRight();
                }
                if (z4) {
                    i10 = 0;
                } else if (z8) {
                    i10 = findRangeStyleByPosition.getMarginBottom() + findRangeStyleByPosition.getPaddingBottom();
                } else {
                    i10 = findRangeStyleByPosition.getMarginRight() + findRangeStyleByPosition.getPaddingRight();
                }
                i11 = i4;
                layoutChunkResult.mConsumed = i43 + i7 + i9 + i8 + i10;
                boolean z23 = layoutStateWrapper.getLayoutDirection() != -1;
                if (!this.mLayoutWithAnchor) {
                    if (z23) {
                        orientationHelperEx2 = orientationHelperEx5;
                        i12 = currentPosition2;
                        if (!z5) {
                            if (z4) {
                                i13 = z8 ? ((GridRangeStyle) findRangeStyleByPosition.mParent).mVGap : ((GridRangeStyle) findRangeStyleByPosition.mParent).mHGap;
                                if (DEBUG) {
                                    Log.d(TAG, "⬆ " + i12 + " 3 " + i13 + " gap");
                                }
                            } else {
                                i13 = z8 ? findRangeStyleByPosition.mVGap : findRangeStyleByPosition.mHGap;
                                if (DEBUG) {
                                    Log.d(TAG, "⬆ " + i12 + " 4 " + i13 + " gap");
                                }
                            }
                        }
                        i13 = 0;
                    } else if (!z2) {
                        if (z3) {
                            i13 = z8 ? ((GridRangeStyle) findRangeStyleByPosition.mParent).mVGap : ((GridRangeStyle) findRangeStyleByPosition.mParent).mHGap;
                            if (DEBUG) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("⬇ ");
                                i12 = currentPosition2;
                                sb.append(i12);
                                orientationHelperEx2 = orientationHelperEx5;
                                sb.append(" 1 ");
                                sb.append(i13);
                                sb.append(" gap");
                                Log.d(TAG, sb.toString());
                            } else {
                                orientationHelperEx2 = orientationHelperEx5;
                                i12 = currentPosition2;
                            }
                        } else {
                            orientationHelperEx2 = orientationHelperEx5;
                            i12 = currentPosition2;
                            i13 = z8 ? findRangeStyleByPosition.mVGap : findRangeStyleByPosition.mHGap;
                            if (DEBUG) {
                                Log.d(TAG, "⬇ " + i12 + " 2 " + i13 + " gap");
                            }
                        }
                    }
                    layoutChunkResult.mConsumed += i13;
                    if (layoutChunkResult.mConsumed <= 0) {
                        layoutChunkResult.mConsumed = 0;
                    }
                    if (!layoutStateWrapper.isRefreshLayout()) {
                        if (z23) {
                            int i47 = i12 + 1;
                            if (!isOutOfRange(i47)) {
                                GridRangeStyle findRangeStyleByPosition2 = this.mRangeStyle.findRangeStyleByPosition(i47);
                                if (findRangeStyleByPosition2.isFirstPosition(i47)) {
                                    if (z8) {
                                        i14 = findRangeStyleByPosition2.getMarginTop() + findRangeStyleByPosition2.getPaddingTop();
                                    } else {
                                        i14 = findRangeStyleByPosition2.getMarginLeft() + findRangeStyleByPosition2.getPaddingLeft();
                                    }
                                    if (DEBUG) {
                                        StringBuilder sb2 = new StringBuilder();
                                        gridRangeStyle = findRangeStyleByPosition;
                                        sb2.append("⬆ ");
                                        sb2.append(i12);
                                        sb2.append(" 1 ");
                                        sb2.append(i14);
                                        sb2.append(" last");
                                        Log.d(TAG, sb2.toString());
                                    } else {
                                        gridRangeStyle = findRangeStyleByPosition;
                                    }
                                }
                            }
                        } else {
                            gridRangeStyle = findRangeStyleByPosition;
                            int i48 = i12 - 1;
                            if (!isOutOfRange(i48)) {
                                GridRangeStyle findRangeStyleByPosition3 = this.mRangeStyle.findRangeStyleByPosition(i48);
                                if (findRangeStyleByPosition3.isLastPosition(i48)) {
                                    if (z8) {
                                        i14 = findRangeStyleByPosition3.getMarginBottom() + findRangeStyleByPosition3.getPaddingBottom();
                                    } else {
                                        i14 = findRangeStyleByPosition3.getMarginRight() + findRangeStyleByPosition3.getPaddingRight();
                                    }
                                    if (DEBUG) {
                                        Log.d(TAG, "⬇ " + i12 + " 2 " + i14 + " last");
                                    }
                                }
                            }
                            i14 = 0;
                        }
                        if (DEBUG) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(z23 ? "⬆ " : "⬇ ");
                            sb3.append(i12);
                            sb3.append(" consumed ");
                            sb3.append(layoutChunkResult.mConsumed);
                            sb3.append(" startSpace ");
                            sb3.append(i7);
                            sb3.append(" endSpace ");
                            sb3.append(i9);
                            sb3.append(" secondStartSpace ");
                            sb3.append(i8);
                            sb3.append(" secondEndSpace ");
                            sb3.append(i10);
                            sb3.append(" lastUnconsumedSpace ");
                            sb3.append(i14);
                            Log.d(TAG, sb3.toString());
                        }
                        if (!z8) {
                            if (z23) {
                                int offset = (((layoutStateWrapper.getOffset() - i9) - i10) - i13) - i14;
                                i15 = offset - i43;
                                i16 = offset;
                            } else {
                                int offset2 = layoutStateWrapper.getOffset() + i7 + i8 + i13 + i14;
                                i16 = offset2 + i43;
                                i15 = offset2;
                            }
                            i18 = 0;
                            i17 = 0;
                        } else if (z23) {
                            i17 = ((layoutStateWrapper.getOffset() - i9) - i13) - i14;
                            i18 = i17 - i43;
                            i15 = 0;
                            i16 = 0;
                        } else {
                            int offset3 = layoutStateWrapper.getOffset() + i7 + i13 + i14;
                            i15 = 0;
                            i16 = 0;
                            i17 = offset3 + i43;
                            i18 = offset3;
                        }
                        i19 = 0;
                        while (i19 < i11) {
                            View view5 = gridRangeStyle.mSet[i19];
                            int i49 = gridRangeStyle.mSpanIndices[i19];
                            VirtualLayoutManager.LayoutParams layoutParams2 = (VirtualLayoutManager.LayoutParams) view5.getLayoutParams();
                            if (z8) {
                                if (z21) {
                                    paddingLeft = layoutManagerHelper.getPaddingLeft() + gridRangeStyle.getFamilyMarginLeft() + gridRangeStyle.getFamilyPaddingLeft();
                                    for (int i50 = 0; i50 < i49; i50++) {
                                        paddingLeft += gridRangeStyle.mSpanCols[i50] + gridRangeStyle.mHGap;
                                    }
                                } else {
                                    paddingLeft = (gridRangeStyle.mHGap * i49) + layoutManagerHelper.getPaddingLeft() + gridRangeStyle.getFamilyMarginLeft() + gridRangeStyle.getFamilyPaddingLeft() + (gridRangeStyle.mSizePerSpan * i49);
                                }
                                orientationHelperEx3 = orientationHelperEx2;
                                i17 = orientationHelperEx3.getDecoratedMeasurementInOther(view5) + paddingLeft;
                                i21 = i15;
                                i20 = paddingLeft;
                                decoratedMeasurementInOther = i16;
                            } else {
                                orientationHelperEx3 = orientationHelperEx2;
                                if (z21) {
                                    paddingTop = layoutManagerHelper.getPaddingTop() + gridRangeStyle.getFamilyMarginTop() + gridRangeStyle.getFamilyPaddingTop();
                                    for (int i51 = 0; i51 < i49; i51++) {
                                        paddingTop += gridRangeStyle.mSpanCols[i51] + gridRangeStyle.mVGap;
                                    }
                                } else {
                                    paddingTop = (gridRangeStyle.mVGap * i49) + layoutManagerHelper.getPaddingTop() + gridRangeStyle.getFamilyMarginTop() + gridRangeStyle.getFamilyPaddingTop() + (gridRangeStyle.mSizePerSpan * i49);
                                }
                                i20 = i18;
                                decoratedMeasurementInOther = orientationHelperEx3.getDecoratedMeasurementInOther(view5) + paddingTop;
                                i21 = paddingTop;
                            }
                            if (DEBUG) {
                                Log.d(TAG, "layout item in position: " + layoutParams2.getViewPosition() + " with text with SpanIndex: " + i49 + " into (" + i20 + ", " + i21 + ", " + i17 + ", " + decoratedMeasurementInOther + " )");
                            }
                            int i52 = decoratedMeasurementInOther;
                            int i53 = i17;
                            int i54 = i21;
                            boolean z24 = z8;
                            int i55 = i11;
                            gridRangeStyle.layoutChild(view5, i20, i21, i17, i52, layoutManagerHelper, false);
                            if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                                layoutChunkResult.mIgnoreConsumed = true;
                            }
                            layoutChunkResult.mFocusable |= view5.isFocusable();
                            i19++;
                            orientationHelperEx2 = orientationHelperEx3;
                            i18 = i20;
                            i16 = i52;
                            i17 = i53;
                            i15 = i54;
                            z8 = z24;
                            i11 = i55;
                        }
                        this.mLayoutWithAnchor = false;
                        Arrays.fill(gridRangeStyle.mSet, (Object) null);
                        Arrays.fill(gridRangeStyle.mSpanIndices, 0);
                        Arrays.fill(gridRangeStyle.mSpanCols, 0);
                    }
                    gridRangeStyle = findRangeStyleByPosition;
                    i14 = 0;
                    if (DEBUG) {
                    }
                    if (!z8) {
                    }
                    i19 = 0;
                    while (i19 < i11) {
                    }
                    this.mLayoutWithAnchor = false;
                    Arrays.fill(gridRangeStyle.mSet, (Object) null);
                    Arrays.fill(gridRangeStyle.mSpanIndices, 0);
                    Arrays.fill(gridRangeStyle.mSpanCols, 0);
                }
                orientationHelperEx2 = orientationHelperEx5;
                i12 = currentPosition2;
                i13 = 0;
                layoutChunkResult.mConsumed += i13;
                if (layoutChunkResult.mConsumed <= 0) {
                }
                if (!layoutStateWrapper.isRefreshLayout()) {
                }
                gridRangeStyle = findRangeStyleByPosition;
                i14 = 0;
                if (DEBUG) {
                }
                if (!z8) {
                }
                i19 = 0;
                while (i19 < i11) {
                }
                this.mLayoutWithAnchor = false;
                Arrays.fill(gridRangeStyle.mSet, (Object) null);
                Arrays.fill(gridRangeStyle.mSpanIndices, 0);
                Arrays.fill(gridRangeStyle.mSpanCols, 0);
            }
            i = spanSize2;
        }
        i2 = 0;
        i3 = 0;
        z2 = false;
        z3 = false;
        z4 = false;
        z5 = false;
        while (true) {
            if (i3 < findRangeStyleByPosition.mSpanCount) {
                break;
            }
            currentPosition = layoutStateWrapper.getCurrentPosition();
            if (!findRangeStyleByPosition.isOutOfRange(currentPosition)) {
            }
            i2 += spanSize;
            findRangeStyleByPosition.mSet[i3] = next;
            i3++;
        }
        int i302 = i2;
        i4 = i3;
        assignSpans(findRangeStyleByPosition, recycler, state, i3, i2, z12, layoutManagerHelper);
        if (i <= 0) {
        }
        z6 = z;
        if (!z12) {
            if (!z6) {
            }
        }
        if (findRangeStyleByPosition.mWeights != null) {
        }
        z7 = false;
        int i382 = 0;
        i5 = 0;
        while (i5 < i4) {
        }
        boolean z202 = z6;
        boolean z212 = z7;
        OrientationHelperEx orientationHelperEx52 = orientationHelperEx;
        int i432 = i382;
        int mainDirSpec2 = getMainDirSpec(findRangeStyleByPosition, i432, this.mTotalSize, 0, Float.NaN);
        while (i6 < i4) {
        }
        if (layoutStateWrapper.getLayoutDirection() != 1) {
        }
        boolean isEnableMarginOverLap2 = layoutManagerHelper.isEnableMarginOverLap();
        if (z2) {
        }
        if (z3) {
        }
        if (z5) {
        }
        if (z4) {
        }
        i11 = i4;
        layoutChunkResult.mConsumed = i432 + i7 + i9 + i8 + i10;
        if (layoutStateWrapper.getLayoutDirection() != -1) {
        }
        if (!this.mLayoutWithAnchor) {
        }
        orientationHelperEx2 = orientationHelperEx52;
        i12 = currentPosition2;
        i13 = 0;
        layoutChunkResult.mConsumed += i13;
        if (layoutChunkResult.mConsumed <= 0) {
        }
        if (!layoutStateWrapper.isRefreshLayout()) {
        }
        gridRangeStyle = findRangeStyleByPosition;
        i14 = 0;
        if (DEBUG) {
        }
        if (!z8) {
        }
        i19 = 0;
        while (i19 < i11) {
        }
        this.mLayoutWithAnchor = false;
        Arrays.fill(gridRangeStyle.mSet, (Object) null);
        Arrays.fill(gridRangeStyle.mSpanIndices, 0);
        Arrays.fill(gridRangeStyle.mSpanCols, 0);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        this.mRangeStyle.afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void adjustLayout(int i, int i2, LayoutManagerHelper layoutManagerHelper) {
        this.mRangeStyle.adjustLayout(i, i2, layoutManagerHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        if (z) {
            if (i == getItemCount() - 1) {
                return GridRangeStyle.computeEndAlignOffset(this.mRangeStyle, z3);
            }
        } else if (i == 0) {
            return GridRangeStyle.computeStartAlignOffset(this.mRangeStyle, z3);
        }
        return super.computeAlignOffset(i, z, z2, layoutManagerHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
        this.mRangeStyle.onClear(layoutManagerHelper);
        this.mRangeStyle.onInvalidateSpanIndexCache();
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onItemsChanged(LayoutManagerHelper layoutManagerHelper) {
        super.onItemsChanged(layoutManagerHelper);
        this.mRangeStyle.onInvalidateSpanIndexCache();
    }

    private int getMainDirSpec(GridRangeStyle gridRangeStyle, int i, int i2, int i3, float f) {
        if (!Float.isNaN(f) && f > 0.0f && i3 > 0) {
            return View.MeasureSpec.makeMeasureSpec((int) ((i3 / f) + 0.5f), 1073741824);
        }
        if (!Float.isNaN(gridRangeStyle.mAspectRatio) && gridRangeStyle.mAspectRatio > 0.0f) {
            return View.MeasureSpec.makeMeasureSpec((int) ((i2 / gridRangeStyle.mAspectRatio) + 0.5f), 1073741824);
        }
        if (i < 0) {
            return MAIN_DIR_SPEC;
        }
        return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        if (state.getItemCount() > 0) {
            GridRangeStyle findRangeStyleByPosition = this.mRangeStyle.findRangeStyleByPosition(anchorInfoWrapper.position);
            int cachedSpanIndex = findRangeStyleByPosition.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, findRangeStyleByPosition.mSpanCount);
            if (!anchorInfoWrapper.layoutFromEnd) {
                while (cachedSpanIndex > 0 && anchorInfoWrapper.position > 0) {
                    anchorInfoWrapper.position--;
                    cachedSpanIndex = findRangeStyleByPosition.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, findRangeStyleByPosition.mSpanCount);
                }
            } else {
                while (cachedSpanIndex < findRangeStyleByPosition.mSpanCount - 1 && anchorInfoWrapper.position < getRange().getUpper().intValue()) {
                    anchorInfoWrapper.position++;
                    cachedSpanIndex = findRangeStyleByPosition.mSpanSizeLookup.getCachedSpanIndex(anchorInfoWrapper.position, findRangeStyleByPosition.mSpanCount);
                }
            }
            this.mLayoutWithAnchor = true;
        }
    }

    private int getSpanIndex(GridLayoutHelper.SpanSizeLookup spanSizeLookup, int i, RecyclerView.Recycler recycler, RecyclerView.State state, int i2) {
        if (!state.isPreLayout()) {
            return spanSizeLookup.getCachedSpanIndex(i2, i);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i2);
        if (convertPreLayoutPositionToPostLayout == -1) {
            return 0;
        }
        return spanSizeLookup.getCachedSpanIndex(convertPreLayoutPositionToPostLayout, i);
    }

    private int getSpanSize(GridLayoutHelper.SpanSizeLookup spanSizeLookup, RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return spanSizeLookup.getSpanSize(i);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout == -1) {
            return 0;
        }
        return spanSizeLookup.getSpanSize(convertPreLayoutPositionToPostLayout);
    }

    private void assignSpans(GridRangeStyle gridRangeStyle, RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, boolean z, LayoutManagerHelper layoutManagerHelper) {
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
            int spanSize = getSpanSize(gridRangeStyle.mSpanSizeLookup, recycler, state, layoutManagerHelper.getPosition(gridRangeStyle.mSet[i3]));
            if (i6 != -1 || spanSize <= 1) {
                gridRangeStyle.mSpanIndices[i3] = i7;
            } else {
                gridRangeStyle.mSpanIndices[i3] = i7 - (spanSize - 1);
            }
            i7 += spanSize * i6;
            i3 += i5;
        }
    }

    public int getBorderStartSpace(LayoutManagerHelper layoutManagerHelper) {
        GridRangeStyle findRangeStyleByPosition = this.mRangeStyle.findRangeStyleByPosition(getRange().getLower().intValue());
        if (layoutManagerHelper.getOrientation() == 1) {
            return findRangeStyleByPosition.getFamilyMarginTop() + findRangeStyleByPosition.getFamilyPaddingTop();
        }
        return findRangeStyleByPosition.getFamilyMarginLeft() + findRangeStyleByPosition.getFamilyPaddingLeft();
    }

    public int getBorderEndSpace(LayoutManagerHelper layoutManagerHelper) {
        GridRangeStyle findRangeStyleByPosition = this.mRangeStyle.findRangeStyleByPosition(getRange().getUpper().intValue());
        if (layoutManagerHelper.getOrientation() == 1) {
            return findRangeStyleByPosition.getFamilyMarginBottom() + findRangeStyleByPosition.getFamilyPaddingBottom();
        }
        return findRangeStyleByPosition.getFamilyMarginRight() + findRangeStyleByPosition.getFamilyPaddingRight();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class GridRangeStyle extends RangeStyle<GridRangeStyle> {
        private float mAspectRatio;
        private int mHGap;
        private boolean mIgnoreExtra;
        private boolean mIsAutoExpand;
        private View[] mSet;
        private int mSizePerSpan;
        private int[] mSpanCols;
        private int mSpanCount;
        private int[] mSpanIndices;

        @NonNull
        private GridLayoutHelper.SpanSizeLookup mSpanSizeLookup;
        private int mVGap;
        private float[] mWeights;

        public GridRangeStyle(RangeGridLayoutHelper rangeGridLayoutHelper) {
            super(rangeGridLayoutHelper);
            this.mAspectRatio = Float.NaN;
            this.mSpanCount = 4;
            this.mSizePerSpan = 0;
            this.mIsAutoExpand = true;
            this.mIgnoreExtra = false;
            this.mSpanSizeLookup = new GridLayoutHelper.DefaultSpanSizeLookup();
            this.mVGap = 0;
            this.mHGap = 0;
            this.mWeights = new float[0];
            this.mSpanSizeLookup.setSpanIndexCacheEnabled(true);
        }

        public GridRangeStyle() {
            this.mAspectRatio = Float.NaN;
            this.mSpanCount = 4;
            this.mSizePerSpan = 0;
            this.mIsAutoExpand = true;
            this.mIgnoreExtra = false;
            this.mSpanSizeLookup = new GridLayoutHelper.DefaultSpanSizeLookup();
            this.mVGap = 0;
            this.mHGap = 0;
            this.mWeights = new float[0];
            this.mSpanSizeLookup.setSpanIndexCacheEnabled(true);
        }

        public GridRangeStyle findRangeStyleByPosition(int i) {
            return findRangeStyle(this, i);
        }

        private GridRangeStyle findRangeStyle(GridRangeStyle gridRangeStyle, int i) {
            int size = gridRangeStyle.mChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                GridRangeStyle gridRangeStyle2 = (GridRangeStyle) gridRangeStyle.mChildren.valueAt(i2);
                Range range = (Range) gridRangeStyle.mChildren.keyAt(i2);
                if (!gridRangeStyle2.isChildrenEmpty()) {
                    return findRangeStyle(gridRangeStyle2, i);
                }
                if (range.contains((Range) Integer.valueOf(i))) {
                    return (GridRangeStyle) gridRangeStyle.mChildren.valueAt(i2);
                }
            }
            return gridRangeStyle;
        }

        public GridRangeStyle findSiblingStyleByPosition(int i) {
            if (this.mParent != 0) {
                ArrayMap<Range<Integer>, T> arrayMap = ((GridRangeStyle) this.mParent).mChildren;
                int i2 = 0;
                int size = arrayMap.size();
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (((Range) arrayMap.keyAt(i2)).contains((Range) Integer.valueOf(i))) {
                        GridRangeStyle gridRangeStyle = (GridRangeStyle) arrayMap.valueAt(i2);
                        if (!gridRangeStyle.equals(this)) {
                            return gridRangeStyle;
                        }
                    } else {
                        i2++;
                    }
                }
            }
            return null;
        }

        public void onInvalidateSpanIndexCache() {
            this.mSpanSizeLookup.invalidateSpanIndexCache();
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ((GridRangeStyle) this.mChildren.valueAt(i)).onInvalidateSpanIndexCache();
            }
        }

        public static int computeEndAlignOffset(GridRangeStyle gridRangeStyle, boolean z) {
            int i;
            int i2;
            int i3;
            int i4;
            if (z) {
                i = gridRangeStyle.mMarginBottom;
                i2 = gridRangeStyle.mPaddingBottom;
            } else {
                i = gridRangeStyle.mMarginRight;
                i2 = gridRangeStyle.mPaddingRight;
            }
            int i5 = i + i2;
            int intValue = gridRangeStyle.getRange().getUpper().intValue();
            int size = gridRangeStyle.mChildren.size();
            for (int i6 = 0; i6 < size; i6++) {
                GridRangeStyle gridRangeStyle2 = (GridRangeStyle) gridRangeStyle.mChildren.valueAt(i6);
                if (!gridRangeStyle2.isChildrenEmpty()) {
                    i5 += computeEndAlignOffset(gridRangeStyle2, z);
                } else if (gridRangeStyle2.mRange.getUpper().intValue() == intValue) {
                    if (z) {
                        i3 = gridRangeStyle2.mMarginBottom;
                        i4 = gridRangeStyle2.mPaddingBottom;
                    } else {
                        i3 = gridRangeStyle2.mMarginRight;
                        i4 = gridRangeStyle2.mPaddingRight;
                    }
                    return i5 + i3 + i4;
                }
            }
            return i5;
        }

        public static int computeStartAlignOffset(GridRangeStyle gridRangeStyle, boolean z) {
            int i;
            int i2;
            int i3;
            int i4;
            if (z) {
                i = -gridRangeStyle.mMarginTop;
                i2 = gridRangeStyle.mPaddingTop;
            } else {
                i = -gridRangeStyle.mMarginLeft;
                i2 = gridRangeStyle.mPaddingLeft;
            }
            int i5 = i - i2;
            int intValue = gridRangeStyle.getRange().getLower().intValue();
            int size = gridRangeStyle.mChildren.size();
            for (int i6 = 0; i6 < size; i6++) {
                GridRangeStyle gridRangeStyle2 = (GridRangeStyle) gridRangeStyle.mChildren.valueAt(i6);
                if (!gridRangeStyle2.isChildrenEmpty()) {
                    i5 += computeStartAlignOffset(gridRangeStyle2, z);
                } else if (gridRangeStyle2.mRange.getLower().intValue() == intValue) {
                    if (z) {
                        i3 = -gridRangeStyle2.mMarginTop;
                        i4 = gridRangeStyle2.mPaddingTop;
                    } else {
                        i3 = -gridRangeStyle2.mMarginLeft;
                        i4 = gridRangeStyle2.mPaddingLeft;
                    }
                    return i5 + (i3 - i4);
                }
            }
            return i5;
        }

        public void setAspectRatio(float f) {
            this.mAspectRatio = f;
        }

        public float getAspectRatio() {
            return this.mAspectRatio;
        }

        @Override // com.alibaba.android.vlayout.layout.RangeStyle
        public void setRange(int i, int i2) {
            super.setRange(i, i2);
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

        public void setWeights(float[] fArr) {
            if (fArr != null) {
                this.mWeights = Arrays.copyOf(fArr, fArr.length);
            } else {
                this.mWeights = new float[0];
            }
        }

        public void setSpanSizeLookup(GridLayoutHelper.SpanSizeLookup spanSizeLookup) {
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

        public int getSpanCount() {
            return this.mSpanCount;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void ensureSpanCount() {
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
    }
}
