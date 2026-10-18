.class public Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RadioFavorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libradio/bean/RadioChannelInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget v0, Lcom/yftech/libradio/R$layout;->item_radio_favor:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    .line 40
    iput-object p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libradio/bean/RadioChannelInfo;)V
    .locals 9

    .line 65
    sget v0, Lcom/yftech/libradio/R$id;->tv_name:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "AM"

    goto :goto_0

    :cond_0
    const-string v4, "FM"

    :goto_0
    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 67
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getFreq()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getFreq()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 68
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/yftech/libradio/R$string;->radio_band_am:I

    :goto_2
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/yftech/libradio/R$string;->radio_band_fm:I

    goto :goto_2

    :goto_3
    aput-object v4, v3, v5

    .line 65
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_name:I

    iget-object v2, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    iget-boolean p2, p2, Lcom/yftech/libradio/bean/RadioChannelInfo;->isValid:Z

    if-nez p2, :cond_3

    sget p2, Lcom/yftech/libradio/R$color;->color33FFFFFF:I

    goto :goto_4

    :cond_3
    iget p2, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    .line 70
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne p2, v3, :cond_4

    sget p2, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    goto :goto_4

    :cond_4
    sget p2, Lcom/yftech/libradio/R$color;->colorE6FFFFFF:I

    .line 69
    :goto_4
    invoke-static {v2, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    iget v1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    .line 71
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v7

    goto :goto_5

    :cond_5
    move v1, v6

    :goto_5
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 73
    sget p2, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 75
    iget p0, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    if-ne p0, v0, :cond_7

    .line 76
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_6

    .line 79
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_6

    .line 81
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_6

    .line 84
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 90
    :goto_6
    new-array p0, v7, [I

    sget p2, Lcom/yftech/libradio/R$id;->iv_like:I

    aput p2, p0, v6

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/yftech/libradio/bean/RadioChannelInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libradio/bean/RadioChannelInfo;)V

    return-void
.end method

.method public getFarqPosition()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

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

    .line 30
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 2
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

    .line 95
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto :goto_1

    .line 98
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder:position="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    sget p3, Lcom/yftech/libradio/R$id;->tv_name:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 102
    iget v1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    if-ne v1, p2, :cond_2

    .line 103
    iget-object p0, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p0

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isPlaying:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_0
    const/4 p0, 0x0

    .line 111
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 p2, 0x8

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object p0, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/yftech/libradio/R$color;->colorE6FFFFFF:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method public setPlayingIndex(IZ)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayingIndex() position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isNotifyChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    iget p2, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    .line 52
    iput p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    const/4 p1, 0x0

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 55
    iget p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    iput p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->position:I

    :goto_0
    return-void
.end method
