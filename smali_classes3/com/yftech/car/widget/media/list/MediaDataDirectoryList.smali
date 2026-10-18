.class public Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "MediaDataDirectoryList.java"


# instance fields
.field private mDirectoryInvisible:Z

.field private mDirectoryScrollTo:Z

.field private mDirectoryVisible:Z

.field private mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private mMediaDataListId:I

.field private myAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 71
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_root_directory:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_item_layout_id:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->myAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    .line 77
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_media_data_list_id:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mMediaDataListId:I

    .line 79
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_directory_invisible:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryInvisible:Z

    .line 80
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_directory_visible:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryVisible:Z

    .line 81
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataDirectoryList_directory_scrollTo_position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryScrollTo:Z

    .line 83
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_span_count:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 87
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_orientation:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-lez v0, :cond_1

    if-le v0, v1, :cond_0

    .line 91
    new-instance p2, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {p2, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 96
    :cond_1
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_left:I

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 97
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_top:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 98
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_right:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 99
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_bottom:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 101
    new-instance p2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList$1;

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList$1;-><init>(Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;FFFF)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 114
    new-instance p2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList$2;

    invoke-direct {p2, p0, p1, v2, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList$2;-><init>(Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 121
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 126
    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public isDirectoryInvisible()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryInvisible:Z

    return p0
.end method

.method public isDirectoryVisible()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryVisible:Z

    return p0
.end method

.method public isMediaDataListId(I)Z
    .locals 1

    .line 137
    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mMediaDataListId:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mMediaDataListId:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 143
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->myAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public setDirectoryPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->myAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->updateDirectoryList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 149
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mDirectoryScrollTo:Z

    if-eqz p2, :cond_0

    .line 150
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setOnItemPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->myAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->setOnItemPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V

    return-void
.end method
