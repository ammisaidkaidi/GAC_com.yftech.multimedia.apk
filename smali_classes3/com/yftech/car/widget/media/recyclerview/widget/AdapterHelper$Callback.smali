.class interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$Callback;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract findViewHolder(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract markViewHoldersUpdated(IILjava/lang/Object;)V
.end method

.method public abstract offsetPositionsForAdd(II)V
.end method

.method public abstract offsetPositionsForMove(II)V
.end method

.method public abstract offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract onDispatchFirstPass(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V
.end method

.method public abstract onDispatchSecondPass(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V
.end method
