.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->animateAppearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processDisappeared(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 657
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 658
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->animateDisappearance(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processPersistent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 671
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 677
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->animatePersistence(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 680
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unused(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$4;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mRecycler:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method
