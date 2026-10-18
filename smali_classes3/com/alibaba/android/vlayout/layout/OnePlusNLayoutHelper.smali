.class public Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;
.source "OnePlusNLayoutHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusNLayoutHelper"


# instance fields
.field private mAreaRect:Landroid/graphics/Rect;

.field private mChildrenViews:[Landroid/view/View;

.field private mColWeights:[F

.field private mRowWeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;-><init>()V

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 115
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 117
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    .line 120
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->setItemCount(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;-><init>()V

    .line 111
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 115
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 117
    iput p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    .line 129
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->setItemCount(I)V

    return-void
.end method

.method private getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    array-length p1, p1

    if-le p1, p2, :cond_0

    .line 273
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    aget p0, p0, p2

    return p0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method private handleFive(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 701
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 703
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 704
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 705
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 706
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 707
    :goto_1
    new-instance v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 708
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 709
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    const/4 v15, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v6

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_1
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v15

    goto :goto_2

    .line 710
    :goto_3
    new-instance v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 711
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v4, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 712
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v15

    goto :goto_4

    :cond_2
    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v6

    .line 713
    :goto_4
    new-instance v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 714
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v6, v15}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 715
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v15, v15, v13

    goto :goto_5

    :cond_3
    iget-object v15, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v15, v15, v12

    .line 716
    :goto_5
    new-instance v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 717
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v12, v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 v13, 0x0

    .line 719
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    const/4 v13, 0x1

    .line 720
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v18

    const/4 v13, 0x2

    .line 721
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v19

    const/4 v13, 0x3

    .line 722
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v17

    const/4 v13, 0x4

    .line 723
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v20

    if-eqz p4, :cond_d

    .line 727
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    iput v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    .line 728
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v13, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    .line 729
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    iput v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    .line 730
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v13, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 731
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v13, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 733
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_4

    sub-int v13, p5, p7

    int-to-float v13, v13

    move-object/from16 v21, v9

    .line 734
    iget v9, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    div-float/2addr v13, v9

    float-to-int v9, v13

    iput v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    goto :goto_6

    :cond_4
    move-object/from16 v21, v9

    :goto_6
    sub-int v0, p5, p7

    .line 737
    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 741
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v22, 0x3f000000    # 0.5f

    if-eqz v1, :cond_5

    int-to-float v1, v0

    div-float/2addr v1, v9

    :goto_7
    add-float v1, v1, v22

    float-to-int v1, v1

    goto :goto_8

    :cond_5
    int-to-float v1, v0

    mul-float v1, v1, v16

    div-float/2addr v1, v13

    goto :goto_7

    .line 744
    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_6

    sub-int v16, v0, v1

    move/from16 v9, v16

    goto :goto_9

    :cond_6
    int-to-float v9, v0

    mul-float v9, v9, v18

    div-float/2addr v9, v13

    add-float v9, v9, v22

    float-to-int v9, v9

    .line 747
    :goto_9
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    const/high16 v18, 0x40400000    # 3.0f

    if-eqz v16, :cond_7

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int v13, v9, v13

    move-object/from16 v23, v15

    iget v15, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    div-float v13, v13, v18

    :goto_a
    add-float v13, v13, v22

    float-to-int v13, v13

    goto :goto_b

    :cond_7
    move-object/from16 v23, v15

    int-to-float v13, v0

    mul-float v13, v13, v19

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v13, v15

    goto :goto_a

    .line 750
    :goto_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_8

    iget v15, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int v15, v9, v15

    move-object/from16 v24, v12

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v15, v12

    int-to-float v12, v15

    div-float v12, v12, v18

    :goto_c
    add-float v12, v12, v22

    float-to-int v12, v12

    goto :goto_d

    :cond_8
    move-object/from16 v24, v12

    int-to-float v12, v0

    mul-float v12, v12, v17

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v12, v15

    goto :goto_c

    .line 753
    :goto_d
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_9

    iget v0, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int v0, v9, v0

    iget v15, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v15

    sub-int/2addr v0, v13

    sub-int/2addr v0, v12

    goto :goto_e

    :cond_9
    int-to-float v0, v0

    mul-float v0, v0, v20

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v0, v15

    add-float v0, v0, v22

    float-to-int v0, v0

    .line 757
    :goto_e
    iget v15, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v15

    iget v15, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    const/high16 v15, 0x40000000    # 2.0f

    .line 758
    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 760
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v15

    move/from16 v25, v0

    iget v0, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    move-object/from16 v26, v2

    const/4 v2, 0x1

    invoke-interface {v8, v15, v0, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v0

    .line 757
    invoke-interface {v8, v11, v1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 762
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 763
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v2, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    :goto_f
    div-float/2addr v1, v2

    add-float v1, v1, v22

    float-to-int v1, v1

    goto :goto_10

    :cond_a
    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v2, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_f

    .line 767
    :goto_10
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v0, v2

    iget v15, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v1

    .line 769
    iget v15, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v15

    iget v15, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v15

    const/high16 v15, 0x40000000    # 2.0f

    .line 770
    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v15, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v15, v1

    move-object/from16 v27, v11

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 772
    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 769
    invoke-interface {v8, v14, v9, v15}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 775
    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v13, v9

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v13, v9

    .line 776
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v2

    iget v15, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    .line 778
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 775
    invoke-interface {v8, v5, v9, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 781
    iget v9, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v12, v9

    iget v9, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v12, v9

    .line 782
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v12, v2

    iget v13, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 784
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 781
    invoke-interface {v8, v10, v9, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v9, v24

    .line 787
    iget v12, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v12, v25, v12

    iget v13, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .line 788
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget v13, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v2

    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v9

    .line 790
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move-object/from16 v15, v23

    .line 787
    invoke-interface {v8, v15, v12, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v9, v26

    .line 793
    iget v11, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v0, v11

    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v9

    iget v9, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v9

    iget v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v3, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 795
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 793
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 798
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 800
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v9, v21

    move-object/from16 v11, v27

    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v12, v0, v1

    .line 801
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v12

    move-object v13, v5

    move v5, v6

    const/16 v16, 0x3

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 803
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v12, v0

    .line 804
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 805
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v12

    .line 804
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 807
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v12, v0

    .line 808
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 811
    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v12, v17, v0

    .line 812
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 813
    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    .line 812
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 815
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 816
    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v12, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v12

    .line 815
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 817
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_11

    :cond_b
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v1, v2

    :goto_11
    add-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int/2addr v1, v2

    :goto_12
    add-int/2addr v0, v1

    goto :goto_13

    :cond_d
    move-object v13, v5

    const/16 v16, 0x3

    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x7

    .line 822
    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v11, v1, v3

    const/4 v3, 0x2

    aput-object v14, v1, v3

    aput-object v13, v1, v16

    const/4 v3, 0x4

    aput-object v10, v1, v3

    const/4 v3, 0x5

    aput-object v15, v1, v3

    const/4 v3, 0x6

    aput-object v2, v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v0
.end method

.method private handleFooter(Landroid/view/View;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 338
    :cond_0
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p0

    .line 340
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr p6, p8

    if-eqz p5, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    .line 344
    :cond_1
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    xor-int/lit8 p8, p5, 0x1

    invoke-interface {p4, p6, p3, p8}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p3

    sub-int/2addr p7, p9

    if-eqz p5, :cond_2

    .line 346
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    :goto_1
    invoke-interface {p4, p7, p2, p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p2

    .line 348
    invoke-interface {p4, p1, p3, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private handleFour(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 590
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 592
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 593
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 594
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 595
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 596
    :goto_1
    new-instance v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 597
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 598
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v15, 0x2

    aget-object v6, v4, v15

    .line 599
    new-instance v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 600
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v4, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 601
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v5, v5, v13

    goto :goto_2

    :cond_1
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v5, v5, v12

    .line 602
    :goto_2
    new-instance v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 603
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v12, v15}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 605
    invoke-direct {v7, v2, v10}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v15

    .line 606
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    const/4 v10, 0x2

    .line 607
    invoke-direct {v7, v2, v10}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v17

    const/4 v10, 0x3

    .line 608
    invoke-direct {v7, v2, v10}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v18

    if-eqz p4, :cond_a

    .line 612
    iget v10, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    iput v10, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    .line 613
    iget v10, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v10, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    .line 614
    iget v10, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    iput v10, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    .line 615
    iget v10, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 617
    iget v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_2

    sub-int v10, p5, p7

    int-to-float v10, v10

    .line 618
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    div-float/2addr v10, v13

    float-to-int v10, v10

    iput v10, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    :cond_2
    sub-int v0, p5, p7

    .line 621
    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 625
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3

    int-to-float v1, v0

    div-float/2addr v1, v10

    :goto_3
    add-float v1, v1, v19

    float-to-int v1, v1

    goto :goto_4

    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, v15

    div-float/2addr v1, v13

    goto :goto_3

    .line 628
    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_4

    sub-int v15, v0, v1

    goto :goto_5

    :cond_4
    int-to-float v15, v0

    mul-float v15, v15, v16

    div-float/2addr v15, v13

    add-float v15, v15, v19

    float-to-int v15, v15

    .line 631
    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_5

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int v13, v15, v13

    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v13, v10

    int-to-float v10, v13

    const/high16 v13, 0x40000000    # 2.0f

    :goto_6
    div-float/2addr v10, v13

    add-float v10, v10, v19

    float-to-int v10, v10

    goto :goto_7

    :cond_5
    int-to-float v10, v0

    mul-float v10, v10, v17

    const/high16 v13, 0x42c80000    # 100.0f

    goto :goto_6

    .line 634
    :goto_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_6

    iget v0, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int v0, v15, v0

    iget v13, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v13

    sub-int/2addr v0, v10

    goto :goto_8

    :cond_6
    int-to-float v0, v0

    mul-float v0, v0, v18

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v0, v13

    add-float v0, v0, v19

    float-to-int v0, v0

    .line 638
    :goto_8
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v13

    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    const/high16 v13, 0x40000000    # 2.0f

    .line 639
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 641
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v13

    move-object/from16 v20, v9

    iget v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    move-object/from16 v21, v2

    const/4 v2, 0x1

    invoke-interface {v8, v13, v9, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v9

    .line 638
    invoke-interface {v8, v11, v1, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 643
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 644
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v1, v2

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    const/high16 v9, 0x40000000    # 2.0f

    :goto_9
    div-float/2addr v2, v9

    add-float v2, v2, v19

    float-to-int v2, v2

    goto :goto_a

    :cond_7
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v1, v2

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    iget v9, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    mul-float/2addr v2, v9

    const/high16 v9, 0x42c80000    # 100.0f

    goto :goto_9

    .line 648
    :goto_a
    iget v9, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v9, v1, v9

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v9, v13

    sub-int/2addr v9, v2

    .line 650
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v15, v13

    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v15, v13

    const/high16 v13, 0x40000000    # 2.0f

    .line 651
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v2

    move-object/from16 v22, v11

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 653
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 650
    invoke-interface {v8, v14, v15, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 656
    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v10, v13

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v10, v13

    .line 657
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v9

    iget v15, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    .line 659
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 656
    invoke-interface {v8, v6, v10, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 662
    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v0, v10

    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    .line 663
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v10, v9

    iget v13, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v13

    .line 665
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 662
    invoke-interface {v8, v5, v0, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v0, v21

    .line 668
    iget v10, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v10

    iget v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget v0, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v0, v9

    iget v3, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    iget v3, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v3

    iget v3, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v3

    .line 670
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 668
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 673
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 675
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    .line 676
    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v11, v0, v1

    .line 677
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v11

    move-object v13, v5

    move v5, v12

    move-object v12, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 679
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v11, v0

    .line 680
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 681
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v11

    .line 680
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 683
    invoke-virtual {v9, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v15, v11, v0

    .line 684
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v12

    move v4, v15

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 687
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 688
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v15, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v15

    .line 687
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 689
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_b

    :cond_8
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v1, v2

    :goto_b
    add-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_c

    :cond_9
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int/2addr v1, v2

    :goto_c
    add-int/2addr v0, v1

    goto :goto_d

    :cond_a
    move-object v13, v5

    move-object v12, v6

    move-object v10, v11

    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x6

    .line 694
    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v14, v1, v3

    const/4 v3, 0x3

    aput-object v12, v1, v3

    const/4 v3, 0x4

    aput-object v13, v1, v3

    const/4 v3, 0x5

    aput-object v2, v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v0
.end method

.method private handleHeader(Landroid/view/View;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 318
    :cond_0
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p0

    .line 320
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr p6, p8

    if-eqz p5, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    .line 324
    :cond_1
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    xor-int/lit8 p8, p5, 0x1

    invoke-interface {p4, p6, p3, p8}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p3

    sub-int/2addr p7, p9

    if-eqz p5, :cond_2

    .line 326
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    :goto_1
    invoke-interface {p4, p7, p2, p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p2

    .line 328
    invoke-interface {p4, p1, p3, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private handleOne(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 13

    move-object v7, p0

    move-object/from16 v6, p3

    move/from16 v0, p4

    .line 355
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v5

    .line 357
    iget-object v8, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .line 358
    new-instance v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 359
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 361
    iget v11, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_1

    if-eqz v0, :cond_0

    sub-int v11, p5, p7

    int-to-float v11, v11

    .line 363
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_0
    sub-int v11, p6, p8

    int-to-float v11, v11

    .line 365
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 369
    :cond_1
    :goto_0
    invoke-direct {p0, v10, v9}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v11

    .line 373
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_2

    sub-int v1, p5, p7

    goto :goto_1

    :cond_2
    sub-int v1, p5, p7

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v1, v1

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_2
    xor-int/lit8 v11, v0, 0x1

    .line 372
    invoke-interface {v6, v1, v3, v11}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v1

    sub-int v2, p6, p8

    if-eqz v0, :cond_4

    .line 376
    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_3

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    :goto_3
    invoke-interface {v6, v2, v3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v0

    .line 379
    invoke-interface {v6, v8, v1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 381
    invoke-virtual {v5, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v9

    .line 383
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    move-object v2, p1

    invoke-virtual {p0, v0, v1, p1, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 385
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    const/4 v0, 0x3

    .line 387
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, v9

    const/4 v2, 0x1

    aput-object v8, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    move-object v1, p2

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    .line 388
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_5

    move v1, v9

    goto :goto_4

    :cond_5
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int v9, v1, v2

    :goto_5
    add-int/2addr v0, v9

    return v0
.end method

.method private handleThree(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 496
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 498
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 499
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 500
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 501
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 502
    :goto_1
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    :goto_2
    move-object v15, v3

    goto :goto_3

    :cond_1
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    goto :goto_2

    .line 504
    :goto_3
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 505
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 506
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 507
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 509
    invoke-direct {v7, v2, v10}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v4

    .line 510
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v5

    .line 511
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    if-eqz p4, :cond_9

    .line 515
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_2

    sub-int v12, p5, p7

    int-to-float v12, v12

    .line 516
    iget v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    div-float/2addr v12, v10

    float-to-int v10, v12

    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 520
    :cond_2
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 521
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 523
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 524
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v0, p5, p7

    .line 526
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 528
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3

    int-to-float v1, v0

    div-float/2addr v1, v10

    :goto_4
    add-float v1, v1, v17

    float-to-int v1, v1

    goto :goto_5

    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, v4

    div-float/2addr v1, v12

    goto :goto_4

    .line 530
    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-eqz v4, :cond_4

    sub-int v4, v0, v1

    goto :goto_6

    :cond_4
    int-to-float v4, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v12

    float-to-double v4, v4

    add-double v4, v4, v18

    double-to-int v4, v4

    .line 532
    :goto_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    move-object/from16 v20, v11

    goto :goto_7

    :cond_5
    int-to-float v0, v0

    mul-float v0, v0, v16

    div-float/2addr v0, v12

    move-object/from16 v20, v11

    float-to-double v10, v0

    add-double v10, v10, v18

    double-to-int v0, v10

    .line 535
    :goto_7
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 536
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 538
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v10

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v8, v10, v11, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v10

    move-object/from16 v11, v20

    .line 535
    invoke-interface {v8, v11, v1, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 540
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 541
    iget v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    .line 542
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v10, v1, v10

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v12

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    :goto_8
    div-float/2addr v10, v12

    add-float v10, v10, v17

    float-to-int v10, v10

    goto :goto_9

    :cond_6
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v10, v1, v10

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v13

    int-to-float v10, v10

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    mul-float/2addr v10, v13

    goto :goto_8

    .line 547
    :goto_9
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v12, v1, v12

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v10

    .line 549
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v13

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v13

    .line 550
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v10

    move-object/from16 v21, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v9

    .line 552
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 549
    invoke-interface {v8, v14, v4, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 555
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 556
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v12

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v9

    .line 558
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 555
    invoke-interface {v8, v15, v0, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 561
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v0

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v0

    add-int/2addr v10, v12

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v0

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 565
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 567
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v9, v21

    .line 568
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 569
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v10

    move-object v12, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 571
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v10, v0

    .line 572
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 573
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v10

    .line 572
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 575
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 576
    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v10, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v15

    .line 575
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 577
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_7

    const/4 v10, 0x0

    goto :goto_a

    :cond_7
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int v10, v1, v2

    :goto_a
    add-int/2addr v0, v10

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_8

    const/4 v10, 0x0

    goto :goto_b

    :cond_8
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int v10, v1, v2

    :goto_b
    add-int/2addr v10, v0

    goto :goto_c

    :cond_9
    const/4 v10, 0x0

    :goto_c
    const/4 v0, 0x5

    .line 582
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v11, v0, v2

    const/4 v2, 0x2

    aput-object v14, v0, v2

    const/4 v2, 0x3

    aput-object v15, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v10
.end method

.method private handleTwo(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 395
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 397
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v5, v10

    .line 398
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 399
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 400
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v12, 0x1

    aget-object v13, v6, v12

    .line 401
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 402
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 403
    invoke-direct {v7, v5, v10}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v14

    .line 404
    invoke-direct {v7, v5, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x42c80000    # 100.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v18, 0x3f000000    # 0.5f

    if-eqz p4, :cond_5

    .line 409
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    sub-int v2, p5, p7

    int-to-float v2, v2

    .line 410
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 413
    :cond_0
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 414
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, p5, p7

    .line 416
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 418
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-float v2, v1

    div-float v2, v2, v16

    :goto_0
    add-float v2, v2, v18

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    int-to-float v2, v1

    mul-float/2addr v2, v14

    div-float v2, v2, v17

    goto :goto_0

    .line 420
    :goto_1
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_2
    int-to-float v1, v1

    mul-float/2addr v1, v15

    div-float v1, v1, v17

    add-float v1, v1, v18

    float-to-int v1, v1

    .line 423
    :goto_2
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 424
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 426
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v3

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v8, v3, v4, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v3

    .line 423
    invoke-interface {v8, v11, v2, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 428
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 429
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 431
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v2

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v8, v2, v3, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v2

    .line 428
    invoke-interface {v8, v13, v1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 433
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 434
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 433
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 436
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2, v0, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 438
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 439
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 441
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v10

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 443
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 444
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v10, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v10

    .line 443
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 446
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int v10, v1, v2

    :goto_3
    add-int/2addr v0, v10

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int v10, v1, v2

    :goto_4
    add-int/2addr v0, v10

    goto/16 :goto_a

    .line 449
    :cond_5
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_6

    sub-int v1, p6, p8

    int-to-float v1, v1

    .line 450
    iget v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAspectRatio:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_6
    sub-int v1, p6, p8

    .line 453
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 456
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    int-to-float v2, v1

    div-float v2, v2, v16

    :goto_5
    add-float v2, v2, v18

    float-to-int v2, v2

    goto :goto_6

    :cond_7
    int-to-float v2, v1

    mul-float/2addr v2, v14

    div-float v2, v2, v17

    goto :goto_5

    .line 458
    :goto_6
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    goto :goto_7

    :cond_8
    int-to-float v1, v1

    mul-float/2addr v1, v15

    div-float v1, v1, v17

    add-float v1, v1, v18

    float-to-int v1, v1

    .line 462
    :goto_7
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v3

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v8, v3, v4, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v3

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 463
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 461
    invoke-interface {v8, v11, v3, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 466
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 469
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 470
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 468
    invoke-interface {v8, v13, v2, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 473
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 474
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 473
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 476
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2, v0, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 478
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 479
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 480
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v5, v10

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 483
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 485
    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v5, v10, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v10

    .line 483
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 486
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_9

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginLeft:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingRight:I

    add-int v10, v1, v2

    :goto_8
    add-int/2addr v0, v10

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_a

    const/4 v10, 0x0

    goto :goto_9

    :cond_a
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginRight:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingRight:I

    add-int v10, v1, v2

    :goto_9
    add-int/2addr v0, v10

    :goto_a
    const/4 v1, 0x4

    .line 489
    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object v11, v1, v12

    const/4 v3, 0x2

    aput-object v13, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v0
.end method


# virtual methods
.method public checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;->checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mLayoutWithAnchor:Z

    return-void
.end method

.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 2

    .line 296
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    if-eqz p3, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_5

    if-eqz p4, :cond_2

    .line 303
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    :goto_1
    add-int/2addr p1, p0

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginRight:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingRight:I

    goto :goto_1

    :goto_2
    return p1

    :cond_3
    if-nez p1, :cond_5

    if-eqz p4, :cond_4

    .line 307
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    :goto_3
    sub-int/2addr p1, p0

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginLeft:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingLeft:I

    goto :goto_3

    :goto_4
    return p1

    :cond_5
    return v0
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 169
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v14

    .line 173
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    move/from16 v16, v6

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 174
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move/from16 v17, v6

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    .line 175
    :goto_1
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v7

    .line 176
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v8

    .line 177
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getHorizontalMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getHorizontalPadding()I

    move-result v1

    add-int v9, v0, v1

    .line 179
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getVerticalMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getVerticalPadding()I

    move-result v1

    add-int v18, v0, v1

    .line 182
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 183
    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 184
    invoke-virtual {v10, v2, v11, v13, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->nextView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, v16

    move-object v15, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v18

    .line 185
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleHeader(Landroid/view/View;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v7

    if-eqz v15, :cond_8

    if-eqz v16, :cond_5

    if-eqz v17, :cond_3

    .line 191
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int v1, v0, v7

    goto :goto_3

    .line 194
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    iget v2, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v1, v2

    :goto_2
    add-int/2addr v1, v0

    add-int v0, v1, v7

    .line 197
    :goto_3
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v2

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginLeft:I

    add-int/2addr v2, v3

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingLeft:I

    add-int/2addr v2, v3

    .line 198
    invoke-virtual {v14, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v5, v0

    move v4, v3

    move v3, v1

    goto :goto_6

    :cond_5
    if-eqz v17, :cond_6

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int v1, v0, v7

    goto :goto_5

    .line 204
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    iget v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginLeft:I

    iget v2, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingLeft:I

    add-int/2addr v1, v2

    :goto_4
    add-int/2addr v1, v0

    add-int v0, v1, v7

    .line 207
    :goto_5
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    add-int/2addr v2, v3

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 208
    invoke-virtual {v14, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v4, v0

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_6
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v6, p5

    .line 210
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 212
    :cond_8
    iput v7, v12, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 213
    invoke-virtual {v10, v12, v15}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Landroid/view/View;)V

    goto/16 :goto_d

    .line 214
    :cond_9
    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 215
    invoke-virtual {v10, v2, v11, v13, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->nextView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, v16

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v18

    .line 216
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleFooter(Landroid/view/View;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v7

    if-eqz v15, :cond_f

    if-eqz v16, :cond_c

    if-eqz v17, :cond_b

    .line 222
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    iget v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginBottom:I

    iget v2, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingBottom:I

    add-int/2addr v1, v2

    :goto_7
    sub-int/2addr v0, v1

    sub-int v1, v0, v7

    goto :goto_8

    .line 225
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v1

    add-int v0, v1, v7

    .line 228
    :goto_8
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v2

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginLeft:I

    add-int/2addr v2, v3

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingLeft:I

    add-int/2addr v2, v3

    .line 229
    invoke-virtual {v14, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v5, v0

    move v4, v3

    move v3, v1

    goto :goto_b

    :cond_c
    if-eqz v17, :cond_e

    .line 232
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    iget v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginRight:I

    iget v2, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingRight:I

    add-int/2addr v1, v2

    :goto_9
    sub-int/2addr v0, v1

    sub-int v1, v0, v7

    goto :goto_a

    .line 235
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v1

    add-int v0, v1, v7

    .line 238
    :goto_a
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mMarginTop:I

    add-int/2addr v2, v3

    iget v3, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 239
    invoke-virtual {v14, v15}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v4, v0

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_b
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v6, p5

    .line 241
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 243
    :cond_f
    iput v7, v12, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 244
    invoke-virtual {v10, v12, v15}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Landroid/view/View;)V

    goto/16 :goto_d

    .line 246
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getItemCount()I

    move-result v0

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasHeader:Z

    sub-int/2addr v0, v1

    iget-boolean v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->hasFooter:Z

    sub-int v14, v0, v1

    .line 247
    iget-object v0, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    array-length v0, v0

    if-eq v0, v14, :cond_12

    .line 248
    :cond_11
    new-array v0, v14, [Landroid/view/View;

    iput-object v0, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    .line 250
    :cond_12
    iget-object v1, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->getAllChildren([Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v0

    if-eqz v0, :cond_19

    if-ge v0, v14, :cond_13

    goto/16 :goto_e

    :cond_13
    if-ne v14, v6, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    .line 256
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleOne(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v15

    goto/16 :goto_c

    :cond_14
    const/4 v0, 0x2

    if-ne v14, v0, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    .line 258
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleTwo(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v15

    goto :goto_c

    :cond_15
    const/4 v0, 0x3

    if-ne v14, v0, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    .line 260
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleThree(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v15

    goto :goto_c

    :cond_16
    const/4 v0, 0x4

    if-ne v14, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    .line 262
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleFour(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v15

    goto :goto_c

    :cond_17
    const/4 v0, 0x5

    if-ne v14, v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v18

    .line 264
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->handleFive(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v15

    goto :goto_c

    :cond_18
    const/4 v15, 0x0

    .line 266
    :goto_c
    iput v15, v12, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 267
    iget-object v0, v10, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mChildrenViews:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_19
    :goto_e
    return-void
.end method

.method protected onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void
.end method

.method public onRangeChange(II)V
    .locals 0

    sub-int/2addr p2, p1

    const/4 p0, 0x6

    if-gt p2, p0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OnePlusNLayoutHelper only supports maximum 7 children now"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColWeights([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mColWeights:[F

    :goto_0
    return-void
.end method

.method public setRowWeight(F)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelper;->mRowWeight:F

    return-void
.end method
