.class public final Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ConcatAdapter"


# instance fields
.field private final mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;",
            "Ljava/util/List<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 125
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 127
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->addAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;",
            "[",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 102
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 88
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->addAdapter(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public addAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->addAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public findRelativeAdapterPositionIn(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getLocalAdapterPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p0

    return p0
.end method

.method public getAdapters()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getCopyOfAdapters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getTotalCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method internalSetStateRestorationPolicy(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public removeAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->mController:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->removeAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public setHasStableIds(Z)V
    .locals 0

    .line 199
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateRestorationPolicy(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
