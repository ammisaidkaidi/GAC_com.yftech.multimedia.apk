.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;
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

    .line 411
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 419
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_2

    .line 424
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    return-void

    .line 427
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
