.class Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;
.super Ljava/lang/Object;
.source "PathLayoutManager.java"

# interfaces
.implements Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/PathLayoutManager;-><init>(Landroid/graphics/Path;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$000(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$100(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$State;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$000(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$100(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$000(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$000(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$1;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-virtual {p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method
