.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

.field private mStateRestorationPolicy:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7191
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    .line 7192
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 7193
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7342
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7344
    iput p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7345
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7346
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_1
    const/16 v2, 0x207

    .line 7348
    invoke-virtual {p1, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    const-string v2, "RV OnBindView"

    .line 7351
    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7353
    :cond_2
    iput-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 7354
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    if-eqz v0, :cond_4

    .line 7356
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 7357
    iget-object p0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 7358
    instance-of p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_3

    .line 7359
    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7361
    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_4
    return-void
.end method

.method canRestoreState()Z
    .locals 3

    .line 7830
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$7;->$SwitchMap$com$yftech$car$widget$media$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 7834
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 7311
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7312
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 7313
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7318
    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7321
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p0

    .line 7314
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 7321
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 7322
    throw p0
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

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStateRestorationPolicy()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7819
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object p0
.end method

.method public final hasObservers()Z
    .locals 0

    .line 7516
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result p0

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 7424
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 7601
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 1

    .line 7616
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7643
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 1

    .line 7706
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 0

    .line 7721
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 0

    .line 7660
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7690
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 0

    .line 7739
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 0

    .line 7772
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 1

    .line 7755
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7271
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7535
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 7390
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7394
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void

    .line 7391
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateRestorationPolicy(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7806
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7807
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7548
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
