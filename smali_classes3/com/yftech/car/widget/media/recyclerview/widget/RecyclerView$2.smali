.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 609
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 615
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method
