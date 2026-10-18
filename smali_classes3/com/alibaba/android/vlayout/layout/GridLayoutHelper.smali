.class public Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;
.source "GridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;,
        Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$DefaultSpanSizeLookup;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "GridLayoutHelper"


# instance fields
.field private mHGap:I

.field private mIgnoreExtra:Z

.field private mIsAutoExpand:Z

.field private mLayoutWithAnchor:Z

.field private mSet:[Landroid/view/View;

.field private mSizePerSpan:I

.field private mSpanCols:[I

.field private mSpanCount:I

.field private mSpanIndices:[I

.field private mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTotalSize:I

.field private mVGap:I

.field private mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 96
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;-><init>()V

    const/4 v0, 0x4

    .line 58
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    .line 64
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIsAutoExpand:Z

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIgnoreExtra:Z

    .line 70
    new-instance v2, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$DefaultSpanSizeLookup;

    invoke-direct {v2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$DefaultSpanSizeLookup;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    .line 73
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    .line 74
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    .line 77
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    .line 630
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    .line 118
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setSpanCount(I)V

    .line 119
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p1, v1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setItemCount(I)V

    .line 122
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setVGap(I)V

    .line 123
    invoke-virtual {p0, p4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setHGap(I)V

    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZLcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move p5, p3

    move p3, v0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p5, v1

    move v3, p5

    .line 707
    :goto_0
    invoke-interface {p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-interface {p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, p4, -0x1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    if-eq p3, p5, :cond_3

    .line 716
    iget-object v4, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v4, v4, p3

    .line 717
    invoke-interface {p6, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    if-ne p4, v1, :cond_2

    if-le v4, v2, :cond_2

    .line 719
    iget-object v5, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    add-int/lit8 v6, v4, -0x1

    sub-int v6, v0, v6

    aput v6, v5, p3

    goto :goto_2

    .line 721
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    aput v0, v5, p3

    :goto_2
    mul-int/2addr v4, p4

    add-int/2addr v0, v4

    add-int/2addr p3, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private ensureSpanCount()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 617
    :cond_0
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-eq v0, v1, :cond_3

    .line 621
    :cond_2
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-eq v0, v1, :cond_5

    .line 625
    :cond_4
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    :cond_5
    return-void
.end method

.method private getMainDirSpec(IIIF)I
    .locals 4

    .line 602
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    cmpl-float v0, p4, v2

    if-lez v0, :cond_0

    if-lez p3, :cond_0

    int-to-float p0, p3

    div-float/2addr p0, p4

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 603
    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 604
    :cond_0
    iget p3, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mAspectRatio:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    iget p3, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mAspectRatio:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_1

    int-to-float p1, p2

    .line 605
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mAspectRatio:F

    div-float/2addr p1, p0

    add-float/2addr p1, v1

    float-to-int p0, p1

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    if-gez p1, :cond_2

    .line 607
    sget p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->MAIN_DIR_SPEC:I

    return p0

    .line 609
    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 668
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 669
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    .line 672
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 676
    :cond_1
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 681
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 682
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    .line 685
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 690
    :cond_1
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 2

    .line 634
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 635
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {p1, p3, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    .line 636
    iget-boolean p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 637
    :goto_0
    iget p3, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    sub-int/2addr p3, v0

    if-ge p1, p3, :cond_1

    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 638
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 639
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {p1, p3, v1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p1, :cond_1

    .line 642
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    if-lez p1, :cond_1

    .line 643
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    sub-int/2addr p1, v0

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 644
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {p1, p3, v1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    goto :goto_1

    .line 648
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    :cond_2
    return-void
.end method

.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 3

    .line 571
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

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_4

    if-eqz v0, :cond_1

    .line 575
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginBottom:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingBottom:I

    :goto_1
    add-int/2addr p1, p0

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginRight:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingRight:I

    goto :goto_1

    :goto_2
    return p1

    :cond_2
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 579
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginTop:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingTop:I

    :goto_3
    sub-int/2addr p1, p0

    goto :goto_4

    :cond_3
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginLeft:I

    neg-int p1, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingLeft:I

    goto :goto_3

    :goto_4
    return p1

    .line 583
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p0

    return p0
.end method

.method public getHGap()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    return p0
.end method

.method public getSpanCount()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    return p0
.end method

.method public getVGap()I
    .locals 0

    .line 175
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    return p0
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 217
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    .line 223
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isEnableMarginOverLap()Z

    move-result v13

    .line 225
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getItemDirection()I

    move-result v0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_1

    move/from16 v16, v14

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 229
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v6

    .line 231
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    if-ne v1, v14, :cond_2

    move v5, v14

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    .line 234
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getHorizontalMargin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getHorizontalPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    .line 235
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    sub-int/2addr v2, v14

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v18

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float v1, v1, v17

    float-to-int v1, v1

    iput v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    goto :goto_2

    .line 237
    :cond_3
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getVerticalMargin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getVerticalPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    .line 238
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    sub-int/2addr v2, v14

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v18

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float v1, v1, v17

    float-to-int v1, v1

    iput v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    .line 244
    :goto_2
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->ensureSpanCount()V

    if-nez v16, :cond_10

    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v1

    invoke-direct {v7, v8, v9, v1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    .line 253
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v2

    invoke-direct {v7, v8, v9, v2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    add-int/2addr v2, v1

    .line 259
    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    sub-int/2addr v3, v14

    if-eq v1, v3, :cond_11

    .line 260
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v1

    .line 261
    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    sub-int/2addr v3, v2

    move v4, v1

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 262
    :goto_3
    iget v14, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-ge v1, v14, :cond_e

    if-lez v3, :cond_e

    sub-int/2addr v4, v0

    .line 265
    invoke-virtual {v7, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->isOutOfRange(I)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_9

    .line 268
    :cond_4
    invoke-direct {v7, v8, v9, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v14

    .line 269
    iget v15, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-gt v14, v15, :cond_d

    .line 275
    invoke-virtual {v10, v8, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->retrieve(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_5

    goto/16 :goto_9

    :cond_5
    if-nez v19, :cond_8

    .line 280
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_6

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_6

    goto :goto_4

    :goto_5
    move/from16 v19, v0

    goto :goto_6

    :cond_8
    move/from16 v22, v0

    :goto_6
    if-nez v21, :cond_b

    .line 284
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_9

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_9

    goto :goto_7

    :goto_8
    move/from16 v21, v0

    :cond_b
    sub-int/2addr v3, v14

    if-gez v3, :cond_c

    goto :goto_9

    :cond_c
    add-int v20, v20, v14

    .line 293
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aput-object v15, v0, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v22

    goto/16 :goto_3

    .line 270
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    move/from16 v15, v19

    if-lez v1, :cond_f

    add-int/lit8 v0, v1, -0x1

    move v3, v0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_f

    .line 301
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v4, v4, v0

    .line 302
    iget-object v14, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    move/from16 v23, v1

    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v1, v1, v3

    aput-object v1, v14, v0

    .line 303
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v23

    goto :goto_a

    :cond_f
    move/from16 v23, v1

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v14, v23

    goto :goto_b

    :cond_10
    move v2, v1

    :cond_11
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 311
    :goto_b
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-ge v14, v0, :cond_1c

    invoke-virtual {v10, v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-lez v2, :cond_1c

    .line 312
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 313
    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->isOutOfRange(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 314
    sget-boolean v1, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "GridLayoutHelper"

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is out of range"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 319
    :cond_12
    invoke-direct {v7, v8, v9, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    .line 320
    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-gt v1, v3, :cond_1b

    sub-int/2addr v2, v1

    if-gez v2, :cond_13

    goto :goto_c

    .line 330
    :cond_13
    invoke-virtual {v10, v8}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_14

    :goto_c
    goto/16 :goto_11

    :cond_14
    if-nez v19, :cond_17

    .line 336
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_15

    :goto_d
    const/4 v4, 0x1

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    goto :goto_e

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_15

    goto :goto_d

    :goto_e
    move/from16 v19, v4

    :cond_17
    if-nez v21, :cond_1a

    .line 340
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_18

    :goto_f
    const/4 v0, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    goto :goto_10

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_18

    goto :goto_f

    :goto_10
    move/from16 v21, v0

    :cond_1a
    add-int/2addr v15, v1

    .line 344
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aput-object v3, v0, v14

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b

    .line 321
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spans."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    :goto_11
    move/from16 v20, v2

    if-nez v14, :cond_1d

    return-void

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    move v11, v5

    move/from16 v5, v16

    move/from16 v24, v13

    move-object v13, v6

    move-object/from16 v6, p5

    .line 357
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZLcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    if-lez v20, :cond_1f

    if-ne v14, v15, :cond_1f

    .line 359
    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIsAutoExpand:Z

    if-eqz v0, :cond_1f

    if-eqz v11, :cond_1e

    .line 362
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    iput v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    goto :goto_12

    .line 364
    :cond_1e
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    iput v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    goto :goto_12

    :cond_1f
    if-nez v16, :cond_21

    if-nez v20, :cond_21

    if-ne v14, v15, :cond_21

    .line 366
    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIsAutoExpand:Z

    if-eqz v0, :cond_21

    if-eqz v11, :cond_20

    .line 369
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    iput v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    goto :goto_12

    .line 371
    :cond_20
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v14

    iput v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    .line 377
    :cond_21
    :goto_12
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    if-eqz v0, :cond_28

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    array-length v0, v0

    if-lez v0, :cond_28

    if-eqz v11, :cond_22

    .line 381
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_13

    .line 383
    :cond_22
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v14, -0x1

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_13
    if-lez v20, :cond_23

    .line 389
    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIsAutoExpand:Z

    if-eqz v1, :cond_23

    move v1, v14

    goto :goto_14

    :cond_23
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    :goto_14
    move v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v1, :cond_25

    .line 391
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    array-length v5, v5

    if-ge v2, v5, :cond_24

    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    aget v5, v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_24

    .line 392
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    aget v5, v5, v2

    .line 393
    iget-object v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    mul-float v5, v5, v18

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v5, v5, v20

    int-to-float v15, v0

    mul-float/2addr v5, v15

    add-float v5, v5, v17

    float-to-int v5, v5

    aput v5, v6, v2

    .line 394
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    goto :goto_16

    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 397
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    const/4 v6, -0x1

    aput v6, v5, v2

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    if-lez v3, :cond_27

    .line 402
    div-int/2addr v4, v3

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_27

    .line 404
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    aget v2, v2, v0

    if-gez v2, :cond_26

    .line 405
    iget-object v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    aput v4, v2, v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_27
    const/4 v15, 0x1

    goto :goto_18

    :cond_28
    const/4 v15, 0x0

    :goto_18
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_19
    if-ge v0, v14, :cond_2f

    .line 413
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    if-eqz v16, :cond_29

    const/4 v4, -0x1

    goto :goto_1a

    :cond_29
    const/4 v4, 0x0

    .line 414
    :goto_1a
    invoke-interface {v12, v10, v3, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;I)V

    .line 416
    invoke-interface {v12, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {v7, v8, v9, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    if-eqz v15, :cond_2b

    .line 418
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    aget v5, v5, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v4, :cond_2a

    .line 421
    iget-object v10, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    add-int v17, v6, v5

    aget v10, v10, v17

    add-int/2addr v2, v10

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p3

    goto :goto_1b

    :cond_2a
    const/4 v6, 0x0

    .line 424
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1d

    :cond_2b
    const/4 v6, 0x0

    .line 426
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    mul-int/2addr v2, v4

    add-int/lit8 v4, v4, -0x1

    .line 427
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v11, :cond_2c

    iget v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    goto :goto_1c

    :cond_2c
    iget v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    :goto_1c
    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 426
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 430
    :goto_1d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 432
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d

    .line 433
    iget v5, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    .line 434
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    .line 433
    invoke-direct {v7, v5, v6, v10, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getMainDirSpec(IIIF)I

    move-result v4

    invoke-interface {v12, v3, v2, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_1e

    .line 436
    :cond_2d
    iget v5, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    .line 437
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    invoke-direct {v7, v5, v6, v10, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getMainDirSpec(IIIF)I

    move-result v4

    .line 438
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 436
    invoke-interface {v12, v3, v4, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 440
    :goto_1e
    invoke-virtual {v13, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_2e

    move v1, v2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p3

    goto/16 :goto_19

    .line 447
    :cond_2f
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mTotalSize:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v3, 0x0

    invoke-direct {v7, v1, v0, v3, v2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getMainDirSpec(IIIF)I

    move-result v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v14, :cond_35

    .line 449
    iget-object v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v3, v3, v2

    .line 450
    invoke-virtual {v13, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_34

    .line 451
    invoke-interface {v12, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {v7, v8, v9, v4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    if-eqz v15, :cond_31

    .line 453
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_20
    if-ge v6, v4, :cond_30

    .line 456
    iget-object v8, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    add-int v16, v6, v5

    aget v8, v8, v16

    add-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, p1

    goto :goto_20

    :cond_30
    const/4 v6, 0x0

    .line 459
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move/from16 v26, v5

    move v5, v4

    move/from16 v4, v26

    goto :goto_22

    :cond_31
    const/4 v6, 0x0

    .line 461
    iget v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    mul-int/2addr v5, v4

    add-int/lit8 v4, v4, -0x1

    .line 462
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v11, :cond_32

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    goto :goto_21

    :cond_32
    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    :goto_21
    mul-int/2addr v4, v6

    add-int/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 461
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 466
    :goto_22
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_33

    .line 467
    invoke-interface {v12, v3, v5, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_23

    .line 469
    :cond_33
    invoke-interface {v12, v3, v0, v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_23

    :cond_34
    const/high16 v4, 0x40000000    # 2.0f

    :goto_23
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p1

    goto :goto_1f

    :cond_35
    if-eqz v19, :cond_36

    .line 477
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v3, v24

    invoke-virtual {v7, v12, v11, v0, v3}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->computeStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v0

    goto :goto_24

    :cond_36
    move/from16 v3, v24

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_24
    if-eqz v21, :cond_37

    .line 481
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v7, v12, v11, v4, v3}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->computeEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v2

    goto :goto_25

    :cond_37
    const/4 v2, 0x0

    :goto_25
    add-int v3, v1, v0

    add-int/2addr v3, v2

    move v9, v11

    move-object/from16 v8, p4

    .line 485
    iput v3, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    const/4 v3, 0x1

    goto :goto_26

    :cond_38
    const/4 v3, 0x0

    .line 488
    :goto_26
    iget-boolean v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v4, :cond_3c

    if-eqz v21, :cond_39

    if-nez v3, :cond_3c

    :cond_39
    if-eqz v19, :cond_3a

    if-eqz v3, :cond_3c

    .line 489
    :cond_3a
    iget v3, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    if-eqz v9, :cond_3b

    iget v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    goto :goto_27

    :cond_3b
    iget v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    :goto_27
    add-int/2addr v3, v4

    iput v3, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    :cond_3c
    if-eqz v9, :cond_42

    .line 495
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3f

    .line 496
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int/2addr v0, v2

    iget-boolean v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v2, :cond_3e

    if-eqz v21, :cond_3d

    goto :goto_28

    :cond_3d
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    goto :goto_29

    :cond_3e
    :goto_28
    const/4 v2, 0x0

    :goto_29
    sub-int/2addr v0, v2

    sub-int v1, v0, v1

    move v3, v0

    move v2, v1

    :goto_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_31

    .line 499
    :cond_3f
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v0, :cond_41

    if-eqz v19, :cond_40

    goto :goto_2b

    :cond_40
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    goto :goto_2c

    :cond_41
    :goto_2b
    const/4 v0, 0x0

    :goto_2c
    add-int/2addr v0, v2

    add-int/2addr v1, v0

    move v2, v0

    move v3, v1

    goto :goto_2a

    .line 503
    :cond_42
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_45

    .line 504
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int/2addr v0, v2

    iget-boolean v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v2, :cond_44

    if-eqz v21, :cond_43

    goto :goto_2d

    :cond_43
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    goto :goto_2e

    :cond_44
    :goto_2d
    const/4 v2, 0x0

    :goto_2e
    sub-int/2addr v0, v2

    sub-int v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v26, v1

    move v1, v0

    move/from16 v0, v26

    goto :goto_31

    .line 507
    :cond_45
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iget-boolean v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v0, :cond_47

    if-eqz v19, :cond_46

    goto :goto_2f

    :cond_46
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    goto :goto_30

    :cond_47
    :goto_2f
    const/4 v0, 0x0

    :goto_30
    add-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_31
    const/4 v10, 0x0

    :goto_32
    if-ge v10, v14, :cond_50

    .line 513
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    aget-object v11, v4, v10

    .line 514
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    aget v4, v4, v10

    .line 516
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    if-eqz v9, :cond_4a

    if-eqz v15, :cond_48

    .line 519
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginLeft:I

    add-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingLeft:I

    add-int/2addr v0, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_33
    if-ge v0, v4, :cond_49

    .line 521
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    aget v5, v5, v0

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 524
    :cond_48
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginLeft:I

    add-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 527
    :cond_49
    invoke-virtual {v13, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    move v6, v1

    move v5, v2

    move v2, v3

    move v3, v0

    goto :goto_35

    :cond_4a
    if-eqz v15, :cond_4b

    .line 531
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginTop:I

    add-int/2addr v2, v3

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingTop:I

    add-int/2addr v2, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v4, :cond_4c

    .line 533
    iget-object v5, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    aget v5, v5, v2

    iget v6, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 536
    :cond_4b
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mMarginTop:I

    add-int/2addr v2, v3

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSizePerSpan:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 540
    :cond_4c
    invoke-virtual {v13, v11}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    move v6, v0

    move v5, v3

    move v3, v1

    .line 543
    :goto_35
    sget-boolean v0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_4d

    const-string v0, "GridLayoutHelper"

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v9

    const-string v9, "layout item in position: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->getViewPosition()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " with text "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v11

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with SpanIndex: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_4d
    move/from16 v25, v9

    :goto_36
    move-object/from16 v0, p0

    move-object v1, v11

    move v9, v2

    move v2, v6

    move/from16 v17, v3

    move v3, v5

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v9

    move/from16 v19, v6

    move-object/from16 v6, p5

    .line 551
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 554
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_37

    :cond_4e
    const/4 v0, 0x1

    goto :goto_38

    :cond_4f
    :goto_37
    const/4 v0, 0x1

    .line 555
    iput-boolean v0, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mIgnoreConsumed:Z

    .line 558
    :goto_38
    iget-boolean v1, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v8, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v10, v10, 0x1

    move v3, v9

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v0, v19

    move/from16 v9, v25

    goto/16 :goto_32

    :cond_50
    const/4 v1, 0x0

    .line 562
    iput-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mLayoutWithAnchor:Z

    .line 563
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSet:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanIndices:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 565
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCols:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 588
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 589
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 594
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 595
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onRangeChange(II)V
    .locals 0

    .line 194
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p2, p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->setStartPosition(I)V

    .line 195
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public setAutoExpand(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIsAutoExpand:Z

    return-void
.end method

.method public setGap(I)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setVGap(I)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setHGap(I)V

    return-void
.end method

.method public setHGap(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 211
    :cond_0
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mHGap:I

    return-void
.end method

.method public setIgnoreExtra(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mIgnoreExtra:Z

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 161
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 168
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanCount:I

    .line 169
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 171
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->ensureSpanCount()V

    return-void

    .line 165
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Span count should be at least 1. Provided "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpanSizeLookup(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getStartPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->setStartPosition(I)V

    .line 140
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mSpanSizeLookup:Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    :cond_0
    return-void
.end method

.method public setVGap(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 206
    :cond_0
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mVGap:I

    return-void
.end method

.method public setWeights([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->mWeights:[F

    :goto_0
    return-void
.end method
