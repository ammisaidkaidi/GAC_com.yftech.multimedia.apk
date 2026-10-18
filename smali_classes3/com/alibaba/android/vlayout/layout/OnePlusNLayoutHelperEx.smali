.class public Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;
.super Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;
.source "OnePlusNLayoutHelperEx.java"


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

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 89
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 91
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    .line 94
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->setItemCount(I)V

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

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/AbstractFullFillLayoutHelper;-><init>()V

    .line 85
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 89
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 91
    iput p2, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    .line 103
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->setItemCount(I)V

    return-void
.end method

.method private getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    array-length p1, p1

    if-le p1, p2, :cond_0

    .line 190
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    aget p0, p0, p2

    return p0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method private handSeven(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 44

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 522
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 524
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 525
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 526
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 527
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x6

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 528
    :goto_1
    new-instance v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 529
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 530
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    const/4 v15, 0x5

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v15

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_1
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v6

    goto :goto_2

    .line 531
    :goto_3
    new-instance v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 532
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v4, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 533
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v10

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v13

    goto :goto_4

    :cond_2
    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v12

    .line 534
    :goto_4
    new-instance v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 535
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v15, v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 536
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v6, v6, v12

    goto :goto_5

    :cond_3
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v6, v6, v13

    .line 537
    :goto_5
    new-instance v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 538
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v13, v12}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 539
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/16 v16, 0x2

    aget-object v12, v12, v16

    :goto_6
    move-object/from16 v18, v9

    goto :goto_7

    :cond_4
    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/16 v16, 0x5

    aget-object v12, v12, v16

    goto :goto_6

    .line 540
    :goto_7
    new-instance v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 541
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v9, v12}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 542
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    move-object/from16 v20, v9

    const/4 v9, 0x1

    aget-object v12, v12, v9

    goto :goto_8

    :cond_5
    move-object/from16 v20, v9

    const/4 v9, 0x1

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/16 v16, 0x6

    aget-object v12, v12, v16

    .line 543
    :goto_8
    new-instance v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 544
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v22, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v9, v12}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 v12, 0x0

    .line 546
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    const/4 v12, 0x1

    .line 547
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v21

    const/4 v12, 0x2

    .line 548
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v23

    const/4 v12, 0x3

    .line 549
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v24

    const/4 v12, 0x4

    .line 550
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v25

    const/4 v12, 0x5

    .line 551
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v26

    const/4 v12, 0x6

    .line 552
    invoke-direct {v7, v2, v12}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v27

    if-eqz p4, :cond_f

    .line 556
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_6

    sub-int v12, p5, p7

    int-to-float v12, v12

    move-object/from16 v28, v9

    .line 557
    iget v9, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    div-float/2addr v12, v9

    float-to-int v9, v12

    iput v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    goto :goto_9

    :cond_6
    move-object/from16 v28, v9

    :goto_9
    sub-int v0, p5, p7

    .line 560
    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 564
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v29, 0x3f000000    # 0.5f

    if-eqz v1, :cond_7

    int-to-float v1, v0

    div-float/2addr v1, v9

    :goto_a
    add-float v1, v1, v29

    float-to-int v1, v1

    goto :goto_b

    :cond_7
    int-to-float v1, v0

    mul-float v1, v1, v16

    div-float/2addr v1, v12

    goto :goto_a

    .line 567
    :goto_b
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_8

    sub-int v16, v0, v1

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v9, v16

    goto :goto_c

    :cond_8
    const/16 v17, 0x2

    int-to-float v9, v0

    mul-float v9, v9, v21

    div-float/2addr v9, v12

    add-float v9, v9, v29

    float-to-int v9, v9

    .line 569
    :goto_c
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v30, v6

    move v6, v9

    move-object/from16 v31, v13

    goto :goto_d

    :cond_9
    move-object/from16 v30, v6

    int-to-float v6, v0

    mul-float v6, v6, v23

    div-float/2addr v6, v12

    move-object/from16 v31, v13

    float-to-double v12, v6

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v32

    double-to-int v6, v12

    .line 572
    :goto_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_a

    move v12, v9

    const/high16 v13, 0x42c80000    # 100.0f

    goto :goto_e

    :cond_a
    int-to-float v12, v0

    mul-float v12, v12, v24

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    add-float v12, v12, v29

    float-to-int v12, v12

    .line 574
    :goto_e
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v34, v10

    move v10, v9

    goto :goto_f

    :cond_b
    move-object/from16 v34, v10

    int-to-float v10, v0

    mul-float v10, v10, v25

    div-float/2addr v10, v13

    add-float v10, v10, v29

    float-to-int v10, v10

    .line 576
    :goto_f
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v35, v10

    move v10, v9

    goto :goto_10

    :cond_c
    move/from16 v35, v10

    int-to-float v10, v0

    mul-float v10, v10, v26

    div-float/2addr v10, v13

    add-float v10, v10, v29

    float-to-int v10, v10

    .line 578
    :goto_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_d

    move v0, v9

    goto :goto_11

    :cond_d
    int-to-float v0, v0

    mul-float v0, v0, v27

    div-float/2addr v0, v13

    add-float v0, v0, v29

    float-to-int v0, v0

    .line 581
    :goto_11
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v13

    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    const/high16 v13, 0x40000000    # 2.0f

    .line 582
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 584
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v13

    move/from16 v36, v0

    iget v0, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    move-object/from16 v37, v2

    const/4 v2, 0x1

    invoke-interface {v8, v13, v0, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v0

    .line 581
    invoke-interface {v8, v11, v1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 586
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 587
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v2, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    :goto_12
    div-float/2addr v1, v2

    add-float v1, v1, v29

    float-to-int v1, v1

    goto :goto_13

    :cond_e
    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v2, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_12

    .line 592
    :goto_13
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 593
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v1

    move-object/from16 v38, v11

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    .line 595
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 592
    invoke-interface {v8, v14, v9, v11}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 598
    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 599
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v1

    iget v11, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    .line 601
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 598
    invoke-interface {v8, v5, v6, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 604
    iget v6, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v12, v6

    iget v6, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v12, v6

    .line 605
    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v1

    iget v11, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    .line 607
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move-object/from16 v11, v34

    .line 604
    invoke-interface {v8, v11, v6, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v6, v31

    .line 610
    iget v9, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v9, v35, v9

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v12

    .line 611
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v12, v1

    iget v13, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 613
    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move-object/from16 v13, v30

    .line 610
    invoke-interface {v8, v13, v9, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v9, v20

    .line 616
    iget v12, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v10, v12

    iget v12, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v10, v12

    .line 617
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v12, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v12, v1

    move-object/from16 v39, v5

    iget v5, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    .line 619
    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v12, v19

    .line 616
    invoke-interface {v8, v12, v10, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v5, v28

    .line 622
    iget v10, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v10, v36, v10

    move-object/from16 v40, v13

    iget v13, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v10, v13

    .line 623
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v13, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v13, v1

    move-object/from16 v41, v12

    iget v12, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v12

    .line 625
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v12, v22

    .line 622
    invoke-interface {v8, v12, v10, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 629
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v1

    iget v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 630
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v4, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v6, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    .line 631
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v4, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v4, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    .line 632
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    move-object/from16 v1, v37

    .line 634
    iget v3, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    add-int v10, v0, v1

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 641
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v9, v18

    move-object/from16 v13, v38

    invoke-virtual {v9, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 642
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move v4, v15

    move-object/from16 v6, v39

    move-object v8, v6

    move/from16 v42, v10

    move/from16 v16, v17

    move-object/from16 v10, v40

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 644
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v15, v0

    .line 645
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 648
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move/from16 v4, v17

    .line 645
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 650
    invoke-virtual {v9, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    .line 651
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 652
    invoke-virtual {v9, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    .line 651
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 654
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v15, v0

    .line 655
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 656
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v6, v41

    .line 658
    invoke-virtual {v9, v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    move/from16 v4, v17

    move-object/from16 v43, v11

    move-object v11, v6

    move-object/from16 v6, p3

    .line 655
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 660
    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    .line 661
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 662
    invoke-virtual {v9, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 664
    invoke-virtual {v9, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    .line 661
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 666
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v15, v0

    .line 667
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 668
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    move/from16 v4, v17

    .line 667
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 672
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 673
    invoke-virtual {v9, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 674
    invoke-virtual {v9, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v17

    .line 672
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    const/4 v0, 0x6

    goto :goto_14

    :cond_f
    move-object v8, v5

    move-object/from16 v43, v10

    move-object v13, v11

    move-object/from16 v11, v19

    const/16 v16, 0x2

    move-object v10, v6

    const/4 v0, 0x6

    const/16 v42, 0x0

    .line 680
    :goto_14
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    aput-object v8, v0, v16

    const/4 v1, 0x3

    aput-object v43, v0, v1

    const/4 v1, 0x4

    aput-object v10, v0, v1

    const/4 v1, 0x5

    aput-object v11, v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v42
.end method

.method private handSix(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 37

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 361
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 363
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 364
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 365
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 366
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 367
    :goto_1
    new-instance v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 368
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 369
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    const/4 v15, 0x4

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v15

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_1
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v6

    goto :goto_2

    .line 370
    :goto_3
    new-instance v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 371
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v4, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 372
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v10

    const/4 v12, 0x3

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v12

    goto :goto_4

    :cond_2
    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v12

    .line 373
    :goto_4
    new-instance v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 374
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v12, v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 375
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v13, v13, v6

    goto :goto_5

    :cond_3
    iget-object v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v13, v13, v15

    .line 376
    :goto_5
    new-instance v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 377
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v15, v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 378
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    move-object/from16 v18, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    goto :goto_6

    :cond_4
    move-object/from16 v18, v9

    const/4 v9, 0x1

    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/4 v9, 0x5

    aget-object v6, v6, v9

    .line 379
    :goto_6
    new-instance v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 380
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v21, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v9, v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 v6, 0x0

    .line 382
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    const/4 v6, 0x1

    .line 383
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v19

    const/4 v6, 0x2

    .line 384
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v22

    const/4 v6, 0x3

    .line 385
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v23

    const/4 v6, 0x4

    .line 386
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v24

    const/4 v6, 0x5

    .line 387
    invoke-direct {v7, v2, v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v20

    if-eqz p4, :cond_d

    .line 391
    iget v6, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    iput v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    .line 392
    iget v6, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v6, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v6, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    .line 393
    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    iput v6, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    .line 394
    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v6, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 395
    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v6, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 397
    iget v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    sub-int v6, p5, p7

    int-to-float v6, v6

    move-object/from16 v25, v13

    .line 398
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    div-float/2addr v6, v13

    float-to-int v6, v6

    iput v6, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    goto :goto_7

    :cond_5
    move-object/from16 v25, v13

    :goto_7
    sub-int v0, p5, p7

    .line 401
    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int v1, v0, v1

    iget v6, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v6

    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v6

    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v6

    .line 405
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v26, 0x42c80000    # 100.0f

    const/high16 v27, 0x3f000000    # 0.5f

    if-eqz v6, :cond_6

    int-to-float v6, v1

    div-float/2addr v6, v13

    :goto_8
    add-float v6, v6, v27

    float-to-int v6, v6

    goto :goto_9

    :cond_6
    int-to-float v6, v1

    mul-float v6, v6, v16

    div-float v6, v6, v26

    goto :goto_8

    .line 408
    :goto_9
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_7

    sub-int v16, v1, v6

    move/from16 v13, v16

    goto :goto_a

    :cond_7
    int-to-float v13, v1

    mul-float v13, v13, v19

    div-float v13, v13, v26

    add-float v13, v13, v27

    float-to-int v13, v13

    .line 410
    :goto_a
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v28, v10

    move/from16 v30, v13

    move-object/from16 v29, v14

    goto :goto_b

    :cond_8
    move-object/from16 v28, v10

    int-to-float v10, v1

    mul-float v10, v10, v22

    div-float v10, v10, v26

    move/from16 v30, v13

    move-object/from16 v29, v14

    float-to-double v13, v10

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v31

    double-to-int v13, v13

    .line 413
    :goto_b
    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v10

    iget v10, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v10

    iget v10, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v10

    iget v10, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v10

    iget v10, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v10

    iget v10, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v10

    .line 417
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_9

    int-to-float v0, v0

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v0, v10

    :goto_c
    add-float v0, v0, v27

    float-to-int v0, v0

    goto :goto_d

    :cond_9
    int-to-float v0, v1

    mul-float v0, v0, v23

    div-float v0, v0, v26

    goto :goto_c

    .line 419
    :goto_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v0

    goto :goto_e

    :cond_a
    int-to-float v10, v1

    mul-float v10, v10, v24

    div-float v10, v10, v26

    add-float v10, v10, v27

    float-to-int v10, v10

    .line 421
    :goto_e
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_b

    move v1, v0

    goto :goto_f

    :cond_b
    int-to-float v1, v1

    mul-float v1, v1, v20

    div-float v1, v1, v26

    add-float v1, v1, v27

    float-to-int v1, v1

    .line 424
    :goto_f
    iget v14, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v6, v14

    iget v14, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v14

    const/high16 v14, 0x40000000    # 2.0f

    .line 425
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 427
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v14

    move/from16 v33, v1

    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    move-object/from16 v34, v2

    const/4 v2, 0x1

    invoke-interface {v8, v14, v1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v1

    .line 424
    invoke-interface {v8, v11, v6, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 429
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 430
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v1, v2

    iget v6, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    :goto_10
    add-float v2, v2, v27

    float-to-int v2, v2

    goto :goto_11

    :cond_c
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v1, v2

    iget v6, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    mul-float/2addr v2, v6

    div-float v2, v2, v26

    goto :goto_10

    .line 434
    :goto_11
    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v6, v1, v6

    iget v14, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v6, v14

    sub-int/2addr v6, v2

    .line 436
    iget v14, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v14, v30, v14

    move-object/from16 v35, v11

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v14, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 437
    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v11, v2

    iget v7, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 439
    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move-object/from16 v7, v29

    .line 436
    invoke-interface {v8, v7, v14, v11}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 442
    iget v11, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v13, v11

    iget v11, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v13, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 443
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v14, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v14, v6

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v4

    .line 445
    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 442
    invoke-interface {v8, v5, v13, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 448
    iget v4, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v0, v4

    iget v4, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 449
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v13, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v13

    .line 451
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v13, v28

    .line 448
    invoke-interface {v8, v13, v0, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 454
    iget v0, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    iget v0, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v10, v0

    .line 455
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v10, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v10

    .line 457
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v10, v25

    .line 454
    invoke-interface {v8, v10, v0, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 460
    iget v0, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v0, v33, v0

    iget v4, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 461
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v14, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v14

    .line 463
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v11, v21

    .line 460
    invoke-interface {v8, v11, v0, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v0, v34

    .line 467
    iget v4, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    const/4 v14, 0x2

    mul-int/2addr v2, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 470
    iget v1, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v2, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v3, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v6, v3

    iget v3, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v3

    .line 471
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 470
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    add-int v9, v0, v1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v12, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 479
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v15, v18

    move-object/from16 v6, v35

    .line 480
    invoke-virtual {v15, v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 481
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 482
    invoke-virtual {v15, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v17, v0, v1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v16

    move-object v14, v5

    move/from16 v5, v17

    move-object v8, v11

    const/16 v17, 0x2

    move-object v11, v6

    move-object/from16 v6, p3

    .line 481
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 484
    invoke-virtual {v15, v7}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v16, v0

    .line 485
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 486
    invoke-virtual {v15, v7}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    .line 485
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 489
    invoke-virtual {v15, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v16, v0

    .line 490
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 491
    invoke-virtual {v15, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v3, v0, v1

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 492
    invoke-virtual {v15, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    .line 490
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 494
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 495
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 496
    invoke-virtual {v15, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v4, v16

    .line 495
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 500
    invoke-virtual {v15, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v18, v16, v0

    .line 501
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 502
    invoke-virtual {v15, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move/from16 v4, v18

    .line 501
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 506
    invoke-virtual {v15, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v18, v0

    .line 507
    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 508
    invoke-virtual {v15, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v12, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v18

    .line 507
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_12

    :cond_d
    move-object v12, v7

    move-object v7, v14

    move-object/from16 v8, v21

    const/16 v17, 0x2

    move-object v14, v5

    move-object/from16 v36, v13

    move-object v13, v10

    move-object/from16 v10, v36

    const/4 v9, 0x0

    :goto_12
    const/4 v0, 0x6

    .line 515
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    aput-object v14, v0, v17

    const/4 v1, 0x3

    aput-object v13, v0, v1

    const/4 v1, 0x4

    aput-object v10, v0, v1

    const/4 v1, 0x5

    aput-object v8, v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v9
.end method

.method private handleFive(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 228
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v9

    .line 230
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 231
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 232
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v2, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 233
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v12

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v3, v3, v13

    goto :goto_0

    .line 234
    :goto_1
    new-instance v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 235
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 236
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    const/4 v15, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v15

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_1
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v4, v4, v6

    goto :goto_2

    .line 237
    :goto_3
    new-instance v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 238
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v4, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 239
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v6

    goto :goto_4

    :cond_2
    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v10, v10, v15

    .line 240
    :goto_4
    new-instance v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 241
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v15, v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 242
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v6, v6, v13

    goto :goto_5

    :cond_3
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    aget-object v6, v6, v12

    .line 243
    :goto_5
    new-instance v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 244
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v12, v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 v13, 0x0

    .line 246
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v16

    const/4 v13, 0x1

    .line 247
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v18

    const/4 v13, 0x2

    .line 248
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v19

    const/4 v13, 0x3

    .line 249
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v20

    const/4 v13, 0x4

    .line 250
    invoke-direct {v7, v2, v13}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getViewMainWeight(Landroid/view/ViewGroup$MarginLayoutParams;I)F

    move-result v21

    if-eqz p4, :cond_b

    .line 254
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    iput v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    .line 255
    iget v13, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v13, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    iput v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    .line 256
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    iput v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    .line 257
    iget v13, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v13, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 258
    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    iput v13, v12, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    .line 260
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_4

    sub-int v13, p5, p7

    int-to-float v13, v13

    move-object/from16 v22, v9

    .line 261
    iget v9, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAspectRatio:F

    div-float/2addr v13, v9

    float-to-int v9, v13

    iput v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    goto :goto_6

    :cond_4
    move-object/from16 v22, v9

    :goto_6
    sub-int v0, p5, p7

    .line 264
    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    .line 268
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v13, 0x3f000000    # 0.5f

    if-eqz v1, :cond_5

    int-to-float v1, v0

    const/high16 v16, 0x40400000    # 3.0f

    div-float v1, v1, v16

    :goto_7
    add-float/2addr v1, v13

    float-to-int v1, v1

    goto :goto_8

    :cond_5
    int-to-float v1, v0

    mul-float v1, v1, v16

    div-float/2addr v1, v9

    goto :goto_7

    .line 270
    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_6

    sub-int v16, v0, v1

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v28, v16

    move/from16 v16, v13

    move/from16 v13, v28

    goto :goto_9

    :cond_6
    const/16 v17, 0x2

    int-to-float v13, v0

    mul-float v13, v13, v18

    div-float/2addr v13, v9

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v13, v13, v16

    float-to-int v13, v13

    .line 272
    :goto_9
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v23, v6

    move v6, v13

    goto :goto_a

    :cond_7
    move-object/from16 v23, v6

    int-to-float v6, v0

    mul-float v6, v6, v19

    div-float/2addr v6, v9

    add-float v6, v6, v16

    float-to-int v6, v6

    .line 274
    :goto_a
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v24, v12

    move v12, v13

    goto :goto_b

    :cond_8
    move-object/from16 v24, v12

    int-to-float v12, v0

    mul-float v12, v12, v20

    div-float/2addr v12, v9

    add-float v12, v12, v16

    float-to-int v12, v12

    .line 276
    :goto_b
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_9

    move v0, v13

    goto :goto_c

    :cond_9
    int-to-float v0, v0

    mul-float v0, v0, v21

    div-float/2addr v0, v9

    add-float v0, v0, v16

    float-to-int v0, v0

    .line 279
    :goto_c
    iget v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    iget v9, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v9

    const/high16 v9, 0x40000000    # 2.0f

    .line 280
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 282
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v9

    move/from16 v25, v0

    iget v0, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    move-object/from16 v26, v2

    const/4 v2, 0x1

    invoke-interface {v8, v9, v0, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v0

    .line 279
    invoke-interface {v8, v11, v1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 284
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 285
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v2, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_d
    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_e

    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    iget v1, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v1, v0, v1

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v1, v9

    int-to-float v1, v1

    iget v9, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    mul-float/2addr v1, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v1, v9

    goto :goto_d

    .line 289
    :goto_e
    iget v2, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v2, v0, v2

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v1

    .line 291
    iget v9, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v13, v9

    iget v9, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v13, v9

    const/high16 v9, 0x40000000    # 2.0f

    .line 292
    invoke-static {v13, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v9, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v1

    move-object/from16 v27, v11

    iget v11, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    .line 294
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 291
    invoke-interface {v8, v14, v13, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 297
    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 298
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v13

    .line 300
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 297
    invoke-interface {v8, v5, v6, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 303
    iget v6, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v12, v6

    iget v6, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v12, v6

    .line 304
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v12, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v12

    .line 306
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 303
    invoke-interface {v8, v10, v6, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v6, v24

    .line 309
    iget v9, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->leftMargin:I

    add-int v9, v25, v9

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v9, v12

    .line 310
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v12, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v12, v2

    iget v6, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v6

    .line 312
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v11, v23

    .line 309
    invoke-interface {v8, v11, v9, v6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    move-object/from16 v6, v26

    .line 315
    iget v9, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v0, v9

    iget v6, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v6

    iget v6, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v3, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 317
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    add-int v9, v0, v1

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->calculateRect(ILandroid/graphics/Rect;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 323
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v12, v22

    move-object/from16 v13, v27

    .line 324
    invoke-virtual {v12, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 325
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v13

    move v4, v15

    move-object v8, v5

    move v5, v6

    move/from16 v16, v17

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 328
    invoke-virtual {v12, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v15, v0

    .line 329
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 330
    invoke-virtual {v12, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move/from16 v4, v17

    .line 329
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 333
    invoke-virtual {v12, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    .line 334
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 336
    invoke-virtual {v12, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    .line 334
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 338
    invoke-virtual {v12, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v17, v15, v0

    .line 339
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 340
    invoke-virtual {v12, v10}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v15

    move/from16 v4, v17

    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 344
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 345
    invoke-virtual {v12, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v3, v0, v1

    .line 346
    invoke-virtual {v12, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v17, v0

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mAreaRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v17

    .line 344
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_f

    :cond_b
    move-object v8, v5

    move-object v13, v11

    const/16 v16, 0x2

    move-object v11, v6

    const/4 v9, 0x0

    :goto_f
    const/4 v0, 0x5

    .line 352
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    aput-object v8, v0, v16

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;[Landroid/view/View;)V

    return v9
.end method


# virtual methods
.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getItemCount()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    const-string p0, "OnePlusNLayoutHelper"

    const-string p1, "Should not happen after adjust anchor"

    .line 201
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getItemCount()I

    move-result p3

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    return v0

    .line 210
    :cond_1
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 212
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mMarginBottom:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mPaddingBottom:I

    add-int/2addr p1, p0

    return p1

    .line 214
    :cond_2
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mMarginTop:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mPaddingTop:I

    sub-int/2addr p1, p0

    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 218
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mMarginRight:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mPaddingRight:I

    add-int/2addr p1, p0

    return p1

    .line 220
    :cond_4
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mMarginLeft:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mPaddingLeft:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 9

    .line 145
    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    array-length v0, v0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getItemCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getItemCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getAllChildren([Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getItemCount()I

    move-result v1

    if-eq v0, v1, :cond_3

    const-string v1, "OnePlusNLayoutHelper"

    const-string v2, "The real number of children is not match with range of LayoutHelper"

    .line 157
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    move v4, v2

    .line 162
    :goto_0
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v5

    .line 163
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v6

    .line 164
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v1

    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getHorizontalMargin()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getHorizontalPadding()I

    move-result v3

    add-int v7, v1, v3

    .line 166
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v1

    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalMargin()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->getVerticalPadding()I

    move-result v3

    add-int v8, v1, v3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    .line 172
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handleFive(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    .line 175
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handSix(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    .line 178
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->handSeven(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZIIII)I

    move-result v2

    .line 182
    :cond_7
    :goto_1
    iput v2, p4, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mChildrenViews:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRangeChange(II)V
    .locals 0

    sub-int/2addr p2, p1

    const/4 p0, 0x4

    if-lt p2, p0, :cond_1

    const/4 p0, 0x6

    if-gt p2, p0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OnePlusNLayoutHelper only supports maximum 7 children now"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pls use OnePlusNLayoutHelper instead of OnePlusNLayoutHelperEx which childcount <= 5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColWeights([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mColWeights:[F

    :goto_0
    return-void
.end method

.method public setRowWeight(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/OnePlusNLayoutHelperEx;->mRowWeight:F

    return-void
.end method
