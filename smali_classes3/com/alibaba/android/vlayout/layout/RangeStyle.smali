.class public Lcom/alibaba/android/vlayout/layout/RangeStyle;
.super Ljava/lang/Object;
.source "RangeStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/layout/RangeStyle$RangeMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/android/vlayout/layout/RangeStyle;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RangeStyle"


# instance fields
.field private mBgColor:I

.field protected mChildren:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/alibaba/android/vlayout/Range<",
            "Ljava/lang/Integer;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field protected mLayoutHelper:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

.field protected mLayoutRegion:Landroid/graphics/Rect;

.field private mLayoutView:Landroid/view/View;

.field private mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

.field private mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

.field protected mMarginBottom:I

.field protected mMarginLeft:I

.field protected mMarginRight:I

.field protected mMarginTop:I

.field private mOriginEndOffset:I

.field private mOriginStartOffset:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRange:Lcom/alibaba/android/vlayout/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/vlayout/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginStartOffset:I

    .line 41
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginEndOffset:I

    .line 46
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginStartOffset:I

    .line 41
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginEndOffset:I

    .line 46
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    .line 75
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutHelper:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    return-void
.end method

.method private clearChild(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/LayoutManagerHelper;",
            "Lcom/alibaba/android/vlayout/layout/RangeStyle<",
            "TT;>;)V"
        }
    .end annotation

    .line 679
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    iget-object v1, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;->onUnbind(Landroid/view/View;Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;)V

    .line 683
    :cond_0
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 684
    iput-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    .line 687
    :cond_1
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 691
    iget-object v1, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 692
    iget-object v2, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 693
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->clearChild(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private hideChildLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/LayoutManagerHelper;",
            "Lcom/alibaba/android/vlayout/layout/RangeStyle<",
            "TT;>;)V"
        }
    .end annotation

    .line 608
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 609
    iget-object v2, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 610
    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 611
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->hideChildLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    .line 614
    :cond_0
    iget-object v3, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 615
    iget-object v2, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {p1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->hideView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private hideLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0, p1, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->hideChildLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    .line 601
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 602
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->hideView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private isValidScrolled(I)Z
    .locals 0

    const p0, 0x7fffffff

    if-eq p1, p0, :cond_0

    const/high16 p0, -0x80000000

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeChildViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/LayoutManagerHelper;",
            "Lcom/alibaba/android/vlayout/layout/RangeStyle<",
            "TT;>;)V"
        }
    .end annotation

    .line 536
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 537
    iget-object v1, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 538
    iget-object v2, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 539
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->removeChildViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    iget-object v1, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;->onUnbind(Landroid/view/View;Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;)V

    .line 547
    :cond_1
    iget-object p0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 548
    iput-object p0, p2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private requireChildLayoutView(Lcom/alibaba/android/vlayout/layout/RangeStyle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/layout/RangeStyle<",
            "TT;>;)Z"
        }
    .end annotation

    .line 629
    iget v0, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mBgColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 631
    :goto_1
    iget-object v2, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    .line 632
    iget-object v3, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 633
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 634
    invoke-direct {p0, v3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireChildLayoutView(Lcom/alibaba/android/vlayout/layout/RangeStyle;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 636
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireLayoutView()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private unionChildRegion(Lcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/vlayout/layout/RangeStyle<",
            "TT;>;)V"
        }
    .end annotation

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 524
    iget-object v1, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 525
    iget-object v2, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 526
    invoke-direct {p0, v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->unionChildRegion(Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    .line 527
    iget-object v3, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p1, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    .line 529
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v2, v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 528
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->union(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addChildRangeStyle(IILcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    if-gt p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {p3, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->setParent(Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    .line 84
    invoke-virtual {p3, p1}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->setOriginStartOffset(I)V

    .line 85
    invoke-virtual {p3, p2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->setOriginEndOffset(I)V

    .line 86
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->setRange(II)V

    .line 87
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public adjustLayout(IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 6

    .line 553
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 555
    iget-object v3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 556
    invoke-virtual {v3, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->adjustLayout(IILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireLayoutView()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 561
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 562
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p2

    .line 563
    :goto_1
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 564
    invoke-interface {p3, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 565
    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 566
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/android/vlayout/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 567
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 571
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 572
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 573
    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    .line 574
    invoke-virtual {p2, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 575
    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v2

    .line 576
    invoke-virtual {p2, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 573
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_2

    .line 578
    :cond_2
    invoke-virtual {p2, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 579
    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget v5, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 580
    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 578
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Rect;->union(IIII)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 586
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    sub-int/2addr p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr p1, v2

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 589
    :cond_5
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 591
    :goto_3
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 592
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->layout(IIII)V

    :cond_6
    return-void
.end method

.method public afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 13

    move-object v0, p0

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 454
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    .line 455
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v11

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_0

    .line 456
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v12}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 457
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireLayoutView()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 466
    invoke-direct {p0, v8}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isValidScrolled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 472
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 473
    invoke-direct {p0, v8}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isValidScrolled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 474
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 475
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    neg-int v3, v8

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 477
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    neg-int v3, v8

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 481
    :cond_3
    :goto_1
    invoke-direct {p0, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->unionChildRegion(Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    .line 483
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v1

    .line 484
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result v3

    .line 485
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x4

    div-int/lit8 v6, v3, 0x4

    add-int/2addr v3, v6

    .line 486
    invoke-virtual {v4, v10, v5, v1, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    neg-int v5, v1

    div-int/lit8 v5, v5, 0x4

    div-int/lit8 v6, v1, 0x4

    add-int/2addr v1, v6

    .line 487
    invoke-virtual {v4, v5, v10, v1, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 489
    :goto_2
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-nez v1, :cond_5

    .line 490
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->generateLayoutView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    .line 491
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {v9, v1, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addBackgroundView(Landroid/view/View;Z)V

    .line 494
    :cond_5
    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 495
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 497
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v2

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 498
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 500
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 501
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result v2

    invoke-interface/range {p6 .. p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 502
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 504
    :goto_3
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->bindLayoutView(Landroid/view/View;)V

    .line 505
    invoke-direct {p0, v9}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->hideLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void

    .line 508
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 509
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 510
    iget-object v1, v0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->layout(IIII)V

    .line 512
    :cond_8
    invoke-direct {p0, v9}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->hideLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 516
    :cond_9
    invoke-direct {p0, v9}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->hideLayoutViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 518
    invoke-direct {p0, v9, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->removeChildViews(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    :cond_a
    return-void
.end method

.method public beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 426
    invoke-virtual {v2, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireLayoutView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 430
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    goto :goto_1

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    if-eqz p1, :cond_2

    .line 437
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;->onUnbind(Landroid/view/View;Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;)V

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    invoke-interface {p3, p1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 440
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutView:Landroid/view/View;

    :cond_3
    :goto_1
    return-void
.end method

.method public bindLayoutView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 643
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    .line 644
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 643
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 645
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 646
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 648
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;->onBind(Landroid/view/View;Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;)V

    .line 653
    :cond_0
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected fillLayoutRegion(IIIIZ)V
    .locals 7

    if-eqz p5, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr v4, p4

    iget v5, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    add-int/2addr v4, v5

    .line 709
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutRegion:Landroid/graphics/Rect;

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 716
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_1

    .line 717
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    sub-int v2, p1, v0

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    sub-int v3, p2, p1

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr p3, p1

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    add-int v4, p3, p1

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr p4, p1

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    add-int v5, p4, p0

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->fillLayoutRegion(IIIIZ)V

    :cond_1
    return-void
.end method

.method public getAncestorHorizontalMargin()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorHorizontalMargin()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getHorizontalMargin()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorHorizontalPadding()I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorHorizontalPadding()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getHorizontalPadding()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorMarginBottom()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorMarginBottom()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginBottom()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorMarginLeft()I
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorMarginLeft()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginLeft()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorMarginRight()I
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorMarginRight()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginRight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorMarginTop()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorMarginTop()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getMarginTop()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorPaddingBottom()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorPaddingLeft()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingLeft()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorPaddingRight()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingRight()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorPaddingTop()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorVerticalMargin()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorVerticalMargin()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getVerticalMargin()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAncestorVerticalPadding()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getAncestorVerticalPadding()I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getVerticalPadding()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFamilyHorizontalMargin()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyHorizontalMargin()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getHorizontalMargin()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyHorizontalPadding()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyHorizontalPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getHorizontalPadding()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyMarginBottom()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyMarginLeft()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyMarginRight()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyMarginTop()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyMarginTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyPaddingBottom()I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyPaddingLeft()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyPaddingRight()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyPaddingTop()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyVerticalMargin()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyVerticalMargin()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getVerticalMargin()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFamilyVerticalPadding()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getFamilyVerticalPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getVerticalPadding()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method protected getHorizontalMargin()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected getHorizontalPadding()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutHelper:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutHelper:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    return-object p0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-eqz v0, :cond_1

    .line 375
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getLayoutHelper()Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMarginBottom()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    return p0
.end method

.method public getMarginLeft()I
    .locals 0

    .line 175
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    return p0
.end method

.method public getMarginRight()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    return p0
.end method

.method public getMarginTop()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    return p0
.end method

.method public getOriginEndOffset()I
    .locals 0

    .line 355
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginEndOffset:I

    return p0
.end method

.method public getOriginStartOffset()I
    .locals 0

    .line 351
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginStartOffset:I

    return p0
.end method

.method public getPaddingBottom()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    return p0
.end method

.method public getPaddingLeft()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    return p0
.end method

.method public getPaddingRight()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    return p0
.end method

.method public getPaddingTop()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    return p0
.end method

.method public getRange()Lcom/alibaba/android/vlayout/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/android/vlayout/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    return-object p0
.end method

.method protected getVerticalMargin()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected getVerticalPadding()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    iget p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isChildrenEmpty()Z
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isFirstPosition(I)Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLastPosition(I)Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOutOfRange(I)Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRoot()Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public layoutChild(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)V
    .locals 6
    .param p6    # Lcom/alibaba/android/vlayout/LayoutManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 702
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->layoutChildWithMargins(Landroid/view/View;IIII)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    .line 703
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->fillLayoutRegion(IIIIZ)V

    return-void
.end method

.method public onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 675
    invoke-direct {p0, p1, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->clearChild(Lcom/alibaba/android/vlayout/LayoutManagerHelper;Lcom/alibaba/android/vlayout/layout/RangeStyle;)V

    return-void
.end method

.method public onClearChildMap()V
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method

.method public requireLayoutView()Z
    .locals 2

    .line 621
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mBgColor:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 622
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->isChildrenEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    invoke-direct {p0, p0}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->requireChildLayoutView(Lcom/alibaba/android/vlayout/layout/RangeStyle;)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 671
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mBgColor:I

    return-void
.end method

.method public setLayoutViewBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    return-void
.end method

.method public setLayoutViewHelper(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$DefaultLayoutViewHelper;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewBindListener;

    .line 658
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    return-void
.end method

.method public setLayoutViewUnBindListener(Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mLayoutViewUnBindListener:Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper$LayoutViewUnBindListener;

    return-void
.end method

.method public setMargin(IIII)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    .line 119
    iput p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    .line 120
    iput p3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    .line 121
    iput p4, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginBottom:I

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginLeft:I

    return-void
.end method

.method public setMarginRight(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginRight:I

    return-void
.end method

.method public setMarginTop(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mMarginTop:I

    return-void
.end method

.method public setOriginEndOffset(I)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginEndOffset:I

    return-void
.end method

.method public setOriginStartOffset(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mOriginStartOffset:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    .line 104
    iput p3, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    .line 105
    iput p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    .line 106
    iput p4, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mPaddingTop:I

    return-void
.end method

.method public setParent(Lcom/alibaba/android/vlayout/layout/RangeStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mParent:Lcom/alibaba/android/vlayout/layout/RangeStyle;

    return-void
.end method

.method public setRange(II)V
    .locals 7

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/android/vlayout/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/alibaba/android/vlayout/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mRange:Lcom/alibaba/android/vlayout/Range;

    .line 406
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 407
    new-instance p2, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 409
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/vlayout/layout/RangeStyle;

    .line 410
    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getOriginStartOffset()I

    move-result v3

    add-int/2addr v3, p1

    .line 411
    invoke-virtual {v2}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->getOriginEndOffset()I

    move-result v4

    add-int/2addr v4, p1

    .line 412
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/vlayout/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/alibaba/android/vlayout/Range;

    move-result-object v5

    .line 413
    invoke-virtual {p2, v5, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/vlayout/layout/RangeStyle;->setRange(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 417
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/RangeStyle;->mChildren:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p2}, Landroidx/collection/ArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    :cond_1
    return-void
.end method
