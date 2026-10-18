.class public Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;
.source "StickyLayoutHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StickyStartLayoutHelper"


# instance fields
.field private mDoNormalHandle:Z

.field private mFixView:Landroid/view/View;

.field private mOffset:I

.field private mPos:I

.field private mStickyStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    const/4 v2, 0x0

    .line 57
    iput-object v2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->setItemCount(I)V

    return-void
.end method

.method private doMeasure(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 11

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 694
    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 696
    :goto_0
    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v4

    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->getHorizontalMargin()I

    move-result v5

    sub-int/2addr v4, v5

    .line 697
    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v5

    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->getVerticalMargin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 698
    iget v6, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    .line 701
    iget v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    invoke-interface {p2, v4, v1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v1

    .line 703
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, v6, v10

    if-lez v2, :cond_1

    int-to-float p0, v4

    div-float/2addr p0, v6

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    .line 704
    invoke-static {p0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    .line 705
    :cond_1
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_2

    int-to-float v0, v4

    .line 706
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    div-float/2addr v0, p0

    float-to-double v2, v0

    add-double/2addr v2, v7

    double-to-int p0, v2

    invoke-static {p0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    .line 708
    :cond_2
    iget p0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    invoke-interface {p2, v5, p0, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p0

    .line 711
    :goto_1
    invoke-interface {p2, p1, v1, p0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_3

    .line 713
    :cond_3
    iget v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    invoke-interface {p2, v5, v1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v1

    .line 715
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    cmpl-float v2, v6, v10

    if-lez v2, :cond_4

    int-to-float p0, v5

    mul-float/2addr p0, v6

    float-to-double v2, p0

    add-double/2addr v2, v7

    double-to-int p0, v2

    .line 716
    invoke-static {p0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_2

    .line 717
    :cond_4
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_5

    int-to-float v0, v5

    .line 718
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAspectRatio:F

    mul-float/2addr v0, p0

    float-to-double v2, v0

    add-double/2addr v2, v7

    double-to-int p0, v2

    invoke-static {p0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_2

    .line 720
    :cond_5
    iget p0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    invoke-interface {p2, v4, p0, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result p0

    .line 723
    :goto_2
    invoke-interface {p2, p1, p0, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    :goto_3
    return-void
.end method

.method private fixLayoutStateFromAbnormal2Normal(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 2

    const-string p2, "StickyStartLayoutHelper"

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abnormal pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " end: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 303
    iget-boolean p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 304
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_7

    .line 305
    invoke-interface {p5, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 306
    invoke-interface {p5, p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 307
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-ge v0, v1, :cond_2

    .line 308
    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    .line 309
    invoke-interface {p5, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object p2

    .line 310
    instance-of p4, p2, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz p4, :cond_0

    .line 311
    check-cast p2, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {p2, p5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_1

    .line 312
    :cond_0
    instance-of p4, p2, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz p4, :cond_1

    .line 313
    check-cast p2, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginBottom()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 315
    :cond_1
    :goto_1
    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object p4, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget p4, p4, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    add-int/2addr p2, p4

    if-lt p1, p2, :cond_7

    .line 316
    iput-boolean p3, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    goto :goto_4

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 325
    :goto_2
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_7

    .line 326
    invoke-interface {p5, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 327
    invoke-interface {p5, p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 328
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-le v0, v1, :cond_6

    .line 329
    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 330
    invoke-interface {p5, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object p2

    .line 331
    instance-of p4, p2, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz p4, :cond_4

    .line 332
    check-cast p2, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {p2, p5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_3

    .line 333
    :cond_4
    instance-of p4, p2, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz p4, :cond_5

    .line 334
    check-cast p2, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    .line 336
    :cond_5
    :goto_3
    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object p4, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget p4, p4, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    add-int/2addr p2, p4

    if-lt p1, p2, :cond_7

    .line 337
    iput-boolean p3, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method private fixLayoutStateInCase1(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p5

    .line 350
    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    move/from16 v2, p4

    if-ge v2, v1, :cond_1

    :cond_0
    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v1, :cond_1f

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    move/from16 v2, p3

    if-gt v2, v1, :cond_1f

    .line 351
    :cond_1
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 352
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    .line 353
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v5, v5, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    goto :goto_1

    :cond_3
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v5, v5, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->left:I

    :goto_1
    if-eqz v2, :cond_4

    .line 354
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v6, v6, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    goto :goto_2

    :cond_4
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v6, v6, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->right:I

    :goto_2
    const/4 v10, -0x1

    if-eqz v2, :cond_16

    .line 360
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 361
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v11

    sub-int/2addr v2, v11

    .line 362
    iget-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    goto :goto_3

    .line 364
    :cond_5
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v11

    .line 365
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v11

    .line 369
    :goto_3
    iget-boolean v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v12, :cond_9

    .line 370
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v3

    move-object v13, v9

    :goto_4
    if-ltz v12, :cond_d

    .line 371
    invoke-interface {v8, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 372
    invoke-interface {v8, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v14

    .line 373
    iget v15, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-ge v14, v15, :cond_8

    .line 374
    invoke-virtual {v0, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    .line 375
    invoke-interface {v8, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v14

    .line 376
    instance-of v15, v14, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz v15, :cond_6

    .line 377
    check-cast v14, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {v14, v8}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v14

    add-int/2addr v10, v14

    goto :goto_5

    .line 378
    :cond_6
    instance-of v15, v14, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz v15, :cond_7

    .line 379
    check-cast v14, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {v14}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginBottom()I

    move-result v15

    add-int/2addr v10, v15

    invoke-virtual {v14}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingBottom()I

    move-result v14

    add-int/2addr v10, v14

    :cond_7
    :goto_5
    add-int v14, v10, v1

    .line 383
    iput-boolean v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    move v3, v10

    goto :goto_8

    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    :cond_9
    move v12, v4

    move-object v13, v9

    .line 389
    :goto_6
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v14

    if-ge v12, v14, :cond_d

    .line 390
    invoke-interface {v8, v12}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 391
    invoke-interface {v8, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v14

    .line 392
    iget v15, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-le v14, v15, :cond_c

    .line 393
    invoke-virtual {v0, v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 394
    invoke-interface {v8, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v14

    .line 395
    instance-of v15, v14, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz v15, :cond_a

    .line 396
    check-cast v14, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {v14, v8}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v14

    sub-int/2addr v10, v14

    goto :goto_7

    .line 397
    :cond_a
    instance-of v15, v14, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz v15, :cond_b

    .line 398
    check-cast v14, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {v14}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginTop()I

    move-result v15

    sub-int/2addr v10, v15

    invoke-virtual {v14}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingTop()I

    move-result v14

    sub-int/2addr v10, v14

    :cond_b
    :goto_7
    sub-int v14, v10, v1

    add-int/2addr v12, v3

    .line 402
    iput-boolean v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    move v3, v14

    move v14, v10

    :goto_8
    move v10, v12

    goto :goto_9

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_d
    move v3, v4

    move v14, v3

    :goto_9
    if-eqz v13, :cond_e

    if-gez v10, :cond_f

    .line 410
    :cond_e
    iput-boolean v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 413
    :cond_f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v12

    if-nez v12, :cond_11

    iget-boolean v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v12, :cond_10

    goto :goto_a

    .line 418
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v12

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v12, v13

    add-int/2addr v12, v5

    if-ge v3, v12, :cond_12

    .line 419
    iput-boolean v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    goto :goto_b

    .line 414
    :cond_11
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v12

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v6

    if-le v14, v12, :cond_12

    .line 415
    iput-boolean v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 423
    :cond_12
    :goto_b
    iget-boolean v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-nez v4, :cond_15

    .line 424
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-nez v3, :cond_14

    iget-boolean v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v3, :cond_13

    goto :goto_c

    .line 428
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v3

    add-int v3, v0, v5

    add-int v14, v3, v1

    goto :goto_d

    .line 425
    :cond_14
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v3

    sub-int v14, v0, v6

    sub-int v3, v14, v1

    :cond_15
    :goto_d
    move v4, v2

    move v2, v11

    move v5, v14

    goto/16 :goto_13

    .line 434
    :cond_16
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    .line 435
    iget-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v2

    .line 437
    iget-boolean v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-eqz v12, :cond_1b

    .line 439
    iget-boolean v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v5, :cond_18

    .line 440
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_e
    if-ltz v5, :cond_1a

    .line 441
    invoke-interface {v8, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 442
    invoke-interface {v8, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 443
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-ge v6, v12, :cond_17

    .line 444
    invoke-virtual {v0, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_10

    :cond_17
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_18
    move v3, v4

    .line 450
    :goto_f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1a

    .line 451
    invoke-interface {v8, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 452
    invoke-interface {v8, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 453
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-le v6, v12, :cond_19

    .line 454
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int v0, v4, v1

    move v1, v4

    :goto_10
    move v4, v0

    goto :goto_11

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1a
    move v1, v4

    :goto_11
    move v3, v2

    move v2, v4

    move v5, v11

    move v4, v1

    goto :goto_13

    .line 460
    :cond_1b
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-boolean v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v3, :cond_1c

    goto :goto_12

    .line 464
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    add-int/2addr v1, v0

    move v4, v1

    move v3, v2

    move v5, v11

    move v2, v0

    goto :goto_13

    .line 461
    :cond_1d
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v6

    sub-int v1, v0, v1

    move v4, v0

    move v3, v2

    move v5, v11

    move v2, v1

    .line 470
    :goto_13
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 472
    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-eqz v0, :cond_1e

    if-ltz v10, :cond_20

    .line 475
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Landroid/view/View;I)V

    .line 476
    iput-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    goto :goto_14

    .line 479
    :cond_1e
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->showView(Landroid/view/View;)V

    .line 480
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addFixedView(Landroid/view/View;)V

    goto :goto_14

    .line 483
    :cond_1f
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 484
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->recycleView(Landroid/view/View;)V

    .line 485
    iput-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :cond_20
    :goto_14
    return-void
.end method

.method private fixLayoutStateInCase2(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p5

    .line 493
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 496
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    invoke-interface {v8, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 500
    :cond_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 501
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v5, v5, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    goto :goto_1

    :cond_2
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v5, v5, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->left:I

    :goto_1
    if-eqz v2, :cond_3

    .line 502
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v6, v6, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    goto :goto_2

    :cond_3
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v6, v6, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->right:I

    .line 503
    :goto_2
    iget-boolean v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v9, :cond_4

    iget v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    move/from16 v10, p4

    if-ge v10, v9, :cond_5

    :cond_4
    iget-boolean v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v9, :cond_b

    iget v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    move/from16 v10, p3

    if-gt v10, v9, :cond_b

    :cond_5
    if-nez v1, :cond_8

    .line 507
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-boolean v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_3

    :cond_6
    move v9, v6

    :goto_3
    add-int/2addr v1, v9

    if-lez v1, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 510
    :goto_4
    iget v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 511
    iget-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-direct {v7, v9, v8}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->doMeasure(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_6

    .line 512
    :cond_8
    iget-boolean v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v9, :cond_9

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v10

    iget v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    if-lt v9, v10, :cond_9

    .line 515
    iput-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :goto_5
    move v1, v3

    goto :goto_6

    .line 516
    :cond_9
    iget-boolean v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v9, :cond_a

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v10

    iget v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    if-gt v9, v10, :cond_a

    .line 519
    iput-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    goto :goto_5

    .line 524
    :cond_a
    iput-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :cond_b
    const/4 v1, 0x0

    .line 529
    :goto_6
    iget-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz v9, :cond_2a

    .line 530
    iget-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 532
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_c

    return-void

    .line 542
    :cond_c
    iget-object v9, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz v2, :cond_1f

    .line 549
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 550
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    .line 551
    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    sub-int v12, v2, v12

    goto :goto_7

    .line 553
    :cond_d
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v12

    .line 554
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v12

    :goto_7
    if-eqz v1, :cond_1b

    .line 559
    iget-boolean v13, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v13, :cond_11

    .line 560
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v3

    move-object v14, v10

    :goto_8
    if-ltz v13, :cond_15

    .line 561
    invoke-interface {v8, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 562
    invoke-interface {v8, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v15

    .line 563
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-ge v15, v4, :cond_10

    .line 564
    invoke-virtual {v0, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    .line 565
    invoke-interface {v8, v15}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v11

    .line 566
    instance-of v15, v11, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz v15, :cond_e

    .line 567
    check-cast v11, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {v11, v8}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v11

    add-int/2addr v4, v11

    goto :goto_9

    .line 568
    :cond_e
    instance-of v15, v11, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz v15, :cond_f

    .line 569
    check-cast v11, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginBottom()I

    move-result v15

    add-int/2addr v4, v15

    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingBottom()I

    move-result v11

    add-int/2addr v4, v11

    :cond_f
    :goto_9
    add-int v11, v4, v9

    add-int/2addr v13, v3

    move v3, v4

    move v4, v11

    move v11, v13

    goto :goto_d

    :cond_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_11
    move-object v14, v10

    const/4 v3, 0x0

    .line 577
    :goto_a
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 578
    invoke-interface {v8, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 579
    invoke-interface {v8, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 580
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-le v4, v13, :cond_14

    .line 581
    invoke-virtual {v0, v14}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 582
    invoke-interface {v8, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v4

    .line 583
    instance-of v13, v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    if-eqz v13, :cond_13

    .line 584
    check-cast v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getBorderStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result v4

    sub-int/2addr v11, v4

    :cond_12
    :goto_b
    move v4, v11

    goto :goto_c

    .line 585
    :cond_13
    instance-of v13, v4, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    if-eqz v13, :cond_12

    .line 586
    check-cast v4, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getMarginTop()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/layout/MarginLayoutHelper;->getPaddingTop()I

    move-result v4

    sub-int/2addr v11, v4

    goto :goto_b

    :goto_c
    sub-int v11, v4, v9

    move/from16 v17, v11

    move v11, v3

    move/from16 v3, v17

    goto :goto_d

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-eqz v14, :cond_16

    if-gez v11, :cond_17

    :cond_16
    const/4 v1, 0x0

    .line 600
    :cond_17
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v13

    if-nez v13, :cond_19

    iget-boolean v13, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v13, :cond_18

    goto :goto_e

    .line 605
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v13

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v13, v14

    add-int/2addr v13, v5

    if-ge v3, v13, :cond_1a

    goto :goto_f

    .line 601
    :cond_19
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v13

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v6

    if-le v4, v13, :cond_1a

    :goto_f
    const/16 v16, 0x0

    goto :goto_10

    :cond_1a
    move/from16 v16, v1

    goto :goto_10

    :cond_1b
    move/from16 v16, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-nez v16, :cond_1e

    .line 613
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v1, :cond_1c

    goto :goto_11

    .line 617
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    add-int/2addr v9, v0

    move v3, v0

    move v4, v2

    move v5, v9

    goto :goto_13

    .line 614
    :cond_1d
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    sub-int v1, v0, v9

    move v5, v0

    move v3, v1

    goto :goto_12

    :cond_1e
    move v5, v4

    :goto_12
    move v4, v2

    :goto_13
    move v2, v12

    goto/16 :goto_19

    .line 623
    :cond_1f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    .line 624
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    if-eqz v1, :cond_25

    .line 628
    iget-boolean v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v5, :cond_22

    .line 629
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_14
    if-ltz v5, :cond_21

    .line 630
    invoke-interface {v8, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 631
    invoke-interface {v8, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 632
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-ge v6, v12, :cond_20

    .line 633
    invoke-virtual {v0, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    add-int/2addr v9, v0

    move/from16 v16, v0

    goto :goto_15

    :cond_20
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_21
    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_15
    move v0, v9

    goto :goto_17

    :cond_22
    const/4 v3, 0x0

    .line 639
    :goto_16
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_24

    .line 640
    invoke-interface {v8, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 641
    invoke-interface {v8, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 642
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-le v6, v12, :cond_23

    .line 643
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int v3, v0, v9

    move/from16 v16, v3

    goto :goto_17

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_17
    move v3, v2

    move v5, v4

    move/from16 v2, v16

    move v4, v0

    move/from16 v16, v1

    goto :goto_19

    .line 649
    :cond_25
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-nez v3, :cond_27

    iget-boolean v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v3, :cond_26

    goto :goto_18

    .line 653
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    add-int/2addr v9, v0

    move/from16 v16, v1

    move v3, v2

    move v5, v4

    move v4, v9

    move v2, v0

    goto :goto_19

    .line 650
    :cond_27
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v6

    sub-int v3, v0, v9

    move/from16 v16, v1

    move v5, v4

    move v4, v0

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 659
    :goto_19
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    if-eqz v16, :cond_28

    if-ltz v11, :cond_29

    .line 664
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0, v11}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Landroid/view/View;I)V

    .line 665
    iput-object v10, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    goto :goto_1a

    .line 668
    :cond_28
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {v8, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addFixedView(Landroid/view/View;)V

    :cond_29
    :goto_1a
    move/from16 v1, v16

    .line 672
    :cond_2a
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    return-void
.end method


# virtual methods
.method public afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 6

    .line 255
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 258
    iget p5, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-gez p5, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-interface {p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p5

    .line 265
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-lt v0, p3, :cond_1

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    if-gt v0, p4, :cond_1

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->fixLayoutStateFromAbnormal2Normal(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 274
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 275
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p6, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 283
    :cond_3
    iget-boolean p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 286
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    .line 287
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p6, p0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addFixedView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->fixLayoutStateInCase1(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 292
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->fixLayoutStateInCase2(Lcom/alibaba/android/vlayout/OrientationHelperEx;Landroidx/recyclerview/widget/RecyclerView$Recycler;IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    :goto_0
    return-void

    :cond_6
    return-void
.end method

.method public beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 236
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p3, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isViewHolderUpdated(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p3, p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 239
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :cond_0
    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    return-void
.end method

.method public getFixedView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 679
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    return-object p0
.end method

.method public isStickyNow()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 99
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-nez v0, :cond_1

    move-object/from16 v1, p1

    .line 106
    invoke-virtual {v8, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->skipCurrentPosition()V

    goto :goto_0

    :goto_1
    const/4 v12, 0x1

    if-nez v11, :cond_2

    .line 111
    iput-boolean v12, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFinished:Z

    return-void

    .line 116
    :cond_2
    invoke-direct {v7, v11, v10}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->doMeasure(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 120
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v12, :cond_3

    move v13, v12

    goto :goto_2

    :cond_3
    move v13, v1

    .line 121
    :goto_2
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    iput v2, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 124
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 126
    iput-boolean v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getAvailable()I

    move-result v2

    iget v3, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getExtra()I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v12, :cond_f

    .line 133
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v3

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginRight:I

    sub-int/2addr v3, v5

    .line 135
    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    sub-int v5, v3, v5

    goto :goto_3

    .line 137
    :cond_4
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v3

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginLeft:I

    add-int/2addr v5, v3

    .line 138
    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    .line 142
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v6

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginBottom:I

    sub-int/2addr v6, v14

    .line 145
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v14

    iget v15, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int/2addr v14, v15

    goto :goto_4

    .line 148
    :cond_5
    iget-boolean v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-eqz v6, :cond_6

    .line 149
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v6

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginTop:I

    add-int/2addr v14, v6

    .line 150
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v6

    iget v15, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    add-int/2addr v6, v15

    goto :goto_4

    .line 152
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v6

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginBottom:I

    sub-int/2addr v6, v14

    iget v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v6, v14

    iget-object v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v14, v14, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    sub-int/2addr v6, v14

    .line 153
    iget v14, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int v14, v6, v14

    .line 158
    :goto_4
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v15

    if-nez v15, :cond_b

    iget-boolean v15, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v15, :cond_7

    goto :goto_5

    .line 169
    :cond_7
    iget v15, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v12, v12, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    add-int/2addr v15, v12

    if-ge v2, v15, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getItemDirection()I

    move-result v12

    if-eq v12, v4, :cond_9

    :cond_8
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginTop:I

    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v4, v12

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v12, v12, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    add-int/2addr v4, v12

    if-ge v14, v4, :cond_a

    .line 171
    :cond_9
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 172
    iput-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 173
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginTop:I

    add-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v1, v1, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->top:I

    add-int/2addr v0, v1

    .line 174
    iget v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v0

    move v4, v3

    move v2, v5

    move v3, v0

    move v5, v1

    goto/16 :goto_9

    :cond_a
    const-string v0, "Sticky"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remainingSpace: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 159
    :cond_b
    :goto_5
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v12, v12, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    add-int/2addr v4, v12

    if-ge v2, v4, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getItemDirection()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    :cond_c
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginBottom:I

    iget v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v2, v4

    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v4, v4, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    add-int/2addr v2, v4

    if-le v6, v2, :cond_e

    .line 161
    :cond_d
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 162
    iput-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginBottom:I

    sub-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v1, v1, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->bottom:I

    sub-int/2addr v0, v1

    .line 165
    iget v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int v1, v0, v1

    move v4, v3

    move v2, v5

    move v5, v0

    move v3, v1

    goto/16 :goto_9

    :cond_e
    :goto_6
    move v4, v3

    move v2, v5

    move v5, v6

    move v3, v14

    goto/16 :goto_9

    .line 181
    :cond_f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v3

    .line 182
    invoke-virtual {v0, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginTop:I

    add-int/2addr v5, v6

    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_10

    .line 185
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v4

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginRight:I

    sub-int/2addr v4, v6

    .line 186
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v6

    iget v12, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int/2addr v6, v12

    goto :goto_7

    .line 188
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v4

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mMarginLeft:I

    add-int/2addr v6, v4

    .line 189
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v4

    iget v12, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v12

    .line 191
    :goto_7
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v12

    if-nez v12, :cond_12

    iget-boolean v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    if-nez v12, :cond_11

    goto :goto_8

    .line 200
    :cond_11
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v14, v14, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->left:I

    add-int/2addr v12, v14

    if-ge v2, v12, :cond_13

    .line 201
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 202
    iput-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v1, v1, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->left:I

    add-int/2addr v0, v1

    .line 204
    iget v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    move v2, v0

    move v4, v1

    goto :goto_9

    .line 192
    :cond_12
    :goto_8
    iget v12, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    iget-object v14, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v14, v14, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->right:I

    add-int/2addr v12, v14

    if-ge v2, v12, :cond_13

    .line 193
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 194
    iput-object v11, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    .line 196
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mAdjuster:Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;

    iget v1, v1, Lcom/alibaba/android/vlayout/layout/FixAreaAdjuster;->right:I

    sub-int/2addr v0, v1

    .line 197
    iget v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    sub-int v1, v0, v1

    move v4, v0

    move v2, v1

    goto :goto_9

    :cond_13
    move v2, v6

    :goto_9
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v6, p5

    .line 211
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 213
    iget v0, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    if-eqz v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->getVerticalMargin()I

    move-result v1

    goto :goto_a

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->getHorizontalMargin()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    iput v0, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    .line 219
    :cond_15
    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mDoNormalHandle:Z

    if-eqz v0, :cond_16

    .line 220
    invoke-interface {v10, v8, v11}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;)V

    .line 221
    invoke-virtual {v7, v9, v11}, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 222
    iput-object v0, v7, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :cond_16
    return-void
.end method

.method public onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 1

    .line 684
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 685
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 687
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->recycleView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 688
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mFixView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onRangeChange(II)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mPos:I

    return-void
.end method

.method public requireLayoutView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setItemCount(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->setItemCount(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/FixAreaLayoutHelper;->setItemCount(I)V

    :goto_0
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mOffset:I

    return-void
.end method

.method public setStickyStart(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;->mStickyStart:Z

    return-void
.end method
