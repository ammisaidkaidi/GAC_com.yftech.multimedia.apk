.class public Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final mDeleteOnClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteShow:Z

.field private final mInitDeleteShow:Z

.field private final mItemLayoutId:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/list/SearchHistoryList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    .line 81
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;-><init>(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;-><init>(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 30
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 31
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mList:Ljava/util/List;

    .line 32
    iput p3, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mItemLayoutId:I

    .line 33
    iput-boolean p4, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    .line 34
    iput-boolean p4, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mInitDeleteShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Lcom/yftech/car/widget/media/list/SearchHistoryList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isDeleteShow()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    return p0
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->setItemData(Ljava/lang/String;I)V

    .line 65
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->setDeleteVisibility(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;->onItemSearch(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mItemLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mInitDeleteShow:Z

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 46
    :cond_0
    new-instance p2, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;

    invoke-direct {p2, p1}, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;-><init>(Landroid/view/View;)V

    .line 48
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->setDeleteOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;

    move-result-object p0

    return-object p0
.end method

.method public setDeleteShow(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mDeleteShow:Z

    .line 55
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnSearchHistoryItemClickListener(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->mListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    return-void
.end method
