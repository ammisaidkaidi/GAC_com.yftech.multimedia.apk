.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 13113
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    .line 13118
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 13119
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 13120
    iput-object v1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13124
    :cond_0
    iput-object v1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13125
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13126
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13127
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
