.class public Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;
.source "ColumnLayoutHelper.java"


# instance fields
.field private mEqViews:[Landroid/view/View;

.field private mTempArea:Landroid/graphics/Rect;

.field private mViews:[Landroid/view/View;

.field private mWeights:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mTempArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    return-void
.end method


# virtual methods
.method public checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 248
    iget-boolean p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    :goto_0
    return-void
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    .line 95
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-ne v0, v6, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v9

    .line 100
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v11

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getItemCount()I

    move-result v0

    .line 104
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 105
    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    .line 108
    :cond_3
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_4

    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_5
    :goto_1
    new-array v0, v0, [Landroid/view/View;

    iput-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    .line 115
    :goto_2
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getAllChildren([Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v13

    if-eqz v10, :cond_13

    move v0, v9

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_3
    if-ge v0, v13, :cond_8

    .line 124
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    aget-object v4, v4, v0

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 126
    instance-of v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v5, :cond_7

    .line 127
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 129
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 131
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    add-int/lit8 v5, v13, -0x1

    if-eq v0, v5, :cond_6

    .line 135
    iget v2, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 136
    iput v9, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 138
    :cond_6
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 140
    :goto_4
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 144
    :cond_8
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 145
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getHorizontalMargin()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getHorizontalPadding()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v1, v0, v1

    const v2, 0x7fffffff

    const/4 v4, -0x1

    .line 152
    iget v5, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mAspectRatio:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/high16 v10, 0x3f000000    # 0.5f

    if-nez v5, :cond_9

    int-to-float v0, v0

    .line 153
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mAspectRatio:F

    div-float/2addr v0, v4

    add-float/2addr v0, v10

    float-to-int v4, v0

    :cond_9
    move v14, v2

    move v0, v9

    move v2, v0

    move v5, v2

    :goto_5
    if-ge v0, v13, :cond_d

    .line 160
    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    aget-object v12, v12, v0

    .line 161
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 163
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v16

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v17

    sub-int v10, v16, v17

    if-lez v4, :cond_a

    move v15, v4

    goto :goto_6

    :cond_a
    iget v15, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    .line 162
    :goto_6
    invoke-interface {v8, v10, v15, v6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v10

    .line 165
    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    if-eqz v15, :cond_c

    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    array-length v15, v15

    if-ge v0, v15, :cond_c

    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    aget v15, v15, v0

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_c

    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    aget v15, v15, v0

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_c

    .line 168
    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    aget v15, v15, v0

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    int-to-float v6, v1

    mul-float/2addr v15, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v15, v6

    float-to-int v15, v15

    .line 170
    iget v6, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b

    int-to-float v6, v15

    .line 171
    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    div-float/2addr v6, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    float-to-int v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    .line 173
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_7

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    .line 176
    :goto_7
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-interface {v8, v12, v6, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    add-int/2addr v2, v15

    .line 182
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v14, v6

    goto :goto_8

    .line 184
    :cond_c
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    add-int/lit8 v9, v5, 0x1

    aput-object v12, v6, v5

    move v5, v9

    :goto_8
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v5, :cond_10

    .line 190
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    aget-object v6, v6, v0

    .line 191
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    sub-int v10, v1, v2

    int-to-float v10, v10

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v10, v12

    int-to-float v15, v5

    div-float/2addr v10, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v10, v15

    float-to-int v10, v10

    .line 194
    iget v12, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_e

    int-to-float v12, v10

    .line 195
    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    div-float/2addr v12, v9

    add-float/2addr v12, v15

    float-to-int v9, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 197
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v15, 0x1

    goto :goto_c

    .line 200
    :cond_e
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v12

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v16

    sub-int v12, v12, v16

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v16

    sub-int v12, v12, v16

    if-lez v4, :cond_f

    move v9, v4

    :goto_a
    const/4 v15, 0x1

    goto :goto_b

    :cond_f
    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    goto :goto_a

    .line 199
    :goto_b
    invoke-interface {v8, v12, v9, v15}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v9

    const/high16 v12, 0x40000000    # 2.0f

    .line 206
    :goto_c
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 205
    invoke-interface {v8, v6, v10, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 210
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v13, :cond_12

    .line 215
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq v2, v14, :cond_11

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 219
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 218
    invoke-interface {v8, v1, v2, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_e

    :cond_11
    const/high16 v4, 0x40000000    # 2.0f

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    add-int/2addr v14, v3

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getVerticalMargin()I

    move-result v0

    add-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->getVerticalPadding()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, p4

    iput v0, v1, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 225
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mTempArea:Landroid/graphics/Rect;

    move-object/from16 v1, p3

    invoke-virtual {v7, v14, v0, v1, v8}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 228
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mTempArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v13, :cond_13

    .line 230
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    aget-object v1, v0, v9

    .line 231
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mTempArea:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mTempArea:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 233
    invoke-virtual {v11, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v10, v2, v0

    move-object/from16 v0, p0

    move v4, v10

    move-object/from16 v6, p5

    .line 235
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto :goto_f

    .line 242
    :cond_13
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mViews:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mEqViews:[Landroid/view/View;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setWeights([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 88
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/ColumnLayoutHelper;->mWeights:[F

    :goto_0
    return-void
.end method
