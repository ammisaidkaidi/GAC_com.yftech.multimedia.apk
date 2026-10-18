.class public Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;,
        Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;,
        Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;,
        Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/media/common/entity/QuickMultipleEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private fragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

.field private index:I

.field private lastViewedPath:Ljava/lang/String;

.field private onItemClickListener:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;

.field private onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

.field private positionByPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private thumbDataByPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;I)V
    .locals 1

    .line 54
    sget v0, Lcom/yftech/libmedia/R$layout;->item_video_list_mix:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 55
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->fragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    .line 56
    iput p2, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->index:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->positionByPath:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->thumbDataByPath:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_1"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_2"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onItemClickListener:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->thumbDataByPath:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->positionByPath:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->index:I

    return p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/media/common/entity/QuickMultipleEntity;)V
    .locals 9

    .line 70
    sget v0, Lcom/yftech/libmedia/R$id;->tv_tips:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 85
    :pswitch_0
    instance-of v1, p2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz v1, :cond_8

    .line 87
    check-cast p2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 88
    sget v1, Lcom/yftech/libmedia/R$id;->lin_list_item:I

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v4, Lcom/yftech/libmedia/R$id;->tv_item_date:I

    .line 89
    invoke-virtual {v1, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 92
    sget v1, Lcom/yftech/libmedia/R$id;->iv_pic:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/SyncImageView;

    .line 93
    iget-object v3, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/yftech/libmedia/R$id;->tv_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    iget-object v4, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/yftech/libmedia/R$id;->tv_duration:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->fragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v2, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    .line 105
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->thumbDataByPath:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xfa

    const/16 v6, 0xb4

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/media/common/ui/widget/SyncImageView;->setMediaFilePath(ILjava/lang/String;II)V

    goto :goto_0

    .line 111
    :cond_1
    array-length v2, v0

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    .line 113
    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error1:I

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->fragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {v2}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v2, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error1:I

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 121
    :goto_0
    invoke-virtual {v1}, Lcom/media/common/ui/widget/SyncImageView;->getOnMediaInformationCallback()Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    move-result-object v0

    if-nez v0, :cond_3

    .line 122
    new-instance v0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;-><init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$1;)V

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/SyncImageView;->setOnMediaInformationCallback(Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/yftech/libmedia/R$mipmap;->pv_pic_selected_3:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/yftech/libmedia/R$color;->transparent:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/SyncImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 128
    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 131
    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_7
    iget-object p2, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;-><init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 75
    :pswitch_1
    instance-of p0, p2, Lcom/yftech/libmedia/player/bean/MediaFileForDateItem;

    if-eqz p0, :cond_8

    .line 76
    check-cast p2, Lcom/yftech/libmedia/player/bean/MediaFileForDateItem;

    .line 78
    sget p0, Lcom/yftech/libmedia/R$id;->lin_list_item:I

    invoke-virtual {p1, p0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$id;->tv_item_date:I

    .line 79
    invoke-virtual {p0, p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$id;->tv_tips:I

    .line 80
    invoke-virtual {p0, p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$id;->tv_item_date:I

    .line 81
    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDateItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/ValueUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getSimpleTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/media/common/entity/QuickMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/media/common/entity/QuickMultipleEntity;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 147
    instance-of p3, p2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz p3, :cond_3

    .line 149
    check-cast p2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 150
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->thumbDataByPath:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 154
    sget p3, Lcom/yftech/libmedia/R$id;->iv_pic:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/SyncImageView;

    if-eqz p2, :cond_2

    .line 155
    array-length p3, p2

    const/16 v0, 0xa

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->fragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error1:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    sget p2, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error1:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    sget p0, Lcom/yftech/libmedia/R$mipmap;->pv_vid_error1:I

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLastViewedPath(Ljava/lang/String;)V
    .locals 5

    .line 273
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->notifyDataSetChanged()V

    .line 279
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 280
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 283
    invoke-virtual {v2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz v3, :cond_0

    .line 284
    check-cast v2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 286
    invoke-virtual {v2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 294
    :goto_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

    if-eqz p1, :cond_2

    .line 295
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

    invoke-interface {p0, v1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;->onLoadLastViewedPosition(I)V

    :cond_2
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 174
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->positionByPath:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 175
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 178
    invoke-virtual {v2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz v3, :cond_0

    .line 179
    check-cast v2, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 181
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->positionByPath:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

    if-eqz p1, :cond_2

    .line 191
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

    invoke-interface {p0, v0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;->onLoadLastViewedPosition(I)V

    :cond_2
    return-void
.end method

.method public setOnItemClickListener(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onItemClickListener:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnLastViewedCallback(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->onLastViewedCallback:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;

    return-void
.end method
