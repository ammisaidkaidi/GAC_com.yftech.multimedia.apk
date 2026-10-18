.class Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RadioFavorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioFavorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioFavorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libradio/bean/RadioChannelInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libradio/RadioFavorActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/RadioFavorActivity;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    .line 342
    sget p1, Lcom/yftech/libradio/R$layout;->item_radio_favor_new:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libradio/bean/RadioChannelInfo;)V
    .locals 9

    .line 370
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    iget-object v1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget v2, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_station_type:I

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    .line 371
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v3, v4, :cond_1

    sget v3, Lcom/yftech/libradio/R$color;->colorB3DD9D09:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_play:I

    iget v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    .line 372
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 374
    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 375
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 376
    iget v1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 377
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 380
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    .line 382
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_3

    .line 385
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 389
    :goto_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 390
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    const-string v3, "AM"

    goto :goto_4

    :cond_5
    const-string v3, "FM"

    :goto_4
    aput-object v3, v2, v5

    .line 391
    invoke-static {}, Lcom/yftech/libradio/Utils;->getInstance()Lcom/yftech/libradio/Utils;

    move-result-object v3

    iget v7, p2, Lcom/yftech/libradio/bean/RadioChannelInfo;->Freq:I

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/yftech/libradio/Utils;->formatFreq(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 392
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/yftech/libradio/R$string;->radio_band_am:I

    :goto_5
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/yftech/libradio/R$string;->radio_band_fm:I

    goto :goto_5

    :goto_6
    aput-object v3, v2, v6

    .line 389
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert->band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";rdsEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$800(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";ptyEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$900(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getType()I

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioFavorActivity;->access$800(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 395
    sget v1, Lcom/yftech/libradio/R$id;->layout_ta_tp_af:I

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 396
    sget v1, Lcom/yftech/libradio/R$id;->tv_station_type:I

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$900(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 399
    iget-object v1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/RadioFavorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 401
    iget-object v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioFavorActivity;->access$1000(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioFavorActivity;->access$1000(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 402
    iget-object v3, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioFavorActivity;->access$1000(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getFreq()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    if-eqz p2, :cond_7

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rdsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isTpValid()Z

    move-result v2

    .line 406
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isAfValid()Z

    move-result v3

    .line 407
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getPs()Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getPty()I

    move-result p2

    if-ltz p2, :cond_9

    .line 409
    iget-object v7, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v7}, Lcom/yftech/libradio/RadioFavorActivity;->access$1100(Lcom/yftech/libradio/RadioFavorActivity;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge p2, v7, :cond_9

    .line 410
    iget-object v1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioFavorActivity;->access$1100(Lcom/yftech/libradio/RadioFavorActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    goto :goto_8

    :cond_7
    const-string p2, "rdsInfo is null ----"

    .line 413
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    const-string p2, "rdsInfoMap is empty ----"

    .line 416
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_7
    move-object v6, v2

    move v2, v5

    move v3, v2

    .line 418
    :cond_9
    :goto_8
    sget p2, Lcom/yftech/libradio/R$id;->iv_tp:I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$1200(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_9

    :cond_a
    move v2, v5

    :goto_9
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 419
    sget p2, Lcom/yftech/libradio/R$id;->iv_af:I

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$1300(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_a

    :cond_b
    move v2, v5

    :goto_a
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 420
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 421
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_b

    .line 423
    :cond_c
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 425
    :goto_b
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 427
    iget p2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 428
    iget-object p2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p2}, Lcom/yftech/libradio/RadioFavorActivity;->access$1400(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 429
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_type:I

    iget-object v0, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v0}, Lcom/yftech/libradio/RadioFavorActivity;->access$1400(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 431
    :cond_d
    iget-object p2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p2}, Lcom/yftech/libradio/RadioFavorActivity;->access$1500(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 432
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    iget-object v0, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v0}, Lcom/yftech/libradio/RadioFavorActivity;->access$1500(Lcom/yftech/libradio/RadioFavorActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 434
    :cond_e
    sget p2, Lcom/yftech/libradio/R$id;->iv_ta:I

    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioFavorActivity;->access$1600(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_c

    .line 436
    :cond_f
    sget p0, Lcom/yftech/libradio/R$id;->iv_ta:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_c

    .line 439
    :cond_10
    sget p0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 440
    sget p0, Lcom/yftech/libradio/R$id;->layout_ta_tp_af:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 441
    sget p0, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 444
    :goto_c
    new-array p0, v4, [I

    sget p2, Lcom/yftech/libradio/R$id;->iv_station_favor_flag:I

    aput p2, p0, v5

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p2, Lcom/yftech/libradio/bean/RadioChannelInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libradio/bean/RadioChannelInfo;)V

    return-void
.end method

.method public getFarqPosition()I
    .locals 0

    .line 365
    iget p0, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    return p0
.end method

.method public setPlayingIndex(IZ)V
    .locals 2

    .line 352
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

    .line 354
    iget p2, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    .line 355
    iput p1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    const/4 p1, 0x0

    .line 357
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 358
    iget p1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_0
    iput p1, p0, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->position:I

    :goto_0
    return-void
.end method
