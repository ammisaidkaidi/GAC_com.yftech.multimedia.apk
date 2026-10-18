.class public Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;
.source "RangeGridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "RGLayoutHelper"


# instance fields
.field private mLayoutWithAnchor:Z

.field private mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

.field private mTotalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 736
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 750
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    .line 90
    new-instance v0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;-><init>(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;)V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setSpanCount(I)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p1, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setVGap(I)V

    .line 93
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setHGap(I)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->setItemCount(I)V

    return-void
.end method

.method private assignSpans(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZLcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p6, :cond_0

    move p6, p4

    move p4, v0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    move p6, v1

    move v3, p6

    .line 828
    :goto_0
    invoke-interface {p7}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-interface {p7}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, p5, -0x1

    move p5, v1

    goto :goto_1

    :cond_1
    move p5, v2

    :goto_1
    if-eq p4, p6, :cond_3

    .line 837
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, p4

    .line 838
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v5

    invoke-interface {p7, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, v5, p2, p3, v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    if-ne p5, v1, :cond_2

    if-le v4, v2, :cond_2

    .line 840
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    sub-int v6, v0, v6

    aput v6, v5, p4

    goto :goto_2

    .line 842
    :cond_2
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v5

    aput v0, v5, p4

    :goto_2
    mul-int/2addr v4, p5

    add-int/2addr v0, v4

    add-int/2addr p4, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getMainDirSpec(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;IIIF)I
    .locals 3

    .line 739
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez p0, :cond_0

    cmpl-float p0, p5, v1

    if-lez p0, :cond_0

    if-lez p4, :cond_0

    int-to-float p0, p4

    div-float/2addr p0, p5

    add-float/2addr p0, v0

    float-to-int p0, p0

    .line 740
    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 741
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    int-to-float p0, p3

    .line 742
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)F

    move-result p1

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    if-gez p2, :cond_2

    .line 744
    sget p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->MAIN_DIR_SPEC:I

    return p0

    .line 746
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 789
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-nez p0, :cond_0

    .line 790
    invoke-virtual {p1, p5, p2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    .line 793
    :cond_0
    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_1

    const/4 p0, 0x0

    return p0

    .line 797
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 802
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-nez p0, :cond_0

    .line 803
    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    .line 806
    :cond_0
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 811
    :cond_1
    invoke-virtual {p1, p0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addRangeStyle(IILcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->addChildRangeStyle(IILcom/alibaba/android/vlayout/layout/RangeStyle;)V

    return-void
.end method

.method public adjustLayout(IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->adjustLayout(IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void
.end method

.method public afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 7

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void
.end method

.method public beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void
.end method

.method public checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 3

    .line 754
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 755
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p1, p3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object p1

    .line 756
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object p3

    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p3

    .line 757
    iget-boolean v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 758
    :goto_0
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 759
    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    add-int/2addr p3, v1

    iput p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 760
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object p3

    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p3

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p3, :cond_1

    .line 763
    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    if-lez p3, :cond_1

    .line 764
    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 765
    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object p3

    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-static {p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p3

    goto :goto_1

    .line 769
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    :cond_2
    return-void
.end method

.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 3

    .line 708
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_2

    .line 711
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {p0, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->computeEndAlignOffset(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;Z)I

    move-result p0

    return p0

    :cond_1
    if-nez p1, :cond_2

    .line 715
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {p0, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->computeStartAlignOffset(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;Z)I

    move-result p0

    return p0

    .line 719
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I

    move-result p0

    return p0
.end method

.method public getAspectRatio()F
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getAspectRatio()F

    move-result p0

    return p0
.end method

.method public getBorderEndSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 860
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object p0

    .line 861
    invoke-interface {p1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingBottom()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginRight()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingRight()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getBorderStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 1

    .line 849
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 850
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object p0

    .line 851
    invoke-interface {p1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingTop()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingLeft()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getRootRangeStyle()Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    return-object p0
.end method

.method public getSpanCount()I
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getSpanCount()I

    move-result p0

    return p0
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 224
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v14

    .line 231
    iget-object v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v0, v14}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object v15

    .line 233
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getItemDirection()I

    move-result v6

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v6, v7, :cond_1

    move/from16 v16, v7

    goto :goto_0

    :cond_1
    move/from16 v16, v5

    .line 237
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v4

    .line 239
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    if-ne v0, v7, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 242
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 243
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyHorizontalMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyHorizontalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 244
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 245
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v18

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 244
    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    goto :goto_2

    .line 247
    :cond_3
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 248
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyVerticalMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyVerticalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 249
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 250
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v18

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 249
    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    .line 255
    :goto_2
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v0

    .line 257
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$400(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)V

    if-nez v16, :cond_11

    .line 261
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v20, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v4

    move-object/from16 v4, p2

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanIndex(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    .line 262
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v2

    invoke-direct {v8, v1, v9, v10, v2}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    add-int/2addr v1, v0

    .line 268
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    sub-int/2addr v2, v7

    if-eq v0, v2, :cond_10

    .line 269
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 270
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    sub-int/2addr v2, v1

    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    .line 271
    :goto_3
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v7

    if-ge v0, v7, :cond_e

    if-lez v2, :cond_e

    sub-int/2addr v3, v6

    .line 274
    invoke-virtual {v15, v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->isOutOfRange(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_8

    .line 277
    :cond_4
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v7

    invoke-direct {v8, v7, v9, v10, v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v7

    move/from16 v22, v1

    .line 278
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    if-gt v7, v1, :cond_d

    .line 284
    invoke-virtual {v11, v9, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->retrieve(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_9

    :cond_5
    if-nez v4, :cond_8

    .line 290
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    iget-object v4, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 291
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v5, :cond_b

    .line 296
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_9

    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    iget-object v5, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 297
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_9

    goto :goto_6

    :cond_b
    :goto_7
    sub-int/2addr v2, v7

    if-gez v2, :cond_c

    goto :goto_9

    :cond_c
    add-int v19, v19, v7

    .line 308
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v7

    aput-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v22

    goto/16 :goto_3

    .line 279
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but RangeGridLayoutHelper has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_8
    move/from16 v22, v1

    :goto_9
    move v1, v5

    move v5, v4

    if-lez v0, :cond_f

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_f

    .line 316
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, v2

    .line 317
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v6

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v7

    aget-object v7, v7, v3

    aput-object v7, v6, v2

    .line 318
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v6

    aput-object v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_f
    move v7, v0

    move/from16 v25, v1

    move/from16 v6, v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v19, v5

    goto :goto_c

    :cond_10
    move/from16 v22, v1

    goto :goto_b

    :cond_11
    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v0

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 326
    :goto_c
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v0

    if-ge v7, v0, :cond_24

    invoke-virtual {v11, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-lez v22, :cond_24

    .line 327
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 328
    invoke-virtual {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->isOutOfRange(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 329
    sget-boolean v1, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "RGLayoutHelper"

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 335
    :cond_12
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v1

    invoke-direct {v8, v1, v9, v10, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    .line 336
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    if-gt v1, v2, :cond_23

    sub-int v22, v22, v1

    if-gez v22, :cond_13

    goto/16 :goto_15

    .line 346
    :cond_13
    invoke-virtual {v11, v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    goto/16 :goto_15

    :cond_14
    if-nez v19, :cond_17

    .line 352
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_15

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    goto :goto_e

    :cond_16
    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 353
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_15

    goto :goto_d

    :goto_e
    move/from16 v19, v3

    :cond_17
    if-nez v23, :cond_1b

    .line 356
    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 357
    iget-boolean v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v3, :cond_18

    .line 358
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 360
    :cond_18
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 361
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_19

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    goto :goto_10

    :cond_1a
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_19

    goto :goto_f

    :goto_10
    move/from16 v23, v3

    :cond_1b
    if-nez v25, :cond_1e

    .line 366
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1c

    :goto_11
    const/4 v3, 0x1

    goto :goto_12

    :cond_1c
    const/4 v3, 0x0

    goto :goto_12

    :cond_1d
    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 367
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1c

    goto :goto_11

    :goto_12
    move/from16 v25, v3

    :cond_1e
    if-nez v24, :cond_22

    .line 371
    iget-object v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 372
    iget-boolean v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v3, :cond_1f

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 375
    :cond_1f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_20

    :goto_13
    const/4 v0, 0x1

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    :cond_21
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_20

    goto :goto_13

    :goto_14
    move/from16 v24, v0

    :cond_22
    add-int/2addr v6, v1

    .line 381
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v0

    aput-object v2, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    .line 337
    :cond_23
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

    .line 338
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spans."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    :goto_15
    if-nez v7, :cond_25

    return-void

    :cond_25
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v7

    move v5, v6

    move/from16 v26, v14

    move v14, v6

    move/from16 v6, v16

    move v12, v7

    move-object/from16 v7, p5

    .line 394
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->assignSpans(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZLcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    if-lez v22, :cond_27

    if-ne v12, v14, :cond_27

    .line 396
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$700(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Z

    move-result v0

    if-eqz v0, :cond_27

    move/from16 v7, v20

    if-eqz v7, :cond_26

    .line 399
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v12

    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    goto :goto_16

    .line 401
    :cond_26
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v12

    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    goto :goto_16

    :cond_27
    move/from16 v7, v20

    if-nez v16, :cond_29

    if-nez v22, :cond_29

    if-ne v12, v14, :cond_29

    .line 403
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$700(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v7, :cond_28

    .line 406
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v12

    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    goto :goto_16

    .line 408
    :cond_28
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v12

    invoke-static {v15, v0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$002(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;I)I

    .line 414
    :cond_29
    :goto_16
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_30

    if-eqz v7, :cond_2a

    .line 418
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_17

    .line 420
    :cond_2a
    iget v0, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    add-int/lit8 v1, v12, -0x1

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_17
    if-lez v22, :cond_2b

    .line 426
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$700(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v12

    goto :goto_18

    :cond_2b
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$100(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    :goto_18
    move v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, v1, :cond_2d

    .line 428
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_2c

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v5

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v5

    aget v5, v5, v2

    const/4 v14, 0x0

    cmpl-float v5, v5, v14

    if-ltz v5, :cond_2c

    .line 429
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$800(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[F

    move-result-object v5

    aget v5, v5, v2

    .line 430
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v14

    mul-float v5, v5, v18

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v5, v5, v20

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float v5, v5, v17

    float-to-int v5, v5

    aput v5, v14, v2

    .line 431
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v5

    aget v5, v5, v2

    sub-int/2addr v4, v5

    goto :goto_1a

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 434
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v5

    const/4 v6, -0x1

    aput v6, v5, v2

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2d
    if-lez v3, :cond_2f

    .line 439
    div-int/2addr v4, v3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_2f

    .line 441
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v2

    aget v2, v2, v0

    if-gez v2, :cond_2e

    .line 442
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v2

    aput v4, v2, v0

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v14, 0x1

    goto :goto_1c

    :cond_30
    const/4 v14, 0x0

    :goto_1c
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v12, :cond_37

    .line 450
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v0

    aget-object v3, v0, v6

    if-eqz v16, :cond_31

    const/4 v0, -0x1

    goto :goto_1e

    :cond_31
    const/4 v0, 0x0

    .line 451
    :goto_1e
    invoke-interface {v13, v11, v3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;I)V

    .line 453
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v0

    invoke-interface {v13, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {v8, v0, v9, v10, v1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    if-eqz v14, :cond_33

    .line 455
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v1

    aget v1, v1, v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1f
    if-ge v2, v0, :cond_32

    .line 458
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v17

    add-int v18, v2, v1

    aget v17, v17, v18

    add-int v4, v4, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_32
    const/4 v2, 0x0

    .line 461
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_20
    move v4, v0

    goto :goto_22

    :cond_33
    const/4 v2, 0x0

    .line 463
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 464
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v7, :cond_34

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    goto :goto_21

    :cond_34
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    :goto_21
    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 463
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_20

    .line 467
    :goto_22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 468
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_35

    .line 469
    iget v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    iget v11, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 470
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    iget v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object v1, v15

    move/from16 v27, v7

    move v7, v2

    move/from16 v2, v20

    move-object v7, v3

    move v3, v11

    move v11, v4

    move/from16 v4, v17

    move/from16 v28, v14

    move v14, v5

    move/from16 v5, v18

    .line 469
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getMainDirSpec(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;IIIF)I

    move-result v0

    invoke-interface {v13, v7, v11, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    :goto_23
    move-object/from16 v11, v21

    goto :goto_24

    :cond_35
    move v11, v4

    move/from16 v27, v7

    move/from16 v28, v14

    move-object v7, v3

    move v14, v5

    .line 472
    iget v2, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    iget v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    .line 473
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getMainDirSpec(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;IIIF)I

    move-result v0

    .line 474
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 472
    invoke-interface {v13, v7, v0, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_23

    .line 476
    :goto_24
    invoke-virtual {v11, v7}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    if-le v5, v14, :cond_36

    goto :goto_25

    :cond_36
    move v5, v14

    :goto_25
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v21, v11

    move/from16 v7, v27

    move/from16 v14, v28

    move-object/from16 v11, p3

    goto/16 :goto_1d

    :cond_37
    move/from16 v27, v7

    move/from16 v28, v14

    move-object/from16 v11, v21

    const/high16 v4, 0x40000000    # 2.0f

    move v14, v5

    .line 483
    iget v3, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mTotalSize:I

    const/4 v5, 0x0

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move v7, v4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getMainDirSpec(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;IIIF)I

    move-result v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v12, :cond_3d

    .line 485
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v1

    .line 486
    invoke-virtual {v11, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v14, :cond_3c

    .line 487
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$500(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;

    move-result-object v3

    invoke-interface {v13, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {v8, v3, v9, v10, v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->getSpanSize(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    if-eqz v28, :cond_39

    .line 489
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v4

    aget v4, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_27
    if-ge v5, v3, :cond_38

    .line 492
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v16

    add-int v17, v5, v4

    aget v16, v16, v17

    add-int v6, v6, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_38
    const/4 v5, 0x0

    .line 495
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_29

    :cond_39
    const/4 v5, 0x0

    .line 497
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/lit8 v3, v3, -0x1

    .line 498
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v27, :cond_3a

    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v5

    goto :goto_28

    :cond_3a
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v5

    :goto_28
    mul-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 497
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 502
    :goto_29
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    .line 503
    invoke-interface {v13, v2, v3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_2a

    .line 505
    :cond_3b
    invoke-interface {v13, v2, v0, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_2a

    :cond_3c
    const/4 v5, 0x1

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3d
    const/4 v5, 0x1

    .line 513
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_3e

    const/4 v0, 0x1

    goto :goto_2b

    :cond_3e
    const/4 v0, 0x0

    .line 514
    :goto_2b
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isEnableMarginOverLap()Z

    move-result v1

    if-eqz v19, :cond_3f

    move/from16 v7, v27

    .line 517
    invoke-virtual {v8, v13, v7, v0, v1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->computeStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v5

    goto :goto_2c

    :cond_3f
    move/from16 v7, v27

    const/4 v5, 0x0

    :goto_2c
    if-eqz v23, :cond_41

    if-eqz v7, :cond_40

    .line 520
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginTop()I

    move-result v0

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2d

    .line 521
    :cond_40
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginLeft()I

    move-result v0

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2d

    :cond_41
    const/4 v0, 0x0

    :goto_2d
    if-eqz v25, :cond_43

    if-eqz v7, :cond_42

    .line 525
    iget-object v1, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginBottom()I

    move-result v1

    iget-object v2, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2e

    :cond_42
    iget-object v1, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    .line 526
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginRight()I

    move-result v1

    iget-object v2, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2e

    :cond_43
    const/4 v1, 0x0

    :goto_2e
    if-eqz v24, :cond_45

    if-eqz v7, :cond_44

    .line 529
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginBottom()I

    move-result v2

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2f

    .line 530
    :cond_44
    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getMarginRight()I

    move-result v2

    invoke-virtual {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2f

    :cond_45
    const/4 v2, 0x0

    :goto_2f
    add-int v3, v14, v5

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    move v10, v12

    move-object/from16 v9, p4

    .line 534
    iput v3, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 536
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_46

    const/4 v3, 0x1

    goto :goto_30

    :cond_46
    const/4 v3, 0x0

    .line 538
    :goto_30
    iget-boolean v4, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    if-nez v4, :cond_4f

    if-nez v3, :cond_4b

    if-nez v19, :cond_4f

    if-eqz v23, :cond_49

    if-eqz v7, :cond_47

    .line 542
    iget-object v4, v15, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    check-cast v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    goto :goto_31

    :cond_47
    iget-object v4, v15, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    check-cast v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    .line 543
    :goto_31
    sget-boolean v6, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v6, :cond_48

    const-string v6, "RGLayoutHelper"

    .line 544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u2b07 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v26

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v29, v11

    const-string v11, " 1 "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " gap"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :cond_48
    move-object/from16 v29, v11

    move/from16 v13, v26

    goto/16 :goto_35

    :cond_49
    move-object/from16 v29, v11

    move/from16 v13, v26

    if-eqz v7, :cond_4a

    .line 547
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    goto :goto_32

    :cond_4a
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    .line 548
    :goto_32
    sget-boolean v6, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v6, :cond_51

    const-string v6, "RGLayoutHelper"

    .line 549
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u2b07 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " 2 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " gap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :cond_4b
    move-object/from16 v29, v11

    move/from16 v13, v26

    if-nez v25, :cond_50

    if-eqz v24, :cond_4d

    if-eqz v7, :cond_4c

    .line 556
    iget-object v4, v15, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    check-cast v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    goto :goto_33

    :cond_4c
    iget-object v4, v15, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    check-cast v4, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-static {v4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    .line 557
    :goto_33
    sget-boolean v6, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v6, :cond_51

    const-string v6, "RGLayoutHelper"

    .line 558
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u2b06 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " 3 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " gap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_4d
    if-eqz v7, :cond_4e

    .line 561
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    goto :goto_34

    :cond_4e
    invoke-static {v15}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    .line 562
    :goto_34
    sget-boolean v6, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v6, :cond_51

    const-string v6, "RGLayoutHelper"

    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u2b06 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " 4 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " gap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_4f
    move-object/from16 v29, v11

    move/from16 v13, v26

    :cond_50
    const/4 v4, 0x0

    .line 569
    :cond_51
    :goto_35
    iget v6, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    add-int/2addr v6, v4

    iput v6, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    .line 571
    iget v6, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    if-gtz v6, :cond_52

    const/4 v11, 0x0

    .line 572
    iput v11, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    goto :goto_36

    :cond_52
    const/4 v11, 0x0

    .line 586
    :goto_36
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->isRefreshLayout()Z

    move-result v6

    if-nez v6, :cond_57

    if-eqz v3, :cond_55

    add-int/lit8 v6, v13, 0x1

    .line 589
    invoke-virtual {v8, v6}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->isOutOfRange(I)Z

    move-result v12

    if-nez v12, :cond_57

    .line 590
    iget-object v12, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v12, v6}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object v12

    .line 591
    invoke-virtual {v12, v6}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isFirstPosition(I)Z

    move-result v6

    if-eqz v6, :cond_57

    if-eqz v7, :cond_53

    .line 592
    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginTop()I

    move-result v6

    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingTop()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_37

    .line 593
    :cond_53
    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginLeft()I

    move-result v6

    invoke-virtual {v12}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingLeft()I

    move-result v12

    add-int/2addr v6, v12

    .line 594
    :goto_37
    sget-boolean v12, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v12, :cond_54

    const-string v12, "RGLayoutHelper"

    .line 595
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v15

    const-string/jumbo v15, "\u2b06 "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " 1 "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " last"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_54
    move-object/from16 v30, v15

    goto :goto_39

    :cond_55
    move-object/from16 v30, v15

    add-int/lit8 v6, v13, -0x1

    .line 601
    invoke-virtual {v8, v6}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->isOutOfRange(I)Z

    move-result v11

    if-nez v11, :cond_58

    .line 602
    iget-object v11, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v11, v6}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->findRangeStyleByPosition(I)Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    move-result-object v11

    .line 603
    invoke-virtual {v11, v6}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isLastPosition(I)Z

    move-result v6

    if-eqz v6, :cond_58

    if-eqz v7, :cond_56

    .line 604
    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginBottom()I

    move-result v6

    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingBottom()I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_38

    .line 605
    :cond_56
    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginRight()I

    move-result v6

    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingRight()I

    move-result v11

    add-int/2addr v6, v11

    .line 606
    :goto_38
    sget-boolean v11, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v11, :cond_59

    const-string v11, "RGLayoutHelper"

    .line 607
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "\u2b07 "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " 2 "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " last"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_57
    move-object/from16 v30, v15

    :cond_58
    const/4 v6, 0x0

    .line 614
    :cond_59
    :goto_39
    sget-boolean v11, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v11, :cond_5b

    const-string v11, "RGLayoutHelper"

    .line 615
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_5a

    const-string/jumbo v15, "\u2b06 "

    goto :goto_3a

    :cond_5a
    const-string/jumbo v15, "\u2b07 "

    :goto_3a
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " consumed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " startSpace "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " endSpace "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " secondStartSpace "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " secondEndSpace "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " lastUnconsumedSpace "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    if-eqz v7, :cond_5d

    if-eqz v3, :cond_5c

    .line 623
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    sub-int v5, v0, v6

    sub-int v0, v5, v14

    move v1, v0

    move v2, v5

    :goto_3b
    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_3c

    .line 626
    :cond_5c
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    add-int v5, v1, v6

    add-int v0, v5, v14

    move v2, v0

    move v1, v5

    goto :goto_3b

    :cond_5d
    if-eqz v3, :cond_5e

    .line 631
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    sub-int v5, v0, v6

    sub-int v0, v5, v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_3c

    .line 634
    :cond_5e
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    add-int v5, v0, v6

    add-int v0, v5, v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v32, v5

    move v5, v0

    move/from16 v0, v32

    :goto_3c
    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v10, :cond_67

    .line 640
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v3

    aget-object v12, v3, v11

    .line 641
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v3

    aget v3, v3, v11

    .line 643
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    if-eqz v7, :cond_61

    if-eqz v28, :cond_5f

    .line 646
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyMarginLeft()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    move v4, v0

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v3, :cond_60

    .line 648
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 651
    :cond_5f
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyMarginLeft()I

    move-result v4

    add-int/2addr v0, v4

    .line 652
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$200(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v4, v0

    :cond_60
    move-object/from16 v14, v29

    .line 655
    invoke-virtual {v14, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v5, v0

    move v6, v1

    move v15, v4

    move v4, v2

    goto :goto_40

    :cond_61
    move-object/from16 v14, v29

    if-eqz v28, :cond_62

    .line 659
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v3, :cond_63

    .line 661
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 664
    :cond_62
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->getFamilyPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 665
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$300(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)I

    move-result v2

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 668
    :cond_63
    invoke-virtual {v14, v12}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    move v15, v0

    move v4, v1

    move v6, v2

    .line 671
    :goto_40
    sget-boolean v0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_64

    const-string v0, "RGLayoutHelper"

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout item in position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->getViewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with text with SpanIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const/16 v16, 0x0

    move-object/from16 v0, v30

    move-object v1, v12

    move v2, v15

    move v3, v6

    move/from16 v17, v4

    move v4, v5

    move/from16 v18, v5

    move/from16 v5, v17

    move/from16 v19, v6

    move-object/from16 v6, p5

    move/from16 v20, v7

    move/from16 v31, v10

    const/4 v10, 0x0

    move/from16 v7, v16

    .line 678
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->layoutChild(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)V

    .line 681
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_41

    :cond_65
    const/4 v0, 0x1

    goto :goto_42

    :cond_66
    :goto_41
    const/4 v0, 0x1

    .line 682
    iput-boolean v0, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mIgnoreConsumed:Z

    .line 685
    :goto_42
    iget-boolean v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v12}, Landroid/view/View;->isFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v9, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v29, v14

    move v0, v15

    move/from16 v2, v17

    move/from16 v5, v18

    move/from16 v1, v19

    move/from16 v7, v20

    move/from16 v10, v31

    goto/16 :goto_3d

    :cond_67
    const/4 v10, 0x0

    .line 689
    iput-boolean v10, v8, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mLayoutWithAnchor:Z

    .line 690
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$600(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 691
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$1000(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([II)V

    .line 692
    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->access$900(Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;)[I

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 1

    .line 724
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 725
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 726
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->onInvalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 731
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 732
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->onInvalidateSpanIndexCache()V

    return-void
.end method

.method public onRangeChange(II)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setRange(II)V

    return-void
.end method

.method public requireLayoutView()Z
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->requireLayoutView()Z

    move-result p0

    return p0
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setAspectRatio(F)V

    return-void
.end method

.method public setAutoExpand(Z)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setAutoExpand(Z)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setBgColor(I)V

    return-void
.end method

.method public setGap(I)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->setVGap(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->setHGap(I)V

    return-void
.end method

.method public setHGap(I)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setHGap(I)V

    return-void
.end method

.method public setIgnoreExtra(Z)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setIgnoreExtra(Z)V

    return-void
.end method

.method public setLayoutViewBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setLayoutViewBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;)V

    return-void
.end method

.method public setLayoutViewHelper(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$DefaultLayoutViewHelper;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setLayoutViewHelper(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$DefaultLayoutViewHelper;)V

    return-void
.end method

.method public setLayoutViewUnBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setLayoutViewUnBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;)V

    return-void
.end method

.method public setMargin(IIII)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->setMargin(IIII)V

    .line 114
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setMargin(IIII)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->setPadding(IIII)V

    .line 120
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setPadding(IIII)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setSpanCount(I)V

    return-void
.end method

.method public setSpanSizeLookup(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setSpanSizeLookup(Lcom/alibaba/android/vlayout/layout/GridLayoutHelper$SpanSizeLookup;)V

    return-void
.end method

.method public setVGap(I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setVGap(I)V

    return-void
.end method

.method public setWeights([F)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper;->mRangeStyle:Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/RangeGridLayoutHelper$GridRangeStyle;->setWeights([F)V

    return-void
.end method
