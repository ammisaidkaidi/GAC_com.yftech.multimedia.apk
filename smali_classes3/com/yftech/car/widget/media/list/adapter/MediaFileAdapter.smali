.class public Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "MediaFileAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;,
        Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;,
        Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$EmptyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final ENDING:I = -0x65

.field private static final HEAD:I = -0x64

.field private static final TAG:Ljava/lang/String; = "MediaFileAdapter"


# instance fields
.field private isCheckBox:Z

.field private isDirectory:Z

.field public longClickListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;

.field private final mCollectListEmptyLayoutId:I

.field private mCurrentTime:J

.field private final mEndingItemLayoutId:I

.field private mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadItemLayoutId:I

.field private final mItemDateLayoutId:I

.field private final mItemDirectoryLayoutId:I

.field private final mItemFileLayoutId:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyDataSetChangedTime:J

.field private final mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

.field private mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

.field private final mPlayListEmptyLayoutId:I

.field private mRootEndingView:Landroid/view/View;

.field private mRootHeadView:Landroid/view/View;

.field private final mSearchListEmptyLayoutId:I

.field private mSearchText:Ljava/lang/String;

.field private final mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private final mUsbListEmptyLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isDirectory:Z

    .line 86
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    .line 97
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 531
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    .line 109
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_head_item_layout_id:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    .line 111
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_item_file_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemFileLayoutId:I

    .line 113
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_item_date_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDateLayoutId:I

    .line 115
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_item_directory_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDirectoryLayoutId:I

    .line 117
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_ending_item_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    .line 119
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_list_empty_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mUsbListEmptyLayoutId:I

    .line 121
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_collect_list_empty_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCollectListEmptyLayoutId:I

    .line 123
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_play_list_empty_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mPlayListEmptyLayoutId:I

    .line 125
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_search_empty_layout_id:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchListEmptyLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;J)J
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mNotifyDataSetChangedTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;J)J
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    return-object p0
.end method


# virtual methods
.method public deleteDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 663
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 664
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->deleteMediaFileList(Ljava/util/List;)V

    return-object v0
.end method

