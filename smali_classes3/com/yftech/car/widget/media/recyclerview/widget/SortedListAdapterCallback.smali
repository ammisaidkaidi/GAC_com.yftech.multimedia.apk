.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;
.super Lcom/yftech/car/widget/media/recyclerview/widget/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yftech/car/widget/media/recyclerview/widget/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/SortedList$Callback;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
