.class public Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RadioSearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
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

    .line 35
    sget v0, Lcom/yftech/libradio/R$layout;->item_radio_search_channe:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    .line 36
    iput-object p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 8

    .line 59
    sget v0, Lcom/yftech/libradio/R$id;->tv_name:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

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

    .line 61
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 62
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p2

    if-ne p2, v5, :cond_2

    iget-object p2, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yftech/libradio/R$string;->radio_band_am:I

    :goto_2
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yftech/libradio/R$string;->radio_band_fm:I

    goto :goto_2

    :goto_3
    aput-object p2, v3, v5

    .line 59
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$id;->tv_name:I

    iget-object v1, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    .line 63
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v2, v3, :cond_3

    sget v2, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    goto :goto_4

    :cond_3
    sget v2, Lcom/yftech/libradio/R$color;->colorE6FFFFFF:I

    :goto_4
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    iget v1, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    .line 64
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p2, v0, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 66
    sget p2, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 68
    iget p0, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    if-ne p0, p1, :cond_6

    .line 69
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPlaying:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 72
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 74
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_5

    .line 77
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_5
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method

.method public setPlayingIndex(IZ)V
    .locals 2

    .line 45
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

    .line 47
    iput p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    .line 49
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 51
    :cond_0
    iput p1, p0, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->position:I

    :goto_0
    return-void
.end method
