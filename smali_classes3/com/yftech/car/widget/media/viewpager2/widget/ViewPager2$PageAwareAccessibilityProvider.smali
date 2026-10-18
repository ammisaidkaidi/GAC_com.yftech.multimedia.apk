.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageAwareAccessibilityProvider"
.end annotation


# instance fields
.field private final mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field final synthetic this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1401
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;)V

    .line 1402
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1413
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    return-void
.end method

.method private addCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 1619
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1621
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_0

    .line 1624
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    move v3, v1

    move v1, p0

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    move v1, p0

    .line 1629
    :goto_0
    invoke-static {p0, v1, v2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 1632
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method private addCollectionItemInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .line 1636
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1639
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 1640
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :cond_1
    move v4, v1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1643
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    .line 1645
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method private addScrollActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1649
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1653
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1654
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1657
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v1, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v1, :cond_2

    const/16 v1, 0x2000

    .line 1658
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1660
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_3

    const/16 p0, 0x1000

    .line 1661
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1663
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public handlesGetAccessibilityClassName()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1000

    if-ne p1, p0, :cond_0

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

.method public onAttachAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1466
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    if-eqz p1, :cond_0

    .line 1468
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public onDetachAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1475
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public onGetAccessibilityClassName()Ljava/lang/String;
    .locals 0

    .line 1453
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0

    .line 1454
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onInitialize(Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/widget/CompositeOnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x2

    .line 1429
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1432
    new-instance p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 1439
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1441
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1504
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1505
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1507
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addScrollActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method onLmInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1514
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addCollectionItemInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1525
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x2000

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 1530
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1531
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    .line 1532
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    return v0

    .line 1526
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onRestorePendingState()V
    .locals 0

    .line 1461
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    return-void
.end method

.method public onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1538
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1539
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSetLayoutDirection()V
    .locals 0

    .line 1499
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    return-void
.end method

.method public onSetNewCurrentItem()V
    .locals 0

    .line 1486
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    return-void
.end method

.method public onSetOrientation()V
    .locals 0

    .line 1481
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    return-void
.end method

.method public onSetUserInputEnabled()V
    .locals 2

    .line 1491
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1493
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method setCurrentItemFromAccessibilityCommand(I)V
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZZ)V

    :cond_0
    return-void
.end method

.method updatePageAccessibilityActions()V
    .locals 8

    .line 1558
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    .line 1561
    sget v1, Lcom/yftech/car/widget/media/R$id;->accessibilityActionPageLeft:I

    .line 1563
    sget v2, Lcom/yftech/car/widget/media/R$id;->accessibilityActionPageRight:I

    .line 1565
    sget v3, Lcom/yftech/car/widget/media/R$id;->accessibilityActionPageUp:I

    .line 1567
    sget v4, Lcom/yftech/car/widget/media/R$id;->accessibilityActionPageDown:I

    .line 1569
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1570
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1571
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1572
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1574
    iget-object v5, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1578
    :cond_0
    iget-object v5, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1583
    :cond_1
    iget-object v6, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 1587
    :cond_2
    iget-object v6, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    .line 1588
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v3, :cond_4

    move v1, v2

    .line 1592
    :cond_4
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v2, v2, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    .line 1593
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v4, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v2, v7, v3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1597
    :cond_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v2, v2, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v2, :cond_8

    .line 1598
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v2, v7, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    goto :goto_1

    .line 1603
    :cond_6
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v1, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 1604
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v4, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v1, v7, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1608
    :cond_7
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v1, v1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v1, :cond_8

    .line 1609
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v3, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v1, v7, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_8
    :goto_1
    return-void
.end method
