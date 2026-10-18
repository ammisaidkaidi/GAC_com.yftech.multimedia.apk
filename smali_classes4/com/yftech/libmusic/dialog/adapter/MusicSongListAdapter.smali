.class public Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MusicSongListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libmusic/bean/MediaFileItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isPlay:Z

.field private mContext:Landroid/content/Context;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    sget v0, Lcom/yftech/libmusic/R$layout;->item_music_song:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->isPlay:Z

    .line 43
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MediaFileItem;)V
    .locals 5

    .line 83
    sget v0, Lcom/yftech/libmusic/R$id;->tv_duration:I

    .line 86
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_order:I

    .line 87
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 89
    sget v0, Lcom/yftech/libmusic/R$id;->tv_order:I

    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    .line 91
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 93
    sget v0, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/WordsLimitTextView;

    .line 94
    sget v1, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/WordsLimitTextView;

    .line 96
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setContent(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->getArtist()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setContent(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libmusic/R$color;->colorDD9D09:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 101
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorDD9D09:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 102
    sget p2, Lcom/yftech/libmusic/R$id;->tv_duration:I

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libmusic/R$color;->colorB3DD9D09:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    .line 104
    :cond_1
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 105
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->color80FFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 106
    sget p2, Lcom/yftech/libmusic/R$id;->tv_duration:I

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libmusic/R$color;->color80FFFFFF:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 109
    :goto_1
    sget p2, Lcom/yftech/libmusic/R$id;->iv_playing:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 111
    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 115
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->isPlay:Z

    if-eqz p0, :cond_2

    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 120
    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 p0, 0x4

    .line 124
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    const/4 p0, 0x2

    .line 130
    new-array p0, p0, [I

    sget p2, Lcom/yftech/libmusic/R$id;->tv_name:I

    aput p2, p0, v4

    sget p2, Lcom/yftech/libmusic/R$id;->tv_artist:I

    aput p2, p0, v3

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/yftech/libmusic/bean/MediaFileItem;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/MediaFileItem;)V

    return-void
.end method

.method public getPosition()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

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

    .line 29
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 5
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

    .line 136
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto/16 :goto_2

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder:position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 143
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/ValueUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder:isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    sget p3, Lcom/yftech/libmusic/R$id;->tv_order:I

    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    if-eq v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, p3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 150
    sget p3, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/media/common/ui/widget/WordsLimitTextView;

    .line 151
    sget v1, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/WordsLimitTextView;

    .line 152
    sget v2, Lcom/yftech/libmusic/R$id;->iv_playing:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 153
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 155
    iget v4, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    if-ne v4, p2, :cond_3

    .line 157
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yftech/libmusic/R$color;->colorDD9D09:I

    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 158
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->colorDD9D09:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 159
    sget p2, Lcom/yftech/libmusic/R$id;->tv_duration:I

    iget-object p3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libmusic/R$color;->colorB3DD9D09:I

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 161
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->isPlay:Z

    if-eqz p0, :cond_2

    .line 162
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 166
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 p2, 0x4

    .line 170
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 174
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->color80FFFFFF:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->setTextColor(I)V

    .line 175
    sget p2, Lcom/yftech/libmusic/R$id;->tv_duration:I

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/yftech/libmusic/R$color;->color80FFFFFF:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    return-void
.end method

.method public setPlayingIndex(IZZ)V
    .locals 0

    .line 60
    iput-boolean p3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->isPlay:Z

    if-eqz p2, :cond_0

    .line 62
    iget p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    .line 63
    iput p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 66
    iget p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    iput p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->position:I

    :goto_0
    return-void
.end method
