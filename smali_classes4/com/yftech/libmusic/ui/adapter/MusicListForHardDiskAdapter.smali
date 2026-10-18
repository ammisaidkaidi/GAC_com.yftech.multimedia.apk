.class public Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MusicListForHardDiskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter$mOnMediaDataCallbackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libmusic/bean/MusicListItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mIsPlaying:Z

.field private parentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;"
        }
    .end annotation
.end field

.field private playingFloderPath:Ljava/lang/String;

.field private playingPath:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    sget v0, Lcom/yftech/libmusic/R$layout;->item_music:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mIsPlaying:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->parentList:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MusicListItem;)V
    .locals 9

    .line 129
    sget v0, Lcom/yftech/libmusic/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/SyncImageView;

    .line 130
    sget v1, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/MarqueeView;

    .line 131
    sget v2, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/media/common/ui/widget/MarqueeView;

    .line 132
    sget v3, Lcom/yftech/libmusic/R$id;->tv_album:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/media/common/ui/widget/MarqueeView;

    .line 134
    sget v4, Lcom/yftech/libmusic/R$id;->iv_isPlaying:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 136
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 137
    sget v6, Lcom/yftech/libmusic/R$mipmap;->music_pic_folder:I

    invoke-virtual {v0, v6}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    const/4 v0, 0x4

    .line 138
    invoke-virtual {v3, v0}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 139
    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getThumbData()[B

    move-result-object v6

    if-nez v6, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x4c

    invoke-virtual {v0, v7, v6, v8, v8}, Lcom/media/common/ui/widget/SyncImageView;->setMediaFilePath(ILjava/lang/String;II)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v8, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    sget v8, Lcom/yftech/libmusic/R$mipmap;->music_search_pic_cover:I

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 148
    :goto_0
    new-instance v6, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter$mOnMediaDataCallbackListener;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v8

    invoke-direct {v6, p0, v8}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter$mOnMediaDataCallbackListener;-><init>(Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;I)V

    invoke-virtual {v0, v6}, Lcom/media/common/ui/widget/SyncImageView;->setOnMediaInformationCallback(Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;)V

    .line 150
    invoke-virtual {v3, v7}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 151
    invoke-virtual {v2, v7}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 154
    :goto_1
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingFloderPath:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-boolean p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mIsPlaying:Z

    if-eqz p2, :cond_4

    .line 160
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    .line 161
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_4

    .line 163
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 165
    :cond_5
    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 167
    invoke-virtual {v1, v6}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 168
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_pic_sel_88px:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 171
    iget-boolean p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mIsPlaying:Z

    if-eqz p2, :cond_7

    .line 172
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 174
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 176
    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 179
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 180
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 181
    invoke-virtual {v1, v6}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 182
    invoke-virtual {v2, v6}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 183
    invoke-virtual {v3, v6}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 186
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    .line 187
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_pic_sel_88px:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 189
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 p2, 0x8

    .line 190
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 193
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 194
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    const/4 p0, -0x1

    .line 195
    invoke-virtual {v1, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 196
    invoke-virtual {v2, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 197
    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 198
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const p2, 0x106000d

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    const/4 p0, 0x3

    .line 202
    new-array p0, p0, [I

    sget p2, Lcom/yftech/libmusic/R$id;->tv_name:I

    aput p2, p0, v7

    sget p2, Lcom/yftech/libmusic/R$id;->tv_artist:I

    aput p2, p0, v6

    const/4 p2, 0x2

    sget v0, Lcom/yftech/libmusic/R$id;->tv_album:I

    aput v0, p0, p2

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lcom/yftech/libmusic/bean/MusicListItem;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MusicListItem;)V

    return-void
.end method

.method public getParentList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->parentList:Ljava/util/List;

    return-object p0
.end method

.method public getPlayingPath()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    return p0
.end method

.method public getPositionByPath(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/bean/MusicListItem;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
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

    .line 32
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 6
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

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder:payloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 216
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 217
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder:position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", path="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", playingPath="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    sget p2, Lcom/yftech/libmusic/R$id;->iv_isPlaying:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 223
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 225
    sget v2, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/media/common/ui/widget/MarqueeView;

    .line 226
    sget v3, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/media/common/ui/widget/MarqueeView;

    .line 227
    sget v4, Lcom/yftech/libmusic/R$id;->tv_album:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/media/common/ui/widget/MarqueeView;

    .line 230
    iget-object v5, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 232
    iget-boolean p3, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mIsPlaying:Z

    if-eqz p3, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 237
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 240
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 241
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 242
    invoke-virtual {v2, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 243
    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 244
    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 245
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/yftech/libmusic/R$mipmap;->music_pic_sel_88px:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    .line 248
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 251
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 252
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    const/4 p0, -0x1

    .line 253
    invoke-virtual {v2, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 254
    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 255
    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 256
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 258
    :cond_3
    instance-of p2, p3, [B

    if-eqz p2, :cond_5

    .line 259
    check-cast p3, [B

    .line 261
    sget p2, Lcom/yftech/libmusic/R$id;->iv_cover:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/SyncImageView;

    .line 262
    array-length p2, p3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_4

    .line 266
    sget p0, Lcom/yftech/libmusic/R$mipmap;->music_search_pic_cover:I

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    goto :goto_1

    .line 269
    :cond_4
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_search_pic_cover:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_5
    :goto_1
    return-void
.end method

.method public setParentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->parentList:Ljava/util/List;

    return-void
.end method

.method public setPlayStatus(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->mIsPlaying:Z

    return-void
.end method

.method public setPlaying(Ljava/lang/String;Z)V
    .locals 3

    .line 73
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPositionByPath(Ljava/lang/String;)I

    move-result v0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingFloderPath:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " update playingFloderPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingFloderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  notifyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 81
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    goto :goto_0

    .line 85
    :cond_0
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    if-ltz p2, :cond_1

    .line 86
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->playingPath:Ljava/lang/String;

    .line 89
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    .line 92
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    if-ltz p2, :cond_2

    .line 93
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->position:I

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
