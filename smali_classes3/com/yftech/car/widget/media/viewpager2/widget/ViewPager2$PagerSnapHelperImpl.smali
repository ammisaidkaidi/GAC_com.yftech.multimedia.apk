.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;
.super Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerSnapHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public findSnapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/PagerSnapHelper;->findSnapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
