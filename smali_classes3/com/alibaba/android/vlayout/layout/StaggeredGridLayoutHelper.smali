.class public Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;
.source "StaggeredGridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;,
        Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;
    }
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000

.field private static final INVALID_SPAN_ID:I = -0x80000000

.field private static final LOOKUP_BUNDLE_KEY:Ljava/lang/String; = "StaggeredGridLayoutHelper_LazySpanLookup"

.field private static final TAG:Ljava/lang/String; = "Staggered"


# instance fields
.field private anchorPosition:I

.field private final checkForGapsRunnable:Ljava/lang/Runnable;

.field private mColLength:I

.field private mEachGap:I

.field private mHGap:I

.field private mLastGap:I

.field private mLayoutManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/android/vlayout/VirtualLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutWithAnchor:Z

.field private mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

.field private mNumLanes:I

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

.field private mVGap:I

.field private prelayoutViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    .line 75
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    .line 77
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    .line 81
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    .line 82
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    .line 83
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLastGap:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    .line 88
    new-instance v1, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-direct {v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->prelayoutViewList:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    .line 98
    new-instance v0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$1;-><init>(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;)V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->checkForGapsRunnable:Ljava/lang/Runnable;

    .line 114
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->setLane(I)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->setGap(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->checkForGaps()V

    return-void
.end method

.method private checkForGaps()V
    .locals 11

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    if-eqz v0, :cond_10

    .line 498
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v1

    .line 506
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getReverseLayout()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 507
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLastVisibleItemPosition()I

    .line 508
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findFirstVisibleItemPosition()I

    .line 509
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findFirstVisibleItemPosition()I

    .line 512
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 513
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 517
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v2

    .line 518
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildCount()I

    move-result v4

    .line 523
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getReverseLayout()Z

    move-result v5

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    sub-int/2addr v4, v3

    move v5, v4

    :goto_1
    if-ltz v5, :cond_c

    .line 525
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 526
    invoke-virtual {v0, v8}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    if-ne v9, v1, :cond_5

    if-ne v5, v4, :cond_3

    .line 531
    invoke-virtual {v2, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    goto/16 :goto_5

    :cond_3
    add-int/2addr v5, v3

    .line 534
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v5, v9, -0x1

    if-ne v4, v5, :cond_4

    .line 538
    invoke-virtual {v2, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->obtainExtraMargin(Landroid/view/View;Z)I

    move-result v1

    sub-int/2addr v2, v1

    .line 539
    invoke-virtual {v0, v8, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->obtainExtraMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    .line 542
    :cond_4
    invoke-virtual {v2, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    :goto_2
    move v1, v2

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_3
    if-ge v5, v4, :cond_c

    .line 550
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 551
    invoke-virtual {v0, v8}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    if-ne v9, v1, :cond_b

    if-nez v5, :cond_7

    .line 557
    invoke-virtual {v2, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    goto :goto_5

    :cond_7
    sub-int/2addr v5, v3

    .line 560
    invoke-virtual {v0, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 561
    invoke-virtual {v2, v4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v3, v7}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->obtainExtraMargin(Landroid/view/View;ZZ)I

    move-result v10

    add-int/2addr v5, v10

    .line 562
    invoke-virtual {v0, v8, v7, v7}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->obtainExtraMargin(Landroid/view/View;ZZ)I

    move-result v10

    sub-int/2addr v5, v10

    .line 563
    invoke-virtual {v2, v8}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-ne v5, v2, :cond_8

    move v9, v6

    goto :goto_4

    .line 568
    :cond_8
    invoke-virtual {v0, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_9

    .line 571
    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 572
    instance-of v2, v1, Lcom/alibaba/android/vlayout/layout/StickyLayoutHelper;

    if-eqz v2, :cond_a

    .line 573
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelper;->getFixedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 574
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelper;->getFixedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v5, v1

    goto :goto_4

    .line 578
    :cond_9
    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findLayoutHelperByPosition(I)Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/LayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    :cond_a
    :goto_4
    move v1, v5

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    move v1, v6

    move v9, v1

    :goto_5
    if-ne v9, v6, :cond_d

    return-void

    .line 593
    :cond_d
    invoke-direct {p0, v0, v9, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->hasGapsToFix(Lcom/alibaba/android/vlayout/VirtualLayoutManager;II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 598
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v2, p0

    :goto_6
    if-ge v7, v2, :cond_e

    aget-object v3, p0, v7

    .line 599
    invoke-virtual {v3, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->setLine(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 602
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 603
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->requestLayout()V

    :cond_f
    return-void

    :cond_10
    :goto_7
    return-void
.end method

.method private checkSpanForGap(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;Lcom/alibaba/android/vlayout/VirtualLayoutManager;I)Z
    .locals 1

    .line 635
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p0

    .line 636
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getReverseLayout()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 637
    invoke-virtual {p1, p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    if-ge p0, p3, :cond_1

    return v0

    .line 640
    :cond_0
    invoke-virtual {p1, p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    if-le p0, p3, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private ensureLanes()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    .line 158
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    new-array v0, v0, [Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v0, 0x0

    .line 159
    :goto_0
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    new-instance v2, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;-><init>(ILcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->getSpan(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v0, v0, p1

    if-eqz p3, :cond_0

    .line 711
    invoke-virtual {v0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->findStart(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 713
    invoke-virtual {v0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->findEnd(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 718
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v1, v1, v0

    if-eqz p3, :cond_3

    .line 724
    invoke-virtual {v1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->findStart(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    if-nez p3, :cond_4

    .line 726
    invoke-virtual {v1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->findEnd(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    const/4 v1, 0x1

    .line 900
    :goto_0
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v1, v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMaxStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    const/4 v1, 0x1

    .line 878
    :goto_0
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v1, v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    const/4 v1, 0x1

    .line 911
    :goto_0
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v1, v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    const/4 v1, 0x1

    .line 889
    :goto_0
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v1, v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getNextSpan(ILcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;
    .locals 6

    .line 810
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    .line 813
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 814
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result p3

    if-eq v1, p3, :cond_1

    :goto_1
    move p3, v4

    goto :goto_4

    :cond_1
    move p3, v3

    goto :goto_4

    .line 816
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v5

    if-ne v1, v5, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isDoLayoutRTL()Z

    move-result p3

    if-ne v1, p3, :cond_1

    goto :goto_1

    :goto_4
    if-eqz p3, :cond_5

    .line 822
    iget p3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    add-int/lit8 v3, p3, -0x1

    move p3, v2

    goto :goto_5

    .line 827
    :cond_5
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    move p3, v4

    .line 830
    :goto_5
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v4, :cond_8

    const p2, 0x7fffffff

    :goto_6
    if-eq v3, v2, :cond_7

    .line 834
    iget-object v4, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v4, v4, v3

    .line 835
    invoke-virtual {v4, p1, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v5

    if-ge v5, p2, :cond_6

    move-object v1, v4

    move p2, v5

    :cond_6
    add-int/2addr v3, p3

    goto :goto_6

    :cond_7
    return-object v1

    :cond_8
    const/high16 p2, -0x80000000

    :goto_7
    if-eq v3, v2, :cond_a

    .line 855
    iget-object v4, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v4, v4, v3

    .line 856
    invoke-virtual {v4, p1, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v5

    if-le v5, p2, :cond_9

    move-object v1, v4

    move p2, v5

    :cond_9
    add-int/2addr v3, p3

    goto :goto_7

    :cond_a
    return-object v1
.end method

.method private hasGapsToFix(Lcom/alibaba/android/vlayout/VirtualLayoutManager;II)Landroid/view/View;
    .locals 7

    .line 613
    invoke-virtual {p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 620
    :cond_0
    new-instance p2, Ljava/util/BitSet;

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    invoke-direct {p2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 621
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 623
    iget-object p2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v1, p2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p2, v4

    .line 624
    invoke-static {v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v5, p1, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->checkSpanForGap(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;Lcom/alibaba/android/vlayout/VirtualLayoutManager;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 625
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Landroid/view/View;

    goto :goto_2

    :cond_1
    invoke-static {v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :goto_2
    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 2

    .line 649
    invoke-interface {p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    .line 650
    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 652
    invoke-virtual {p3, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    invoke-direct {p0, p2, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMaxStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    .line 653
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 654
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEnd()I

    move-result p3

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    .line 653
    invoke-direct {p0, p1, p2, p5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p3, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    invoke-direct {p0, p2, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMinEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    .line 658
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 659
    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEnd()I

    move-result p3

    invoke-virtual {v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    .line 658
    invoke-direct {p0, p1, p2, p5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    :goto_0
    return-void
.end method

.method private recycleForPreLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 5

    .line 399
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p2

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->prelayoutViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 401
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->prelayoutViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p2, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 404
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v3

    .line 405
    invoke-direct {p0, v3, v1, v2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v2, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 408
    invoke-interface {p3, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 409
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 413
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v0

    .line 414
    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 416
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 417
    invoke-interface {p3, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 418
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 5

    .line 686
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    .line 687
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 690
    invoke-interface {p3, v1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 691
    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_1

    .line 692
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 693
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v3

    const/4 v4, 0x0

    .line 694
    invoke-direct {p0, v3, v2, v4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 696
    invoke-virtual {v3, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 697
    invoke-interface {p3, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 698
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 6

    .line 664
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 666
    :goto_0
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 667
    invoke-interface {p3, v3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 668
    invoke-virtual {v0, v4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    if-ge v5, p2, :cond_1

    .line 669
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 670
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v5

    .line 671
    invoke-direct {p0, v5, v4, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 673
    invoke-virtual {v5, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 674
    invoke-interface {p3, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->removeChildView(Landroid/view/View;)V

    .line 675
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private updateAllRemainingSpans(IILcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 2

    const/4 v0, 0x0

    .line 783
    :goto_0
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v0, v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->updateRemainingSpans(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;IILcom/alibaba/android/vlayout/OrientationHelperEx;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateRemainingSpans(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;IILcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 3

    .line 792
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getDeletedSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 794
    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    add-int/2addr p2, v0

    if-ge p2, p3, :cond_1

    .line 796
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {p1, p4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p2

    sub-int/2addr p2, v0

    if-le p2, p3, :cond_1

    .line 801
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 196
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->afterLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutWithAnchor:Z

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p5

    invoke-virtual {p5}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-gt p3, p5, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p6}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 204
    invoke-interface {p6, p1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->checkForGapsRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 4

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->beforeLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 170
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 171
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentWidth()I

    move-result p1

    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getHorizontalMargin()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getHorizontalPadding()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getContentHeight()I

    move-result p1

    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getVerticalMargin()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getVerticalPadding()I

    move-result v0

    sub-int/2addr p1, v0

    .line 175
    :goto_0
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    sub-int/2addr v1, p2

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    .line 176
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 178
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-gt v0, p2, :cond_1

    const/4 p1, 0x0

    .line 179
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLastGap:I

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    goto :goto_2

    .line 180
    :cond_1
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 181
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    .line 182
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLastGap:I

    goto :goto_2

    .line 184
    :cond_2
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p1

    if-ne p1, p2, :cond_3

    iget p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    :goto_1
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLastGap:I

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    .line 187
    :goto_2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p3, :cond_5

    .line 188
    :cond_4
    instance-of p1, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    if-eqz p1, :cond_5

    .line 189
    new-instance p1, Ljava/lang/ref/WeakReference;

    check-cast p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    :cond_5
    return-void
.end method

.method public checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 12

    .line 938
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->checkAnchorInfo(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 939
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->ensureLanes()V

    .line 941
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p1

    .line 942
    iget-boolean v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 943
    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 944
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    goto :goto_0

    .line 947
    :cond_0
    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 948
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 953
    :cond_1
    :goto_0
    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-interface {p3, v0}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 955
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 956
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    .line 957
    :goto_2
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v4

    if-nez v0, :cond_4

    .line 963
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length p1, p0

    :goto_3
    if-ge v3, p1, :cond_13

    aget-object p3, p0, v3

    .line 964
    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->clear()V

    .line 965
    iget v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    invoke-virtual {p3, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->setLine(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 968
    :cond_4
    iget-boolean v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    const/high16 v6, -0x80000000

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    const v5, 0x7fffffff

    .line 969
    :goto_4
    iget-object v7, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v8, v7

    move v9, v5

    move v5, v3

    :goto_5
    if-ge v5, v8, :cond_8

    aget-object v10, v7, v5

    .line 970
    invoke-static {v10}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 971
    iget-boolean v11, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    if-eqz v11, :cond_6

    .line 972
    invoke-static {v10}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 973
    invoke-interface {p3, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_6

    .line 975
    :cond_6
    invoke-static {v10}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 976
    invoke-interface {p3, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getPosition(Landroid/view/View;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 982
    :cond_8
    invoke-virtual {p0, v9}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 983
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v9, p1, :cond_9

    goto :goto_7

    :cond_9
    move v1, v3

    .line 984
    :goto_7
    invoke-interface {p3, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 987
    iget-boolean v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    if-eqz v5, :cond_d

    .line 988
    iput v9, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 989
    invoke-virtual {v4, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 990
    iget v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    if-ge v0, v5, :cond_b

    .line 991
    iget v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    sub-int/2addr v5, v0

    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    add-int/2addr v5, v2

    .line 993
    invoke-virtual {v4, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v5

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    goto :goto_9

    :cond_b
    if-eqz v1, :cond_c

    move v5, v3

    goto :goto_8

    :cond_c
    move v5, v2

    .line 996
    :goto_8
    invoke-virtual {v4, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v5

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    goto :goto_9

    .line 1000
    :cond_d
    iput v9, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    .line 1001
    invoke-virtual {v4, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 1002
    iget v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    if-le v0, v5, :cond_f

    .line 1004
    iget v5, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    sub-int/2addr v5, v0

    if-eqz v1, :cond_e

    move v2, v3

    :cond_e
    sub-int/2addr v5, v2

    .line 1006
    invoke-virtual {v4, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v5

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    :goto_9
    move v6, v5

    goto :goto_a

    :cond_f
    if-eqz v1, :cond_10

    move v2, v3

    :cond_10
    neg-int v0, v2

    .line 1009
    invoke-virtual {v4, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->coordinate:I

    move v6, v0

    goto :goto_a

    .line 1014
    :cond_11
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->anchorPosition:I

    .line 1015
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutWithAnchor:Z

    .line 1021
    :cond_12
    :goto_a
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length p1, p0

    :goto_b
    if-ge v3, p1, :cond_13

    aget-object v0, p0, v3

    .line 1022
    invoke-interface {p3}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result v1

    iget-boolean v2, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->layoutFromEnd:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v6, v4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->cacheReferenceLineAndClear(ZILcom/alibaba/android/vlayout/OrientationHelperEx;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_13
    return-void
.end method

.method public computeAlignOffset(IZZLcom/alibaba/android/vlayout/LayoutManagerHelper;)I
    .locals 5

    .line 441
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 442
    :goto_0
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v3

    .line 443
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    invoke-interface {p4, v4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_1

    return v1

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->ensureLanes()V

    if-eqz v0, :cond_5

    if-eqz p2, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-ne p1, p2, :cond_2

    .line 454
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginBottom:I

    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingBottom:I

    add-int/2addr p1, p2

    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p2, v3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMaxEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    .line 455
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_2
    if-nez p3, :cond_5

    .line 457
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMinEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    .line 458
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_3
    if-nez p1, :cond_4

    .line 463
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginTop:I

    neg-int p1, p1

    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingTop:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    .line 464
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p3

    .line 463
    invoke-direct {p0, p3, v3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMinStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    sub-int/2addr p2, p0

    sub-int/2addr p1, p2

    return p1

    :cond_4
    if-nez p3, :cond_5

    .line 466
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMaxStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    .line 467
    invoke-virtual {v3, p4}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_5
    return v1
.end method

.method public getColLength()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    return p0
.end method

.method public getHGap()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    return p0
.end method

.method public getLane()I
    .locals 0

    .line 145
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    return p0
.end method

.method public getVGap()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    return p0
.end method

.method public isRecyclable(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)Z
    .locals 3

    .line 737
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->isRecyclable(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 740
    invoke-interface {p4, p1}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 743
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object p3

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 745
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v0

    .line 747
    invoke-interface {p4}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getReverseLayout()Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 750
    invoke-direct {p0, v0, p1, v2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 752
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 758
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 764
    invoke-direct {p0, v0, p1, v2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 766
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    goto :goto_0

    .line 770
    :cond_2
    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->findSpan(ILandroid/view/View;Z)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 772
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    :cond_3
    :goto_0
    return p2
.end method

.method public layoutViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 213
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->ensureLanes()V

    .line 219
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_1

    move v15, v14

    goto :goto_0

    :cond_1
    move v15, v13

    .line 220
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getMainOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v6

    .line 221
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getSecondaryOrientationHelper()Lcom/alibaba/android/vlayout/OrientationHelperEx;

    move-result-object v16

    .line 222
    invoke-interface/range {p5 .. p5}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->isEnableMarginOverLap()Z

    move-result v5

    .line 224
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    invoke-virtual {v0, v13, v1, v14}, Ljava/util/BitSet;->set(IIZ)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    if-ne v0, v14, :cond_2

    .line 232
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getAvailable()I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getExtra()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    move/from16 v17, v0

    move v4, v1

    goto :goto_2

    .line 236
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getAvailable()I

    move-result v1

    sub-int/2addr v0, v1

    .line 237
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getExtra()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 240
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    invoke-direct {v7, v0, v4, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->updateAllRemainingSpans(IILcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v3

    .line 244
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->prelayoutViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    :goto_3
    invoke-virtual {v10, v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_19

    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 247
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    .line 248
    invoke-virtual {v10, v8}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_1b

    .line 254
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 257
    invoke-virtual {v14}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->getViewPosition()I

    move-result v13

    move/from16 v20, v4

    .line 258
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-virtual {v4, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->getSpan(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    .line 262
    invoke-direct {v7, v3, v10, v12}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getNextSpan(ILcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    move-result-object v1

    .line 263
    iget-object v4, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-virtual {v4, v13, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->setSpan(ILcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)V

    :goto_5
    move-object v4, v1

    goto :goto_6

    .line 265
    :cond_5
    iget-object v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    aget-object v1, v1, v4

    goto :goto_5

    .line 268
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v13, v1

    iget v8, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v1, v8, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 269
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v13

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v8, v13, :cond_7

    const/4 v8, 0x1

    goto :goto_8

    :cond_7
    const/4 v8, 0x0

    .line 271
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->isPreLayout()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 272
    iget-object v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->prelayoutViewList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_8
    invoke-interface {v12, v10, v2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->addChildView(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Landroid/view/View;)V

    if-eqz v15, :cond_a

    .line 278
    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    iget v9, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    invoke-interface {v12, v13, v9, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v9

    .line 279
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getTotalSpace()I

    move-result v10

    iget v13, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    .line 280
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_9

    iget v13, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    :goto_9
    const/4 v14, 0x1

    goto :goto_a

    .line 281
    :cond_9
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    div-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    goto :goto_9

    .line 279
    :goto_a
    invoke-interface {v12, v10, v13, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v10

    .line 282
    invoke-interface {v12, v2, v9, v10}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    const/4 v14, 0x1

    goto :goto_d

    .line 284
    :cond_a
    iget v9, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    iget v10, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    const/4 v13, 0x0

    invoke-interface {v12, v9, v10, v13}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v9

    .line 285
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getTotalSpace()I

    move-result v10

    iget v13, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    .line 286
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    :goto_b
    const/4 v14, 0x1

    goto :goto_c

    .line 287
    :cond_b
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v14, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    goto :goto_b

    .line 285
    :goto_c
    invoke-interface {v12, v10, v13, v14}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getChildMeasureSpec(IIZ)I

    move-result v10

    .line 288
    invoke-interface {v12, v2, v10, v9}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->measureChildWithMargins(Landroid/view/View;II)V

    .line 295
    :goto_d
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v9

    if-ne v9, v14, :cond_11

    .line 296
    invoke-virtual {v4, v3, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v8

    if-eqz v1, :cond_c

    .line 299
    invoke-virtual {v7, v12, v15, v14, v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->computeStartSpace(Lcom/alibaba/android/vlayout/LayoutManagerHelper;ZZZ)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_10

    .line 301
    :cond_c
    iget-boolean v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutWithAnchor:Z

    if-eqz v1, :cond_f

    .line 302
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->anchorPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    if-ge v0, v1, :cond_d

    goto :goto_10

    :cond_d
    if-eqz v15, :cond_e

    .line 305
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    goto :goto_e

    :cond_e
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    :goto_e
    add-int/2addr v8, v0

    goto :goto_10

    :cond_f
    if-eqz v15, :cond_10

    .line 308
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    goto :goto_f

    :cond_10
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    :goto_f
    add-int/2addr v8, v0

    .line 311
    :goto_10
    invoke-virtual {v6, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v8

    move v9, v0

    goto :goto_15

    :cond_11
    if-eqz v8, :cond_13

    .line 314
    invoke-virtual {v4, v3, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    if-eqz v15, :cond_12

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginBottom:I

    :goto_11
    iget v8, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingRight:I

    add-int/2addr v1, v8

    goto :goto_12

    :cond_12
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginRight:I

    goto :goto_11

    :goto_12
    sub-int/2addr v0, v1

    goto :goto_14

    .line 318
    :cond_13
    invoke-virtual {v4, v3, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    if-eqz v15, :cond_14

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    goto :goto_13

    :cond_14
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    :goto_13
    sub-int/2addr v0, v1

    .line 321
    :goto_14
    invoke-virtual {v6, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v8, v1

    .line 325
    :goto_15
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_15

    .line 326
    invoke-virtual {v4, v2, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->appendToSpan(Landroid/view/View;Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    goto :goto_16

    .line 328
    :cond_15
    invoke-virtual {v4, v2, v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->prependToSpan(Landroid/view/View;Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 332
    :goto_16
    iget v0, v4, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    sub-int/2addr v1, v10

    if-ne v0, v1, :cond_16

    iget v0, v4, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    add-int/2addr v1, v13

    mul-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    sub-int/2addr v0, v1

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLastGap:I

    add-int/2addr v0, v1

    goto :goto_17

    :cond_16
    iget v0, v4, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mColLength:I

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mEachGap:I

    add-int/2addr v1, v13

    mul-int/2addr v0, v1

    .line 336
    :goto_17
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v15, :cond_17

    .line 339
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginLeft:I

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingLeft:I

    add-int/2addr v1, v13

    add-int/2addr v0, v1

    :goto_18
    move v13, v0

    goto :goto_19

    .line 341
    :cond_17
    iget v1, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginTop:I

    iget v13, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingTop:I

    add-int/2addr v1, v13

    add-int/2addr v0, v1

    goto :goto_18

    .line 344
    :goto_19
    invoke-virtual {v6, v2}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v14, v13, v0

    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v21, v2

    move v2, v13

    move/from16 v18, v3

    move v3, v8

    move-object v13, v4

    move/from16 v8, v20

    move v4, v14

    move/from16 v19, v5

    move v5, v9

    move-object v9, v6

    move-object/from16 v6, p5

    .line 347
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    move-object/from16 v22, v9

    move v9, v8

    move-object v8, v13

    move-object/from16 v13, v22

    goto :goto_1a

    :cond_18
    move-object/from16 v21, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v5, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v8

    move v3, v13

    move-object v8, v4

    move v4, v9

    move v9, v5

    move v5, v14

    move-object v13, v6

    move-object/from16 v6, p5

    .line 349
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->layoutChildWithMargin(Landroid/view/View;IIIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 352
    :goto_1a
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    invoke-direct {v7, v8, v0, v9, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->updateRemainingSpans(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;IILcom/alibaba/android/vlayout/OrientationHelperEx;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v8

    move/from16 v4, v17

    move-object/from16 v5, p5

    .line 354
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    move-object/from16 v0, v21

    .line 356
    invoke-virtual {v7, v11, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->handleStateOnResult(Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;Landroid/view/View;)V

    move v4, v9

    move v14, v10

    move-object v6, v13

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_19
    :goto_1b
    move-object v13, v6

    .line 359
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1d

    .line 362
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 363
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_1d

    aget-object v5, v0, v4

    .line 364
    iget v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    if-eq v6, v1, :cond_1a

    .line 365
    iget v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    iput v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 369
    :cond_1b
    iget-object v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_1d

    aget-object v5, v0, v4

    .line 370
    iget v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    if-eq v6, v1, :cond_1c

    .line 371
    iget v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    iput v6, v5, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 376
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 377
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 378
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v7, v0, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMaxStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    .line 379
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v11, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    :goto_1e
    move-object/from16 v0, p1

    goto :goto_23

    :cond_1e
    move-object/from16 v1, p3

    .line 381
    :cond_1f
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v7, v0, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMinStart(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    .line 382
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v2, v0

    if-eqz v15, :cond_20

    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginTop:I

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingTop:I

    :goto_1f
    add-int/2addr v0, v3

    goto :goto_20

    :cond_20
    iget v0, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginLeft:I

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingLeft:I

    goto :goto_1f

    :goto_20
    add-int/2addr v2, v0

    iput v2, v11, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    goto :goto_1e

    :cond_21
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 385
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 386
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v7, v0, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMinEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v11, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    goto :goto_1e

    .line 389
    :cond_22
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v7, v0, v13}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getMaxEnd(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    .line 390
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->getOffset()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v15, :cond_23

    iget v2, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginBottom:I

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingBottom:I

    :goto_21
    add-int/2addr v2, v3

    goto :goto_22

    :cond_23
    iget v2, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mMarginRight:I

    iget v3, v7, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mPaddingRight:I

    goto :goto_21

    :goto_22
    add-int/2addr v0, v2

    iput v0, v11, Lcom/alibaba/android/vlayout/layout/LayoutChunkResult;->mConsumed:I

    goto :goto_1e

    .line 395
    :goto_23
    invoke-direct {v7, v0, v1, v12}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->recycleForPreLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    return-void
.end method

.method public onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 481
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onClear(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 482
    iget-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->clear()V

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    .line 484
    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLayoutManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onItemsChanged(Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->clear()V

    return-void
.end method

.method public onOffsetChildrenHorizontal(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 2

    .line 1059
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onOffsetChildrenHorizontal(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 1060
    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p2

    if-nez p2, :cond_0

    .line 1061
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 1062
    invoke-virtual {v1, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOffsetChildrenVertical(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 2

    .line 1049
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onOffsetChildrenVertical(ILcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 1050
    invoke-interface {p2}, Lcom/alibaba/android/vlayout/LayoutManagerHelper;->getOrientation()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1051
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 1052
    invoke-virtual {v1, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRefreshLayout(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 923
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onRefreshLayout(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;Lcom/alibaba/android/vlayout/LayoutManagerHelper;)V

    .line 924
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->ensureLanes()V

    .line 926
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$AnchorInfoWrapper;->position:I

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->isOutOfRange(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 930
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mSpans:[Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p0, p2

    .line 931
    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->clear()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1042
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1043
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    const-string v0, "StaggeredGridLayoutHelper_LazySpanLookup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->mData:[I

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 1

    .line 1035
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/layout/BaseLayoutHelper;->onSaveState(Landroid/os/Bundle;)V

    const-string v0, "StaggeredGridLayoutHelper_LazySpanLookup"

    .line 1036
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mLazySpanLookup:Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$LazySpanLookup;->mData:[I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public onScrollStateChanged(IIILcom/alibaba/android/vlayout/LayoutManagerHelper;)V
    .locals 0

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-gt p2, p4, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p3, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->checkForGaps()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setGap(I)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->setHGap(I)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->setVGap(I)V

    return-void
.end method

.method public setHGap(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mHGap:I

    return-void
.end method

.method public setLane(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mNumLanes:I

    .line 141
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->ensureLanes()V

    return-void
.end method

.method public setVGap(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;->mVGap:I

    return-void
.end method
