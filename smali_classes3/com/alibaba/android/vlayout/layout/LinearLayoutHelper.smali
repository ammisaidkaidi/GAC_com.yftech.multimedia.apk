.class public Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;
.source "LinearLayoutHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LinearLayoutHelper"


# instance fields
.field private mDividerHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mDividerHeight:I

    .line 61
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->setItemCount(I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->setDividerHeight(I)V

    return-void
.end method


# virtual methods
.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 3

    .line 216
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_4

    if-eqz v0, :cond_1

    .line 220
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginBottom:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingBottom:I

    :goto_1
    add-int/2addr p1, p0

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginRight:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingRight:I

    goto :goto_1

    :goto_2
    return p1

    :cond_2
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 224
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginTop:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingTop:I

    :goto_3
    sub-int/2addr p1, p0

    goto :goto_4

    :cond_3
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginLeft:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingLeft:I

    goto :goto_3

    :goto_4
    return p1

    .line 228
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p0

    return p0
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move-object/from16 v6, p5

    .line 82
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 88
    invoke-virtual {v7, v1, v2, v6, v8}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->nextView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isEnableMarginOverLap()Z

    move-result v1

    .line 94
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 95
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 98
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v11

    if-ne v11, v5, :cond_3

    move v11, v5

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_5

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v0, v12, :cond_4

    :goto_2
    move v12, v5

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v0, v12, :cond_4

    goto :goto_2

    :goto_3
    if-eqz v11, :cond_7

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v0, v13, :cond_6

    :goto_4
    move v13, v5

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v0, v13, :cond_6

    goto :goto_4

    :goto_5
    if-eqz v12, :cond_8

    .line 107
    invoke-virtual {v7, v6, v4, v11, v1}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->computeStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v14

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-eqz v13, :cond_9

    .line 111
    invoke-virtual {v7, v6, v4, v11, v1}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->computeEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v13

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    if-nez v12, :cond_10

    if-nez v1, :cond_a

    .line 116
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mDividerHeight:I

    goto :goto_a

    :cond_a
    if-eqz v11, :cond_d

    .line 119
    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v0, v5

    .line 120
    invoke-interface {v6, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    iget v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    if-ltz v0, :cond_c

    if-ltz v11, :cond_c

    .line 123
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_a

    :cond_c
    add-int/2addr v0, v11

    goto :goto_a

    .line 128
    :cond_d
    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    .line 129
    invoke-interface {v6, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    iget v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_9
    if-ltz v11, :cond_f

    if-ltz v0, :cond_f

    .line 132
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_a

    :cond_f
    add-int/2addr v0, v11

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 140
    :goto_a
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v11

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v11, v15

    .line 141
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v15

    sub-int/2addr v11, v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getHorizontalMargin()I

    move-result v15

    sub-int/2addr v11, v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getHorizontalPadding()I

    move-result v15

    sub-int/2addr v11, v15

    .line 142
    iget v15, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    xor-int/lit8 v10, v4, 0x1

    invoke-interface {v6, v11, v15, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v10

    .line 144
    iget v15, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    .line 145
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v18, 0x0

    if-nez v17, :cond_11

    cmpl-float v17, v15, v18

    if-lez v17, :cond_11

    int-to-float v3, v11

    div-float/2addr v3, v15

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 146
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_b

    .line 148
    :cond_11
    iget v15, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mAspectRatio:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_12

    iget v15, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mAspectRatio:F

    cmpl-float v15, v15, v18

    if-lez v15, :cond_12

    int-to-float v3, v11

    .line 149
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mAspectRatio:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v3, v3, v18

    double-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_b

    .line 153
    :cond_12
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v5

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v5, v11

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getVerticalMargin()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->getVerticalPadding()I

    move-result v11

    sub-int/2addr v5, v11

    iget v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    .line 152
    invoke-interface {v6, v5, v3, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v3

    :goto_b
    if-nez v1, :cond_13

    .line 159
    invoke-interface {v6, v9, v10, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_c

    .line 161
    :cond_13
    invoke-interface {v6, v9, v10, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChild(Landroid/view/View;II)V

    .line 164
    :goto_c
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v14

    add-int/2addr v3, v13

    add-int/2addr v3, v0

    iput v3, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 167
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_18

    .line 169
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 170
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v3

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginRight:I

    sub-int/2addr v3, v5

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 171
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    sub-int v5, v3, v5

    goto :goto_d

    .line 173
    :cond_14
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v3

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginLeft:I

    add-int/2addr v3, v5

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingLeft:I

    add-int/2addr v5, v3

    .line 174
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    .line 178
    :goto_d
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_16

    .line 180
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v2, v14

    if-eqz v12, :cond_15

    const/16 v16, 0x0

    goto :goto_e

    :cond_15
    move/from16 v16, v0

    :goto_e
    sub-int v2, v2, v16

    .line 181
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    move v4, v3

    move v3, v0

    move/from16 v20, v5

    move v5, v2

    move/from16 v2, v20

    goto :goto_12

    .line 184
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    add-int/2addr v2, v14

    if-eqz v12, :cond_17

    const/16 v16, 0x0

    goto :goto_f

    :cond_17
    move/from16 v16, v0

    :goto_f
    add-int v2, v2, v16

    .line 185
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v0

    goto :goto_12

    .line 188
    :cond_18
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v3

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mMarginTop:I

    add-int/2addr v3, v5

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mPaddingTop:I

    add-int/2addr v3, v5

    .line 189
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    .line 191
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_1a

    .line 193
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v2, v14

    if-eqz v12, :cond_19

    const/16 v16, 0x0

    goto :goto_10

    :cond_19
    move/from16 v16, v0

    :goto_10
    sub-int v2, v2, v16

    .line 194
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    move v4, v2

    move v2, v0

    goto :goto_12

    .line 197
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    add-int/2addr v2, v14

    if-eqz v12, :cond_1b

    const/16 v16, 0x0

    goto :goto_11

    :cond_1b
    move/from16 v16, v0

    :goto_11
    add-int v2, v2, v16

    .line 198
    invoke-virtual {v1, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v4, v0

    :goto_12
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v6, p5

    .line 203
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 211
    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Landroid/view/View;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 70
    :cond_0
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;->mDividerHeight:I

    return-void
.end method
