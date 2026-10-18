.class public Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "ListOneLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSearchLoadingLayoutId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    iput p1, p0, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->mSearchLoadingLayoutId:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isExistsLayoutId()Z
    .locals 1

    .line 19
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->mSearchLoadingLayoutId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->mSearchLoadingLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 25
    new-instance p1, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter$ListOneLayoutHolder;

    move-result-object p0

    return-object p0
.end method
