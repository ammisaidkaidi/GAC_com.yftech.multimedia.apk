.class public Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "MediaDataDirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBaseRootDirectoryPath:Ljava/lang/String;

.field private mDirectoryPath:Ljava/lang/String;

.field private final mLayoutItemId:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

.field private mOnItemPathLister:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

.field private mRootDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mBaseRootDirectoryPath:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    .line 51
    iput p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mLayoutItemId:I

    .line 52
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mRootDirectory:Ljava/lang/String;

    .line 53
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mRootDirectory:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "\u6839\u76ee\u5f55"

    .line 54
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mRootDirectory:Ljava/lang/String;

    :cond_0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    return-void

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataDirectoryList: directory_item_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mOnItemPathLister:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    return-object p0
.end method


# virtual methods
.method public getBaseRootDirectoryPath()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mBaseRootDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentDirectoryPath()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRootDirectory()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mRootDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->setDirectoryText(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    check-cast p1, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mLayoutItemId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;

    invoke-direct {p2, p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;-><init>(Landroid/view/View;Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)V

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->setOnItemClickPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;

    move-result-object p0

    return-object p0
.end method

.method public setOnItemPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mOnItemPathLister:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    return-void
.end method

.method public updateDirectoryList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 103
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mBaseRootDirectoryPath:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mDirectoryPath:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 106
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mDirectoryPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, "/"

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "/"

    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 123
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
