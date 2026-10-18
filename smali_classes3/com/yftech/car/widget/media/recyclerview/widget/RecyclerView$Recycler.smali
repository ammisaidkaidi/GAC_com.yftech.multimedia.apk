.class public final Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 6089
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6090
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6091
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6093
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 6095
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 6096
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    .line 6098
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6099
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6497
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6498
    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6499
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6501
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 6504
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    if-nez v0, :cond_1

    return-void

    .line 6507
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p0

    .line 6508
    instance-of v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v0, :cond_2

    .line 6511
    move-object v0, p0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 6512
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->saveOriginalDelegate(Landroid/view/View;)V

    .line 6514
    :cond_2
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_3
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 6525
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 6526
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6527
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6528
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 6535
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    .line 6536
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6537
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6539
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    .line 6540
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6541
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6519
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6520
    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 9
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6197
    iput-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 6198
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6199
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    .line 6200
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 6201
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-wide v3, v7

    move-wide v5, p4

    .line 6202
    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6206
    :cond_0
    iget-object p4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p4, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 6207
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 6208
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 6209
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6210
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6211
    iput p3, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6722
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6723
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6724
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6725
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    .line 6727
    instance-of v3, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v3, :cond_0

    .line 6728
    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 6730
    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->getAndRemoveOriginalDelegateForItem(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6733
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6736
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6738
    :cond_2
    iput-object v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 6739
    iput-object v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6740
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6232
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6238
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 6239
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 6244
    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 6246
    iget-object p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6249
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6250
    iget-object p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6251
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6252
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6253
    iget-object p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6255
    :cond_1
    move-object p0, p2

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    :goto_0
    const/4 p2, 0x1

    .line 6258
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6259
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6260
    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void

    .line 6240
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistency detected. Invalid item position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(offset:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ").state:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 6242
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6234
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6236
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 6112
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6113
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .locals 4

    .line 7117
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7119
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7120
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7122
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 7124
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7126
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7127
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 7129
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 6811
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6812
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6813
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 6282
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 6286
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 6289
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p0

    return p0

    .line 6283
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 6284
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6965
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 6966
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6969
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6971
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6973
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 6974
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6976
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    if-eqz v0, :cond_3

    .line 6977
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->removeViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 6820
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6825
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6826
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6827
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6832
    :cond_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6833
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 6834
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6835
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 6837
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6838
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6839
    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 7075
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 7076
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 7078
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method getScrapCount()I
    .locals 0

    .line 6803
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 6144
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object p0
.end method

.method getScrapOrCachedViewForId(JIZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6911
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6913
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6914
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6915
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 6916
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6917
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6926
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/16 p1, 0xe

    .line 6927
    invoke-virtual {v1, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 6936
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6937
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6938
    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6944
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6946
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6947
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6948
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 6950
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 6954
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6856
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6860
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6861
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6862
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p0, 0x20

    .line 6863
    invoke-virtual {v3, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 6869
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6873
    invoke-static {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 6874
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6875
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 6880
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6881
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 p0, 0x2020

    .line 6882
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    .line 6877
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6878
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6889
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 6891
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6894
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 6895
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_5

    .line 6897
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 0

    .line 6807
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 6308
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 6312
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6316
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 7135
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7137
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7138
    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 7140
    iput-boolean v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 7101
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7103
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 7105
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    const/4 v3, 0x0

    .line 7106
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7110
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7112
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_3
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 7018
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7020
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_0

    .line 7021
    iget v4, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 7027
    invoke-virtual {v3, p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    move v0, p2

    .line 6999
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 7001
    iget-object v6, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_3

    .line 7002
    iget v7, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v0, :cond_3

    iget v7, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v7, v1, :cond_1

    goto :goto_2

    .line 7005
    :cond_1
    iget v7, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 7006
    invoke-virtual {v6, v7, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 7008
    :cond_2
    invoke-virtual {v6, v2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 7040
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 7042
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 7044
    iget v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 7050
    invoke-virtual {v2, v3, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 7051
    :cond_0
    iget v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 7053
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7054
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0

    .line 6984
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 6985
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 1

    .line 6749
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 6750
    iput-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    .line 6751
    iput-boolean v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6752
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6753
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 1

    .line 6588
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6590
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6592
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6593
    sget-boolean v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_1

    .line 6594
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2

    .line 6613
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    .line 6617
    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6618
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6558
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6559
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6560
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6562
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6563
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 6564
    :cond_1
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6565
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6567
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6582
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6583
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    return-void
.end method

.method recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 6627
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 6634
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6640
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6646
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    .line 6647
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 6649
    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 6656
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_5

    .line 6657
    :cond_3
    :goto_1
    iget v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    .line 6658
    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6663
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6664
    iget v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 6665
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    .line 6670
    :cond_4
    sget-boolean v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v5, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6672
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 6676
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v4, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6677
    iget-object v5, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    .line 6684
    :cond_7
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_9

    .line 6688
    invoke-virtual {p0, p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    move v1, v2

    .line 6706
    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewInfoStore:Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;->removeViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    .line 6708
    iput-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 6709
    iput-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    :cond_a
    return-void

    .line 6641
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6643
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6635
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6637
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6628
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6630
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6631
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scrapView(Landroid/view/View;)V
    .locals 2

    .line 6766
    invoke-static {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0xc

    .line 6767
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6768
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6777
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 6780
    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6781
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6769
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6770
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6772
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 6774
    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6775
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method setRecycledViewPool(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 7065
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 7066
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 7068
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 7069
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7070
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0

    .line 7061
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0

    .line 6122
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6123
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_18

    .line 6339
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_18

    .line 6347
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 6348
    invoke-virtual/range {p0 .. p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    .line 6353
    invoke-virtual/range {p0 .. p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6355
    invoke-virtual {v6, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    .line 6360
    invoke-virtual {v1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6361
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6362
    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v9, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6363
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 6364
    :cond_2
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6365
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6367
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_10

    .line 6376
    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v5, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v5

    if-ltz v5, :cond_f

    .line 6377
    iget-object v9, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-lt v5, v9, :cond_7

    goto/16 :goto_4

    .line 6384
    :cond_7
    iget-object v9, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v9, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 6386
    iget-object v10, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6387
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 6391
    iput v5, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v4, v7

    :cond_8
    if-nez v1, :cond_b

    .line 6395
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;

    if-eqz v0, :cond_b

    .line 6398
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 6399
    invoke-virtual {v0, v6, v3, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6401
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 6406
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 6407
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6409
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6403
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6405
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    if-nez v1, :cond_c

    .line 6418
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 6420
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 6421
    sget-boolean v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v0, :cond_c

    .line 6422
    invoke-direct {v6, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_c
    if-nez v1, :cond_10

    .line 6427
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_d

    .line 6428
    iget-object v10, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    .line 6429
    invoke-virtual/range {v10 .. v15}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v5

    if-nez v5, :cond_d

    return-object v2

    .line 6433
    :cond_d
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v5, v9}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6434
    sget-boolean v5, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_e

    .line 6436
    iget-object v5, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 6438
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 6442
    :cond_e
    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 6443
    iget-object v5, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move-object v10, v2

    goto :goto_5

    :cond_f
    :goto_4
    return-object v2

    :cond_10
    move-object v10, v1

    :goto_5
    move v9, v4

    if-eqz v9, :cond_11

    .line 6453
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2000

    .line 6454
    invoke-virtual {v10, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6455
    invoke-virtual {v10, v8, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6456
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_11

    .line 6458
    invoke-static {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 6460
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 6461
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 6460
    invoke-virtual {v1, v2, v10, v0, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 6462
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v10, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 6467
    :cond_11
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6469
    iput v3, v10, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_6

    .line 6470
    :cond_12
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v10}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    :goto_6
    move v0, v8

    goto :goto_8

    .line 6476
    :cond_14
    :goto_7
    iget-object v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 6477
    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v0

    .line 6480
    :goto_8
    iget-object v1, v10, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_15

    .line 6483
    iget-object v1, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6484
    iget-object v2, v10, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 6485
    :cond_15
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 6486
    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6487
    iget-object v2, v10, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 6489
    :cond_16
    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6491
    :goto_9
    iput-object v10, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_17

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    move v7, v8

    .line 6492
    :goto_a
    iput-boolean v7, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-object v10

    .line 6340
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    .line 6341
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 6342
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6792
    iget-boolean v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    .line 6793
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6795
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    .line 6797
    iput-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    const/4 p0, 0x0

    .line 6798
    iput-boolean p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6799
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method updateViewCacheSize()V
    .locals 3

    .line 6127
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6128
    :goto_0
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 6131
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 6132
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v1, v2, :cond_1

    .line 6133
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 6158
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6163
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    return p0

    .line 6165
    :cond_0
    iget v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 6170
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6172
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    iget v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 6173
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 6177
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6178
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    iget p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method viewRangeUpdate(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 7083
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 7085
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 7090
    :cond_0
    iget v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    .line 7092
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7093
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