.method public equalsFileList(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 696
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, -0xb

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 706
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    if-eq v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_4

    return v0

    :cond_4
    move v1, v0

    move v3, v1

    .line 718
    :goto_1
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 719
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 720
    invoke-virtual {v5}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v6

    if-eq v6, v4, :cond_6

    .line 721
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 722
    invoke-virtual {v5}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 734
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne v3, p0, :cond_8

    if-ne v3, v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getDataListSize()I
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEndingLayout(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 140
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootEndingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootEndingView:Landroid/view/View;

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootEndingView:Landroid/view/View;

    return-object p0
.end method

.method public getHeadLayout(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 130
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootHeadView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootHeadView:Landroid/view/View;

    .line 136
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootHeadView:Landroid/view/View;

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getMediaListType()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 431
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mUsbListEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v2

    .line 426
    :pswitch_0
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchListEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v2

    .line 421
    :pswitch_1
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mPlayListEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v2

    .line 416
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCollectListEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 442
    :cond_2
    iget v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    if-eq v2, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 446
    :cond_3
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    if-eq p0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 151
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    const/16 p0, -0x64

    return p0

    .line 154
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p0, -0x65

    return p0

    .line 160
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    if-eq v0, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p0

    const/16 p1, -0xb

    if-ne p0, p1, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getMediaListType()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-nez v0, :cond_0

    const/4 p0, 0x6

    return p0

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->getMediaListType()I

    move-result p0

    return p0
.end method

.method public getSearchFlags()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->getSearchFlags()I

    move-result p0

    return p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedPosition(J)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 391
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 394
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 395
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getSelectedPosition(Lcom/yftech/car/media/data/entity/MediaFile;)I
    .locals 9

    .line 371
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v2, v1

    .line 373
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 375
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 376
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, -0x1

    if-ne v4, v5, :cond_1

    .line 377
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    if-eq p0, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    return v2

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v7

    cmp-long v3, v4, v7

    if-nez v3, :cond_3

    .line 382
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    if-eq p0, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getSelectedSize(Z)J
    .locals 5

    .line 631
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 632
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public isAllSelected()Z
    .locals 7

    .line 646
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 647
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 653
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v3

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public isCheckBox()Z
    .locals 0

    .line 560
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    return p0
.end method

.method public isEmptyHeadItemLayoutId()Z
    .locals 1

    .line 478
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyItemDateLayoutId()Z
    .locals 1

    .line 474
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDateLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyItemDirectoryLayoutId()Z
    .locals 1

    .line 466
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDirectoryLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyItemFileLayoutId()Z
    .locals 1

    .line 470
    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemFileLayoutId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChangedList()V
    .locals 8

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 675
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iget-wide v4, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mNotifyDataSetChangedTime:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    monitor-enter v2

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    .line 679
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    iput-wide v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mNotifyDataSetChangedTime:J

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 679
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 682
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 350
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 351
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 352
    instance-of v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 354
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mGridManager:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSpanSizeLookup:Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;I)V
    .locals 4
    .param p1    # Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 297
    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 304
    :goto_0
    iget v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mEndingItemLayoutId:I

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_2

    return-void

    .line 308
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 310
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    const/16 v2, -0xb

    if-ne v1, v2, :cond_3

    .line 311
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setDateTime(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_2

    .line 313
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->isCheckBox()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_5

    .line 315
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    if-eqz p0, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setCheckBoxVisibility(I)V

    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setCheckBoxVisibility(I)V

    .line 320
    :cond_6
    :goto_1
    invoke-virtual {p1, p2, v0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    check-cast p1, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataListSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string p2, "MediaFileAdapter"

    const-string v0, "onCreateViewHolder: list is Empty"

    .line 198
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getMediaListType()I

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 220
    iget p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mUsbListEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mUsbListEmptyLayoutId:I

    invoke-virtual {p2, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 215
    :pswitch_0
    iget p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchListEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchListEmptyLayoutId:I

    invoke-virtual {p2, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 210
    :pswitch_1
    iget p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mPlayListEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mPlayListEmptyLayoutId:I

    invoke-virtual {p2, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_0
    iget p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCollectListEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    const-string p2, "MediaFileAdapter"

    const-string v0, "onCreateViewHolder: COLLECT"

    .line 205
    invoke-static {p2, v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mCollectListEmptyLayoutId:I

    invoke-virtual {p2, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 227
    new-instance p0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 229
    :cond_2
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_3
    const/16 v0, -0xb

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_1

    .line 240
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isDirectory:Z

    if-eqz p2, :cond_4

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDirectoryLayoutId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemFileLayoutId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 246
    :goto_1
    new-instance p2, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p2, p0, p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setOnFileItemClickListener(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;)V

    .line 251
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;-><init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2

    .line 233
    :pswitch_2
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootHeadView:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 235
    :pswitch_3
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootEndingView:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 237
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mItemDateLayoutId:I

    invoke-virtual {p2, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 238
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;-><init>(Landroid/view/View;Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_3
        :pswitch_2
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

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    move-result-object p0

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 565
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    .line 566
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    if-nez p1, :cond_0

    .line 567
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    const-string v2, "MediaFileAdapter"

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick: file file name=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",tab == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 569
    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    .line 573
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 687
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootHeadView:Landroid/view/View;

    .line 688
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mRootEndingView:Landroid/view/View;

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->removeItemDecorationAt(I)V

    .line 342
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public setAllSelectedStatus(Z)V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 620
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 621
    :cond_1
    invoke-virtual {v1, p1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    .line 625
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    return-void
.end method

.method public setCancelCheckBox()V
    .locals 6

    .line 578
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    .line 580
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    const-string v3, "MediaFileAdapter"

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLongClick: file file name=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",tab == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v2, v0}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    :cond_1
    return-void
.end method

.method public setCheckBox(Z)Z
    .locals 7

    .line 590
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 591
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    .line 595
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    const-string v4, "MediaFileAdapter"

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick: file file name=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",tab == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {v3, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    goto :goto_1

    :cond_1
    const-string v1, "MediaFileAdapter"

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCheckBox: checkBox=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    .line 602
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    return v0
.end method

.method public setLongClickListener(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->longClickListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;

    return-void
.end method

.method public setOnItemFileListener(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public updateCheckBoxStatus()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 610
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox:Z

    invoke-virtual {v1, v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onCheckBoxStatus(IZ)V

    :cond_2
    return-void
.end method

.method public updateDirectoryList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)Z"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 484
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isDirectory:Z

    .line 491
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setCancelCheckBox()V

    .line 495
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 498
    :cond_2
    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;Z)Z"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 508
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 512
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_2
    if-eqz p1, :cond_3

    .line 515
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 518
    :cond_3
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isDirectory:Z

    .line 519
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setCancelCheckBox()V

    .line 523
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz p1, :cond_4

    .line 524
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 526
    :cond_4
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
