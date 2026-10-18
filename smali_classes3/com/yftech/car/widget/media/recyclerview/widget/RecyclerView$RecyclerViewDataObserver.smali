.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 5707
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 5712
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5713
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5715
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 5716
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5717
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 5723
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5724
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5725
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 5731
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5732
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5733
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 5747
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5748
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5749
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 5739
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5740
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5741
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 1

    .line 5764
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 5770
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 5771
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5772
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .line 5754
    sget-boolean v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5755
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5757
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5758
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method
