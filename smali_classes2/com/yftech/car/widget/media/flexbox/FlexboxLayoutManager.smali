.class public Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/flexbox/FlexContainer;
.implements Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;,
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;,
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FlexboxLayoutManager"

.field private static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlignItems:I

.field private mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

.field private final mContext:Landroid/content/Context;

.field private mDirtyPosition:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private final mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

.field private mFromBottomToTop:Z

.field private mIsRtl:Z

.field private mJustifyContent:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

.field private mMaxLine:I

.field private mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

.field private mParent:Landroid/view/View;

.field private mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

.field private mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

.field private mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

.field private mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 223
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 108
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 128
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 150
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 155
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 160
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 165
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 179
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 192
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 198
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    .line 224
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 225
    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    .line 226
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 227
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 108
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 128
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 150
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 155
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 160
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 165
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 179
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 192
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 198
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    .line 246
    invoke-static {p1, p2, p3, p4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 247
    iget p3, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-boolean p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 257
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 259
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-boolean p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    .line 250
    invoke-virtual {p0, p4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 252
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 263
    :goto_0
    invoke-virtual {p0, p4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    .line 264
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 265
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return p0
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method private canViewBeRecycledFromEnd(Landroid/view/View;I)Z
    .locals 3

    .line 1436
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1437
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    if-gt p0, p2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1440
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    sub-int/2addr p0, p2

    if-lt p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private canViewBeRecycledFromStart(Landroid/view/View;I)Z
    .locals 3

    .line 1380
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1382
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    if-gt v0, p2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1384
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    if-gt p0, p2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private clearFlexLines()V
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2397
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 2398
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return-void
.end method

.method private computeScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 2254
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2257
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2258
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 2259
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2260
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 2261
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2265
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2266
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2267
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private computeScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 2289
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2292
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2293
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2294
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 2295
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 2299
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 2300
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 2301
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2302
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 2301
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2303
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    goto :goto_0

    .line 2307
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v1, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 2311
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2312
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2313
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    .line 2311
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private computeScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 2342
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2345
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2346
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2347
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 2348
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2352
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2353
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 2354
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2355
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 2354
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    .line 2357
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private ensureLayoutState()V
    .locals 2

    .line 1851
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method private ensureOrientationHelper()V
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    return-void

    .line 1831
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1832
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    .line 1833
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1834
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 1836
    :cond_1
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1837
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 1840
    :cond_2
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    .line 1841
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1842
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 1844
    :cond_3
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1845
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    :goto_0
    return-void
.end method

.method private fill(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 8

    .line 1286
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1287
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1288
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2012(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1290
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1292
    :cond_1
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 1293
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    const/4 v3, 0x0

    .line 1295
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    :goto_0
    if-gtz v2, :cond_2

    .line 1296
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1297
    invoke-static {p3, p2, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2100(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1298
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1299
    iget v6, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    invoke-static {p3, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1300
    invoke-direct {p0, v5, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->layoutFlexLine(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    add-int/2addr v3, v6

    if-nez v4, :cond_3

    .line 1302
    iget-boolean v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v6, :cond_3

    .line 1303
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getCrossSize()I

    move-result v6

    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1020(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1305
    :cond_3
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getCrossSize()I

    move-result v6

    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1012(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1308
    :goto_1
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getCrossSize()I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_0

    .line 1310
    :cond_4
    invoke-static {p3, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1220(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1311
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    if-eq p2, v1, :cond_6

    .line 1312
    invoke-static {p3, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2012(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1313
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    if-gez p2, :cond_5

    .line 1314
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    invoke-static {p3, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2012(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1316
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1318
    :cond_6
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private findFirstReferenceChild(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1191
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1196
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1201
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 2178
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2180
    iget p2, p2, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 2182
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2183
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 2186
    :cond_0
    iget-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2187
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2188
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 2192
    :cond_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2193
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    .line 1214
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1219
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v1, v0

    .line 1220
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1221
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 2210
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2212
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    .line 2214
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2215
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 2218
    :cond_0
    iget-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2221
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2222
    invoke-virtual {v4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 2226
    :cond_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2227
    invoke-virtual {v4, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private findOneVisibleChild(IIZ)Landroid/view/View;
    .locals 3

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq p1, p2, :cond_2

    .line 2551
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2552
    invoke-direct {p0, v1, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isViewVisible(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private findReferenceChild(III)Landroid/view/View;
    .locals 7

    .line 1234
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 1235
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 1238
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1239
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_6

    .line 1242
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 1246
    :cond_1
    invoke-virtual {p0, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p3, :cond_5

    .line 1248
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 1252
    :cond_2
    iget-object v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_4

    iget-object v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1253
    invoke-virtual {v6, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v1, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method private fixLayoutEndGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    .line 834
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 839
    invoke-direct {p0, v0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    .line 846
    invoke-direct {p0, v0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    .line 856
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    .line 858
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method private fixLayoutStartGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    .line 796
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    .line 800
    invoke-direct {p0, v0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    .line 808
    invoke-direct {p0, v0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    .line 816
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    .line 818
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method private getChildBottom(Landroid/view/View;)I
    .locals 1

    .line 2421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2422
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1267
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildLeft(Landroid/view/View;)I
    .locals 1

    .line 2403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2404
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private getChildRight(Landroid/view/View;)I
    .locals 1

    .line 2409
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2410
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 1

    .line 2415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2416
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1980
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 1983
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 1984
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1986
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-lez p1, :cond_2

    .line 1992
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1994
    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateLayoutState(II)V

    .line 1996
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1997
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p2, p3, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fill(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    if-le v3, v4, :cond_6

    neg-int p1, v2

    mul-int/2addr p1, v4

    goto :goto_2

    :cond_5
    if-le v3, v4, :cond_6

    mul-int p1, v2, v4

    .line 2007
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 2008
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method private handleScrollingSubOrientation(I)I
    .locals 5

    .line 2020
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 2023
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 2024
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2026
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    .line 2028
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_6

    .line 2030
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    .line 2032
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 2033
    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 2032
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    goto :goto_3

    .line 2036
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_5

    .line 2037
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p0

    neg-int p1, p0

    :cond_5
    :goto_2
    move p0, p1

    goto :goto_3

    :cond_6
    if-lez p1, :cond_7

    .line 2042
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 2043
    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 2042
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_3

    .line 2045
    :cond_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_8

    goto :goto_2

    .line 2046
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p0

    neg-int p1, p0

    goto :goto_2

    :goto_3
    return p0

    :cond_9
    :goto_4
    return v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 2379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private isViewVisible(Landroid/view/View;Z)Z
    .locals 9

    .line 2435
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 2436
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 2437
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2438
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2439
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildLeft(Landroid/view/View;)I

    move-result v4

    .line 2440
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildTop(Landroid/view/View;)I

    move-result v5

    .line 2441
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildRight(Landroid/view/View;)I

    move-result v6

    .line 2442
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildBottom(Landroid/view/View;)I

    move-result p0

    const/4 p1, 0x1

    const/4 v7, 0x0

    if-gt v0, v4, :cond_0

    if-lt v2, v6, :cond_0

    move v8, p1

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-ge v4, v2, :cond_2

    if-lt v6, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v0, p1

    :goto_2
    if-gt v1, v5, :cond_3

    if-lt v3, p0, :cond_3

    move v2, p1

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    if-ge v5, v3, :cond_5

    if-lt p0, v1, :cond_4

    goto :goto_4

    :cond_4
    move p0, v7

    goto :goto_5

    :cond_5
    :goto_4
    move p0, p1

    :goto_5
    if-eqz p2, :cond_7

    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move p1, v7

    :goto_6
    return p1

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    move p1, v7

    :goto_7
    return p1
.end method

.method private layoutFlexLine(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1

    .line 1457
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisHorizontal(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p0

    return p0

    .line 1460
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisVertical(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p0

    return p0
.end method

.method private layoutFlexLineMainAxisHorizontal(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v1

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v2

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v3

    .line 1471
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1472
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1473
    iget v5, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v4, v5

    :cond_0
    move v9, v4

    .line 1475
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v10

    .line 1482
    iget v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1518
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1510
    :pswitch_0
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eqz v4, :cond_1

    .line 1511
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v6, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_4

    .line 1496
    :pswitch_1
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eqz v4, :cond_2

    .line 1497
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_4

    :pswitch_2
    int-to-float v1, v1

    .line 1505
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eq v4, v11, :cond_3

    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v4, v11

    int-to-float v4, v4

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1506
    :goto_2
    iget v6, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_4

    :pswitch_3
    int-to-float v1, v1

    .line 1492
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    .line 1493
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    goto :goto_3

    .line 1488
    :pswitch_4
    iget v4, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1489
    iget v3, v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    move v4, v5

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_4

    :pswitch_5
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    move v4, v5

    .line 1521
    :goto_4
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1522
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1523
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v3, 0x0

    .line 1528
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result v13

    move v14, v10

    :goto_5
    add-int v4, v10, v13

    if-ge v14, v4, :cond_8

    .line 1530
    invoke-virtual {v0, v14}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_4

    goto/16 :goto_9

    .line 1535
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    if-ne v4, v11, :cond_5

    .line 1536
    sget-object v4, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1537
    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    move/from16 v16, v3

    goto :goto_7

    .line 1539
    :cond_5
    sget-object v4, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1540
    invoke-virtual {v0, v15, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1547
    :goto_7
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v4, v3, v14

    .line 1548
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v3, v4, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v3

    .line 1549
    iget-object v6, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v6, v4, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v4

    .line 1550
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1551
    invoke-direct {v0, v15, v3, v4, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1552
    invoke-virtual {v15, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1555
    :cond_6
    iget v3, v7, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v17, v1, v3

    .line 1556
    iget v1, v7, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 1558
    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int v5, v9, v1

    .line 1559
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_7

    .line 1560
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 1561
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v4, v2, v3

    .line 1562
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1563
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v11, v7

    move/from16 v7, v19

    .line 1560
    invoke-virtual/range {v1 .. v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    goto :goto_8

    :cond_7
    move-object v11, v7

    .line 1565
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 1566
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1567
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    .line 1568
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    .line 1565
    invoke-virtual/range {v1 .. v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    .line 1570
    :goto_8
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    add-float v17, v17, v1

    .line 1572
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    sub-float v18, v18, v1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    :goto_9
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto/16 :goto_5

    .line 1575
    :cond_8
    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1512(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getCrossSize()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private layoutFlexLineMainAxisVertical(Lcom/yftech/car/widget/media/flexbox/FlexLine;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v2

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 1586
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1588
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    .line 1589
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 1590
    iget v6, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v4, v6

    .line 1591
    iget v6, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v5, v6

    :cond_0
    move v10, v4

    move v11, v5

    .line 1593
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v12

    .line 1600
    iget v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v13, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1637
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    :pswitch_0
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eqz v4, :cond_1

    .line 1630
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v6, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_4

    .line 1615
    :pswitch_1
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eqz v4, :cond_2

    .line 1616
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_4

    :pswitch_2
    int-to-float v1, v1

    .line 1624
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-eq v4, v13, :cond_3

    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1625
    :goto_2
    iget v6, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_4

    :pswitch_3
    int-to-float v1, v1

    .line 1610
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    .line 1611
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    goto :goto_3

    .line 1606
    :pswitch_4
    iget v4, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1607
    iget v3, v9, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    move v4, v5

    move/from16 v24, v2

    move v2, v1

    move/from16 v1, v24

    goto :goto_4

    :pswitch_5
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    move v4, v5

    .line 1640
    :goto_4
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1641
    iget-object v3, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1642
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/4 v3, 0x0

    .line 1647
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result v15

    move v8, v12

    :goto_5
    add-int v4, v12, v15

    if-ge v8, v4, :cond_a

    .line 1649
    invoke-virtual {v0, v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    move/from16 v20, v8

    move/from16 v22, v13

    goto/16 :goto_9

    .line 1657
    :cond_4
    iget-object v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v5, v4, v8

    .line 1658
    iget-object v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v4, v5, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v4

    .line 1659
    iget-object v13, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v13, v5, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v5

    .line 1660
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1661
    invoke-direct {v0, v7, v4, v5, v13}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1662
    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1665
    :cond_5
    iget v4, v13, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v17, v1, v4

    .line 1666
    iget v1, v13, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 1668
    invoke-static/range {p2 .. p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_6

    .line 1669
    sget-object v1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1670
    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    move/from16 v16, v3

    goto :goto_7

    .line 1672
    :cond_6
    sget-object v1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1673
    invoke-virtual {v0, v7, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1677
    :goto_7
    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int v5, v10, v1

    .line 1678
    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int v19, v11, v1

    .line 1679
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_8

    .line 1680
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v1, :cond_7

    .line 1681
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1682
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 1683
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v20, v2, v3

    .line 1684
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v22, v6

    move/from16 v6, v20

    move-object/from16 v23, v7

    move/from16 v7, v19

    move/from16 v20, v8

    move/from16 v8, v21

    .line 1681
    invoke-virtual/range {v1 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_8

    :cond_7
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v20, v8

    .line 1686
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1687
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 1688
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1689
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move/from16 v7, v19

    .line 1686
    invoke-virtual/range {v1 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto :goto_8

    :cond_8
    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v20, v8

    .line 1692
    iget-boolean v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v1, :cond_9

    .line 1693
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1694
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v6, v2, v3

    .line 1695
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    .line 1693
    invoke-virtual/range {v1 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto :goto_8

    .line 1697
    :cond_9
    iget-object v1, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1698
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1699
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    .line 1700
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    .line 1697
    invoke-virtual/range {v1 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    .line 1703
    :goto_8
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v13, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v14

    add-float v17, v17, v1

    .line 1705
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 1706
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v14

    sub-float v18, v18, v1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    :goto_9
    add-int/lit8 v8, v20, 0x1

    move/from16 v13, v22

    goto/16 :goto_5

    .line 1708
    :cond_a
    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1512(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1709
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getCrossSize()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recycleByLayoutState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 2

    .line 1322
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$500(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1325
    :cond_0
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromEnd(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V

    goto :goto_0

    .line 1329
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromStart(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V

    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 0

    :goto_0
    if-lt p3, p2, :cond_0

    .line 1452
    invoke-virtual {p0, p3, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAndRecycleViewAt(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycleFlexLinesFromEnd(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 7

    .line 1389
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 1398
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 1402
    :cond_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 1408
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v4, v0

    move v0, v1

    :goto_0
    if-ltz v0, :cond_7

    .line 1410
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 1414
    :cond_4
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromEnd(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1415
    iget v6, v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    invoke-virtual {p0, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_6

    if-gtz v2, :cond_5

    goto :goto_2

    .line 1424
    :cond_5
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1425
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v4, v0

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    move v0, v4

    .line 1432
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void
.end method

.method private recycleFlexLinesFromStart(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 8

    .line 1335
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1343
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 1347
    :cond_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 1351
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1354
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 1358
    :cond_4
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromStart(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1359
    iget v7, v4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLastIndex:I

    invoke-virtual {p0, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v7, v6, :cond_6

    .line 1364
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_5

    goto :goto_2

    .line 1368
    :cond_5
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1369
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v5, v2

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    move v2, v5

    .line 1376
    :goto_2
    invoke-direct {p0, p1, v1, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->recycleChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void
.end method

.method private resolveInfiniteAmount()V
    .locals 2

    .line 1803
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    goto :goto_0

    .line 1806
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 1815
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    return-void
.end method

.method private resolveLayoutDirection()V
    .locals 5

    .line 1016
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v0

    .line 1017
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1041
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1042
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_3

    :pswitch_0
    if-ne v0, v4, :cond_0

    move v3, v4

    .line 1034
    :cond_0
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1035
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_1

    .line 1036
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1038
    :cond_1
    iput-boolean v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_3

    :pswitch_1
    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1027
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1028
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_3

    .line 1029
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1031
    :cond_3
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_3

    :pswitch_2
    if-eq v0, v4, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1023
    :goto_1
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1024
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_3

    :pswitch_3
    if-ne v0, v4, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    .line 1019
    :goto_2
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1020
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_7

    move v3, v4

    :cond_7
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldMeasureChild(Landroid/view/View;IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .line 2367
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2368
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMeasurementCacheEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2369
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2370
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateAnchorFromChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 1151
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1156
    :cond_0
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 1160
    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V

    .line 1163
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1165
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1166
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1167
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1168
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1169
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    if-ge p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 1171
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1172
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_1

    .line 1173
    :cond_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    .line 1171
    :goto_1
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method private updateAnchorFromPendingState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)Z
    .locals 5

    .line 1072
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 1075
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_3

    .line 1084
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1085
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    aget v0, v0, v4

    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1086
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1087
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    .line 1088
    invoke-static {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result p1

    add-int/2addr p0, p1

    .line 1087
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1089
    invoke-static {p2, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1802(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1090
    invoke-static {p2, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return v4

    .line 1094
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_a

    .line 1095
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1097
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1098
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 1099
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    return v4

    .line 1102
    :cond_3
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1103
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_4

    .line 1105
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1106
    invoke-static {p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    return v4

    .line 1110
    :cond_4
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1111
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_5

    .line 1113
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1114
    invoke-static {p2, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    return v4

    .line 1117
    :cond_5
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1118
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1119
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 1120
    :cond_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 1117
    :goto_0
    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    goto :goto_1

    .line 1122
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    .line 1123
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1125
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 1126
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge p0, p1, :cond_8

    move v1, v4

    :cond_8
    invoke-static {p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1129
    :cond_9
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    :goto_1
    return v4

    .line 1135
    :cond_a
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p1, :cond_b

    .line 1136
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1137
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result p0

    sub-int/2addr p1, p0

    .line 1136
    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    goto :goto_2

    .line 1139
    :cond_b
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, p0

    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    :goto_2
    return v4

    .line 1076
    :cond_c
    :goto_3
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 1077
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_d
    :goto_4
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateAnchorFromPendingState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1053
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateAnchorFromChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 1064
    :cond_1
    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 p0, 0x0

    .line 1065
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1066
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return-void
.end method

.method private updateDirtyPosition(I)V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    .line 648
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 649
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 650
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 653
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-void

    .line 657
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 659
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 666
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 668
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 670
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 673
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :goto_0
    return-void
.end method

.method private updateFlexLines(I)V
    .locals 11

    .line 867
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 869
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 870
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    .line 871
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 877
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_2

    .line 878
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 885
    :goto_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 886
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 887
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    :goto_1
    move v6, v4

    goto :goto_3

    .line 889
    :cond_2
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    .line 896
    :goto_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 897
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    .line 898
    :cond_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    goto :goto_1

    .line 901
    :goto_3
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 902
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 904
    iget v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v2, v3, :cond_5

    if-eqz v5, :cond_8

    .line 906
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 919
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 921
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 922
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 923
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 926
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 924
    invoke-virtual/range {v2 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateHorizontalFlexLinesToIndex(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_4

    .line 928
    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 931
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 929
    invoke-virtual/range {v2 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateVerticalFlexLinesToIndex(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 933
    :goto_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 934
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 935
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->stretchViews()V

    .line 936
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 937
    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    aget v0, v0, v1

    .line 936
    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 938
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto/16 :goto_8

    .line 944
    :cond_8
    iget v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    if-eq v2, v3, :cond_9

    .line 945
    iget v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    move v10, v2

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    goto :goto_5

    .line 947
    :goto_6
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 948
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 949
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 954
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 955
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 956
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v0

    move v5, v1

    move v7, v10

    .line 955
    invoke-virtual/range {v2 .. v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_7

    .line 959
    :cond_a
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 960
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 961
    invoke-virtual/range {v2 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_7

    .line 966
    :cond_b
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 971
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 972
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 973
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v1

    move v5, v0

    move v7, v10

    .line 972
    invoke-virtual/range {v2 .. v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_7

    .line 976
    :cond_c
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 977
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 978
    invoke-virtual/range {v2 .. v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 982
    :goto_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 983
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {p1, v0, v1, v10}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 993
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {p0, v10}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->stretchViews(I)V

    :goto_8
    return-void
.end method

.method private updateLayoutState(II)V
    .locals 10

    .line 2062
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2063
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2066
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2068
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 2069
    iget-boolean v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ne p1, v4, :cond_6

    .line 2071
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2075
    :cond_1
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2076
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 2077
    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v8, v8, v7

    .line 2078
    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 2082
    invoke-direct {p0, p1, v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    .line 2083
    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2084
    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2500(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v8, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2085
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v7, v7, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 2086
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v7, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 2088
    :cond_2
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2089
    invoke-static {v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    aget v8, v8, v9

    .line 2088
    invoke-static {v7, v8}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :goto_1
    if-eqz v5, :cond_3

    .line 2093
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2094
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2095
    invoke-virtual {v7}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    add-int/2addr p1, v7

    .line 2094
    invoke-static {v5, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2096
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_2

    .line 2098
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2099
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2100
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr p1, v5

    .line 2099
    invoke-static {v3, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2103
    :goto_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    if-eq p1, v6, :cond_4

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2104
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_c

    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2105
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v3

    if-gt p1, v3, :cond_c

    .line 2109
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    sub-int v7, p2, p1

    .line 2110
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    if-lez v7, :cond_c

    if-eqz v0, :cond_5

    .line 2113
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2115
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 2113
    invoke-virtual/range {v3 .. v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_3

    .line 2117
    :cond_5
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2119
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 2117
    invoke-virtual/range {v3 .. v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 2121
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2122
    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 2121
    invoke-virtual {p1, v1, v2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 2123
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->stretchViews(I)V

    goto/16 :goto_6

    .line 2127
    :cond_6
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 2131
    :cond_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2132
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2133
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v1, v0

    .line 2134
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 2138
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    .line 2140
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2141
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_8

    move v1, v3

    :cond_8
    if-lez v1, :cond_9

    .line 2146
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 2149
    iget-object v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_4

    .line 2151
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2153
    :goto_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v1, :cond_a

    sub-int/2addr v1, v4

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz v5, :cond_b

    .line 2156
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2157
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2158
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr p1, v1

    .line 2157
    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2159
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_6

    .line 2161
    :cond_b
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2162
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 2163
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr p1, v1

    .line 2162
    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2166
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 1735
    :cond_0
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1737
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 1738
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1740
    :cond_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1741
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1740
    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1743
    :goto_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1744
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1745
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1746
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1747
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1748
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz p2, :cond_2

    .line 1750
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1751
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 1752
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 1753
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 1754
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1755
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1508(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1756
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result p1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2212(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :cond_2
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1775
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 1777
    :cond_0
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1779
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 1780
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1781
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1780
    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1783
    :cond_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 1784
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1783
    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1786
    :goto_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1787
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1788
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1789
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1790
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1791
    iget-object p3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz p2, :cond_2

    .line 1793
    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1794
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p3

    if-le p2, p3, :cond_2

    .line 1795
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1796
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1510(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1797
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result p1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$2220(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :cond_2
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 3

    .line 1922
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    .line 1923
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    return p0

    .line 1925
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-le v0, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canScrollVertically()Z
    .locals 4

    .line 1931
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1932
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 1934
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public checkLayoutParams(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 570
    instance-of p0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    return p0
.end method

.method public computeHorizontalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2237
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2272
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2318
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 549
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 552
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 554
    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2246
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollExtent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2281
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollOffset(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2327
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->computeScrollRange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 2498
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 2499
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 2483
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 2484
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .line 2532
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2533
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 2517
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2518
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public generateDefaultLayoutParams()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 560
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 565
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public getAlignContent()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getAlignItems()I
    .locals 0

    .line 336
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAlignItems:I

    return p0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    .line 496
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result p0

    .line 495
    invoke-static {p1, v0, p2, p3, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 490
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result p0

    .line 489
    invoke-static {p1, v0, p2, p3, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 0

    .line 393
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method public getFlexDirection()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return p0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFlexItemCount()I
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 382
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 383
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method public getFlexWrap()I
    .locals 0

    .line 298
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return p0
.end method

.method public getJustifyContent()I
    .locals 0

    .line 322
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    return p0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 505
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 506
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 507
    iget v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaxLine()I
    .locals 0

    .line 366
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mMaxLine:I

    return p0
.end method

.method getPositionToFlexLineIndex(I)I
    .locals 0

    .line 2566
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget p0, p0, p1

    return p0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 0

    .line 1881
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    return p0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSumOfCrossSize()I
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 516
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 518
    iget v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isLayoutRtl()Z
    .locals 0

    .line 1012
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    return p0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 1714
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 575
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1904
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 1905
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1910
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1911
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 1915
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAndRecycleAllViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1916
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onItemsAdded(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 613
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 614
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsMoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;III)V

    .line 639
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsRemoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 633
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 626
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 627
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 621
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onLayoutChildren(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 699
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    .line 700
    iput-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 701
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->resolveLayoutDirection()V

    .line 706
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 707
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 708
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 709
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 711
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 713
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 715
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$200(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$700(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_3

    .line 721
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 722
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateAnchorInfoForLayout(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 723
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$702(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 725
    :cond_3
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->detachAndScrapAttachedViews(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    .line 727
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 728
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_0

    .line 730
    :cond_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 738
    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateFlexLines(I)V

    .line 750
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fill(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 751
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 756
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v3, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 757
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fill(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 761
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    goto :goto_1

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 767
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v0, v3, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 768
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fill(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 772
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 775
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 776
    iget-object v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 777
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 779
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_2

    .line 781
    :cond_6
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 783
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Z)I

    :cond_7
    :goto_2
    return-void
.end method

.method public onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 999
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 1003
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 1004
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 1005
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1006
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 1007
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 1008
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/yftech/car/widget/media/flexbox/FlexLine;)V
    .locals 0

    .line 414
    sget-object p2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 415
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr p2, p0

    .line 417
    iget p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    add-int/2addr p0, p2

    iput p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 418
    iget p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr p0, p2

    iput p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr p2, p0

    .line 421
    iget p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    add-int/2addr p0, p2

    iput p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 422
    iget p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr p0, p2

    iput p0, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/yftech/car/widget/media/flexbox/FlexLine;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 598
    instance-of v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 599
    check-cast p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    .line 600
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$1;)V

    return-object v0

    .line 583
    :cond_0
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 584
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 586
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 587
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$202(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 588
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 589
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    .line 588
    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$302(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;I)I

    goto :goto_0

    .line 591
    :cond_1
    invoke-static {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)V

    :goto_0
    return-object v0
.end method

.method public scrollHorizontallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1941
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1946
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    .line 1947
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2412(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1948
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    return p1

    .line 1942
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 1943
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1858
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 1859
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1860
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1861
    iget-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 1863
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1956
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    .line 1957
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1962
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    .line 1963
    iget-object p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2412(Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1964
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    return p1

    .line 1958
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 1959
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public setAlignContent(I)V
    .locals 0

    .line 359
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAlignItems(I)V
    .locals 2

    .line 341
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    .line 342
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 344
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 346
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 347
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 287
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 289
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 290
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 291
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 307
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v0, p1, :cond_2

    .line 308
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 310
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 312
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 314
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Lcom/yftech/car/widget/media/recyclerview/widget/OrientationHelper;

    .line 315
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_2
    return-void

    .line 304
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJustifyContent(I)V
    .locals 1

    .line 327
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    .line 328
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 329
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    .line 371
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mMaxLine:I

    if-eq v0, p1, :cond_0

    .line 372
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 373
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 1899
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public smoothScrollToPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1869
    new-instance p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearSmoothScroller;

    .line 1870
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1871
    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1872
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->startSmoothScroll(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
