.class Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libradio/RadioListActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/RadioListActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    .line 339
    sget p1, Lcom/yftech/libradio/R$layout;->item_radio_list:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p1, -0x1

    .line 336
    iput p1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 9

    .line 361
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

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

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    .line 362
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

    sget v1, Lcom/yftech/libradio/R$id;->tv_station_index:I

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    .line 363
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v3, v4, :cond_2

    sget v3, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    :goto_2
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_play:I

    iget v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    .line 364
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 365
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_index:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 367
    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 369
    iget v1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 370
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_4

    .line 375
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_4

    .line 378
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 381
    :goto_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 382
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    const-string v3, "AM"

    goto :goto_5

    :cond_6
    const-string v3, "FM"

    :goto_5
    aput-object v3, v2, v5

    .line 383
    invoke-static {}, Lcom/yftech/libradio/Utils;->getInstance()Lcom/yftech/libradio/Utils;

    move-result-object v3

    iget v7, p2, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/yftech/libradio/Utils;->formatFreq(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 384
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v3

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/yftech/libradio/R$string;->radio_band_am:I

    :goto_6
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/yftech/libradio/R$string;->radio_band_fm:I

    goto :goto_6

    :goto_7
    aput-object v3, v2, v6

    .line 381
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$600(Lcom/yftech/libradio/RadioListActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 386
    sget v1, Lcom/yftech/libradio/R$id;->layout_ta_tp_af:I

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 387
    sget v1, Lcom/yftech/libradio/R$id;->tv_station_type:I

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioListActivity;->access$700(Lcom/yftech/libradio/RadioListActivity;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 390
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 392
    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 393
    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v3}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    if-eqz p2, :cond_8

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rdsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isTpValid()Z

    move-result v2

    .line 397
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isAfValid()Z

    move-result v3

    .line 398
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getPs()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getPty()I

    move-result p2

    if-ltz p2, :cond_a

    .line 400
    iget-object v7, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v7}, Lcom/yftech/libradio/RadioListActivity;->access$900(Lcom/yftech/libradio/RadioListActivity;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge p2, v7, :cond_a

    .line 401
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$900(Lcom/yftech/libradio/RadioListActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    goto :goto_9

    :cond_8
    const-string p2, "rdsInfo is null ----"

    .line 404
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const-string p2, "rdsInfoMap is empty ----"

    .line 407
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_8
    move-object v6, v2

    move v2, v5

    move v3, v2

    .line 409
    :cond_a
    :goto_9
    sget p2, Lcom/yftech/libradio/R$id;->iv_tp:I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioListActivity;->access$1000(Lcom/yftech/libradio/RadioListActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_a

    :cond_b
    move v2, v5

    :goto_a
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 410
    sget p2, Lcom/yftech/libradio/R$id;->iv_af:I

    if-eqz v3, :cond_c

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioListActivity;->access$1100(Lcom/yftech/libradio/RadioListActivity;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move v4, v5

    :goto_b
    invoke-virtual {p1, p2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 411
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 412
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_c

    .line 414
    :cond_d
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 416
    :goto_c
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 418
    iget p2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    if-ne p2, v0, :cond_10

    .line 419
    iget-object p2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p2}, Lcom/yftech/libradio/RadioListActivity;->access$1200(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 420
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_type:I

    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/RadioListActivity;->access$1200(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 422
    :cond_e
    iget-object p2, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p2}, Lcom/yftech/libradio/RadioListActivity;->access$1300(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 423
    sget p2, Lcom/yftech/libradio/R$id;->tv_station_name:I

    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/RadioListActivity;->access$1300(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 425
    :cond_f
    sget p2, Lcom/yftech/libradio/R$id;->iv_ta:I

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$1400(Lcom/yftech/libradio/RadioListActivity;)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_d

    .line 427
    :cond_10
    sget p0, Lcom/yftech/libradio/R$id;->iv_ta:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_d

    .line 430
    :cond_11
    sget p0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 431
    sget p0, Lcom/yftech/libradio/R$id;->layout_ta_tp_af:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 432
    sget p0, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-virtual {p1, p0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_d
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 334
    check-cast p2, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method

.method public setPlayingIndex(IZ)V
    .locals 2

    .line 348
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

    .line 350
    iput p1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    .line 352
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 354
    :cond_0
    iput p1, p0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->position:I

    :goto_0
    return-void
.end method
