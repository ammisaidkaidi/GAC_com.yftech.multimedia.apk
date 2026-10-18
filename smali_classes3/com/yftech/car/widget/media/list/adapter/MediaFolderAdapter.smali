.class public Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "MediaFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENDING:I = -0x65

.field private static final HEAD:I = -0x64


# instance fields
.field private final mEndingItemLayoutId:I

.field private mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

.field private final mHeadItemLayoutId:I

.field private final mItemFolderLayoutId:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

.field private mOnItemFolderListener:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

.field private mRootEndingView:Landroid/view/View;

.field private mRootHeadView:Landroid/view/View;

.field private final mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private final mUsbListEmptyLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    .line 214
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$1;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 225
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

    .line 67
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_head_item_layout_id:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    .line 69
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_item_folder_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mItemFolderLayoutId:I

    .line 71
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_ending_item_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    .line 73
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_list_empty_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mUsbListEmptyLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mOnItemFolderListener:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

    return-object p0
.end method


# virtual methods
.method public getDataListSize()I
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEndingLayout(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 88
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootEndingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootEndingView:Landroid/view/View;

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootEndingView:Landroid/view/View;

    return-object p0
.end method

.method public getFolderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getHeadLayout(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 78
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootHeadView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootHeadView:Landroid/view/View;

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootHeadView:Landroid/view/View;

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 244
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mUsbListEmptyLayoutId:I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 250
    :cond_1
    iget v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    if-eq v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 254
    :cond_2
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    if-eq p0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 99
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    const/16 p0, -0x64

    return p0

    .line 102
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_1

    const/16 p0, -0x65

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isEmptyHeadItemLayoutId()Z
    .locals 1

    .line 274
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyItemFolderLayoutId()Z
    .locals 1

    .line 270
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mItemFolderLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 207
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 208
    instance-of v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 210
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;I)V
    .locals 4
    .param p1    # Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 188
    iget v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mHeadItemLayoutId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, p2, -0x1

    goto :goto_0

    :cond_1
    move v1, p2

    .line 195
    :goto_0
    iget v3, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mEndingItemLayoutId:I

    if-eq v3, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    return-void

    .line 200
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFolder;

    invoke-virtual {p1, p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setMediaFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    check-cast p1, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getDataListSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 135
    iget p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mUsbListEmptyLayoutId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mUsbListEmptyLayoutId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mItemFolderLayoutId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootHeadView:Landroid/view/View;

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootEndingView:Landroid/view/View;

    .line 155
    :goto_0
    new-instance p2, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;

    invoke-direct {p2, p1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;-><init>(Landroid/view/View;)V

    if-eqz v1, :cond_2

    .line 157
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setOnClickFolderListener(Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;)V

    :cond_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootHeadView:Landroid/view/View;

    .line 301
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mRootEndingView:Landroid/view/View;

    return-void
.end method

.method public setOnItemFolderListener(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mOnItemFolderListener:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

    return-void
.end method

.method public updateList(Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 283
    :try_start_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 286
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->notifyDataSetChanged()V

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 288
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
