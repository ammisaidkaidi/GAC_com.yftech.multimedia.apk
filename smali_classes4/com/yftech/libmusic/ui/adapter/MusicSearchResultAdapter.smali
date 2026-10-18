.class public Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MusicSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libmusic/bean/MediaFileItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private keyWords:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private playingPath:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    sget v0, Lcom/yftech/libmusic/R$layout;->item_music_search_result:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->keyWords:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MediaFileItem;)V
    .locals 7

    .line 102
    sget v0, Lcom/yftech/libmusic/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/SyncImageView;

    .line 103
    sget v1, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/MarqueeView;

    .line 104
    sget v2, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/media/common/ui/widget/MarqueeView;

    .line 105
    sget v3, Lcom/yftech/libmusic/R$id;->tv_album:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/media/common/ui/widget/MarqueeView;

    .line 107
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->isDir()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 108
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_pic_folder:I

    invoke-virtual {v0, v4}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    const/4 v0, 0x4

    .line 109
    invoke-virtual {v3, v0}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getThumbData()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 115
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x58

    invoke-virtual {v0, v5, v4, v6, v6}, Lcom/media/common/ui/widget/SyncImageView;->setMediaFilePath(ILjava/lang/String;II)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    sget v6, Lcom/yftech/libmusic/R$mipmap;->music_search_pic_cover:I

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 118
    :goto_0
    new-instance v4, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v6

    invoke-direct {v4, p0, v6}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;-><init>(Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;I)V

    invoke-virtual {v0, v4}, Lcom/media/common/ui/widget/SyncImageView;->setOnMediaInformationCallback(Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;)V

    .line 120
    invoke-virtual {v3, v5}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 121
    invoke-virtual {v2, v5}, Lcom/media/common/ui/widget/MarqueeView;->setVisibility(I)V

    .line 124
    :goto_1
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->keyWords:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/MarqueeView;->setKeyWords(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->keyWords:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/MarqueeView;->setKeyWords(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->isDir()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->keyWords:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/media/common/ui/widget/MarqueeView;->setKeyWords(Ljava/lang/String;)V

    .line 131
    sget v0, Lcom/yftech/libmusic/R$id;->iv_isPlaying:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    iget-object v6, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 137
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 142
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 145
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 146
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 148
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    .line 149
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_pic_sel_88px:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 151
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 p2, 0x8

    .line 152
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 155
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 156
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 157
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const p2, 0x106000d

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    const/4 p0, 0x3

    .line 161
    new-array p0, p0, [I

    sget p2, Lcom/yftech/libmusic/R$id;->tv_name:I

    aput p2, p0, v5

    const/4 p2, 0x1

    sget v0, Lcom/yftech/libmusic/R$id;->tv_artist:I

    aput v0, p0, p2

    const/4 p2, 0x2

    sget v0, Lcom/yftech/libmusic/R$id;->tv_album:I

    aput v0, p0, p2

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/yftech/libmusic/bean/MediaFileItem;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MediaFileItem;)V

    return-void
.end method

.method public getPlayingPath()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    return-object p0
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

    .line 30
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

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

    .line 166
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto/16 :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 172
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 173
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 176
    sget v0, Lcom/yftech/libmusic/R$id;->iv_isPlaying:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 177
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    sget v2, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/media/common/ui/widget/MarqueeView;

    .line 180
    sget v3, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/media/common/ui/widget/MarqueeView;

    .line 181
    sget v4, Lcom/yftech/libmusic/R$id;->tv_album:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/media/common/ui/widget/MarqueeView;

    .line 184
    iget-object v5, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 186
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 187
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 191
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 194
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 195
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorF3AE3D:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 196
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/yftech/libmusic/R$mipmap;->music_pic_sel_88px:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 p2, 0x8

    .line 199
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 202
    iget-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 203
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setTextColor(I)V

    .line 204
    iget-object p0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const/4 p0, 0x1

    .line 206
    invoke-virtual {v2, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 207
    invoke-virtual {v3, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    .line 208
    invoke-virtual {v4, p0}, Lcom/media/common/ui/widget/MarqueeView;->setRepetType(I)V

    goto :goto_2

    .line 210
    :cond_3
    instance-of p2, p3, [B

    if-eqz p2, :cond_5

    .line 211
    check-cast p3, [B

    .line 213
    sget p2, Lcom/yftech/libmusic/R$id;->iv_cover:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/SyncImageView;

    .line 214
    array-length p2, p3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_4

    .line 216
    sget p0, Lcom/yftech/libmusic/R$mipmap;->music_search_pic_cover:I

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    goto :goto_2

    .line 219
    :cond_4
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->mContext:Landroid/content/Context;

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
    :goto_2
    return-void
.end method

.method public setKeyWords(Ljava/lang/String;Z)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->keyWords:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setPlaying(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/bean/MediaFileItem;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

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
    if-nez p2, :cond_2

    .line 61
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    .line 62
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    goto :goto_2

    .line 67
    :cond_2
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    if-ne v0, p2, :cond_3

    .line 69
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 74
    :cond_3
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    if-ltz p2, :cond_4

    .line 75
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 77
    :cond_4
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->playingPath:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    .line 81
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    if-ltz p2, :cond_5

    .line 82
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->position:I

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method
