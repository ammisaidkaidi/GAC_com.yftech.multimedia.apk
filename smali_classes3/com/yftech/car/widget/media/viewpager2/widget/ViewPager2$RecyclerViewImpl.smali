.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1028
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    .line 1029
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesRvGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRvGetAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1038
    :cond_0
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1043
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1044
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1045
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget v0, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1046
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
