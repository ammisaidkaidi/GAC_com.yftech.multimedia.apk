.class public Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "PictureListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;,
        Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;,
        Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mRequestListener;,
        Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;
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
.field private errorPhoto:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isSelectorMode:Z

.field private lastViewedPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private onItemClickListener:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;

.field private onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

.field private selected:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 61
    sget v0, Lcom/yftech/libgallery/R$layout;->item_list_mix:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    .line 62
    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->index:I

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->errorPhoto:Ljava/util/HashSet;

    if-nez p2, :cond_0

    .line 69
    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onItemClickListener:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/media/common/entity/QuickMultipleEntity;)V
    .locals 5

    .line 77
    sget v0, Lcom/yftech/libgallery/R$id;->tv_tips:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/yftech/libgallery/R$id;->v_isSelected:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 81
    invoke-virtual {p2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 99
    :pswitch_0
    sget v0, Lcom/yftech/libgallery/R$id;->v_isSelected:I

    iget-boolean v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 101
    instance-of v0, p2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz v0, :cond_3

    .line 102
    sget v0, Lcom/yftech/libgallery/R$id;->iv_pic:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libgallery/R$id;->iv_cover:I

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libgallery/R$id;->tv_item_date:I

    .line 104
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 106
    sget v0, Lcom/yftech/libgallery/R$id;->iv_pic:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    check-cast p2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 109
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->errorPhoto:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/yftech/libgallery/R$mipmap;->pv_pic_error2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/yftech/libgallery/R$mipmap;->pv_pic_error2:I

    .line 116
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mRequestListener;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-direct {v2, p0, v4}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mRequestListener;-><init>(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 117
    sget v1, Lcom/yftech/libgallery/R$id;->tv_tips:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 119
    :goto_1
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/yftech/libgallery/R$mipmap;->pv_pic_selected_4:I

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/yftech/libgallery/R$color;->transparent:I

    :goto_2
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    sget p2, Lcom/yftech/libgallery/R$id;->iv_cover:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 124
    new-instance v0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;-><init>(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 84
    :pswitch_1
    sget p0, Lcom/yftech/libgallery/R$id;->v_isSelected:I

    invoke-virtual {p1, p0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 85
    instance-of p0, p2, Lcom/yftech/libgallery/bean/MediaFileForDateItem;

    if-eqz p0, :cond_3

    .line 86
    check-cast p2, Lcom/yftech/libgallery/bean/MediaFileForDateItem;

    .line 87
    sget p0, Lcom/yftech/libgallery/R$id;->iv_pic:I

    invoke-virtual {p1, p0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget v0, Lcom/yftech/libgallery/R$id;->iv_cover:I

    .line 88
    invoke-virtual {p0, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget v0, Lcom/yftech/libgallery/R$id;->tv_item_date:I

    .line 89
    invoke-virtual {p0, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget v0, Lcom/yftech/libgallery/R$id;->tv_tips:I

    .line 90
    invoke-virtual {p0, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget v0, Lcom/yftech/libgallery/R$id;->tv_item_date:I

    .line 91
    invoke-virtual {p2}, Lcom/yftech/libgallery/bean/MediaFileForDateItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/ValueUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getSimpleTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 93
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Lcom/media/common/entity/QuickMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/media/common/entity/QuickMultipleEntity;)V

    return-void
.end method

.method public getImageSelector()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 267
    iget-object v3, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 268
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isSelectedPhoto()Z
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectorMode()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    return p0
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

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 3
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

    .line 132
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 136
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 137
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/ValueUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder:isSelectorMode_Payload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/media/common/entity/QuickMultipleEntity;

    if-eqz v1, :cond_4

    .line 143
    invoke-virtual {v1}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 144
    sget v1, Lcom/yftech/libgallery/R$id;->v_isSelected:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    .line 145
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 148
    :cond_3
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder:mPosition="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/media/common/entity/QuickMultipleEntity;

    .line 157
    instance-of p2, p1, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz p2, :cond_4

    .line 158
    check-cast p1, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 159
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->errorPhoto:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setLastViewedPath(Ljava/lang/String;)V
    .locals 5

    .line 283
    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->notifyDataSetChanged()V

    .line 290
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 294
    invoke-virtual {v2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz v3, :cond_0

    .line 295
    check-cast v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 297
    invoke-virtual {v2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

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

    .line 305
    :goto_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

    if-eqz p1, :cond_2

    .line 306
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

    invoke-interface {p0, v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;->onLoadLastViewedPosition(I)V

    :cond_2
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 5
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

    .line 167
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 172
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 175
    invoke-virtual {v2}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz v3, :cond_0

    .line 176
    check-cast v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 178
    invoke-virtual {v2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->lastViewedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

    if-eqz p1, :cond_2

    .line 187
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

    invoke-interface {p0, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;->onLoadLastViewedPosition(I)V

    :cond_2
    return-void
.end method

.method public setOnItemClickListener(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onItemClickListener:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnLastViewedCallback(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->onLastViewedCallback:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;

    return-void
.end method

.method public setSelectorMode(ZZ)V
    .locals 1

    .line 251
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    .line 254
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->selected:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getItemCount()I

    move-result p2

    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method
