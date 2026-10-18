.class interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore$ProcessCallback;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProcessCallback"
.end annotation


# virtual methods
.method public abstract processAppeared(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processDisappeared(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processPersistent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unused(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method
