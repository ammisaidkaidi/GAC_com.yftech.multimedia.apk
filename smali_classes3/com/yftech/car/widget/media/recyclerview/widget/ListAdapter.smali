.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mListener:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;

    .line 115
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterListUpdateCallback;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ListUpdateCallback;Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    .line 116
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mListener:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->addListListener(Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;)V

    return-void
.end method

.method protected constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 3
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mListener:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;

    .line 108
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterListUpdateCallback;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 109
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig$Builder;->build()Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/ListUpdateCallback;Lcom/yftech/car/widget/media/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    .line 110
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mListener:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->addListListener(Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer$ListListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ListAdapter;->mDiffer:Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
