.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;
.super Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Landroid/content/Context;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    .line 1063
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;[I)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1093
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1096
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;[I)V

    return-void

    .line 1099
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result p0

    mul-int/2addr p0, v0

    const/4 p1, 0x0

    .line 1100
    aput p0, p2, p1

    const/4 p1, 0x1

    .line 1101
    aput p0, p2, p1

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1078
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1079
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onLmInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1087
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p3, p4}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onLmInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public performAccessibilityAction(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1069
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesLmPerformAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onLmPerformAccessibilityAction(I)Z

    move-result p0

    return p0

    .line 1072
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public requestChildRectangleOnScreen(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
