.class public Lcom/yftech/libradio/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final LISTENER_DAB:Ljava/lang/String; = "com.yftech.media.radio.dab.manager.RadioDabAudioManager"

.field private static final MIN_CLICK_DELAY_TIME:I = 0x1f4

.field public static final SHARED_KEY_AM_MAX:Ljava/lang/String; = "am_max"

.field public static final SHARED_KEY_AM_MAX_DEFAULT:I = 0x65d

.field public static final SHARED_KEY_AM_MIN:Ljava/lang/String; = "am_min"

.field public static final SHARED_KEY_AM_MIN_DEFAULT:I = 0x213

.field public static final SHARED_KEY_AM_STEP:Ljava/lang/String; = "am_step"

.field public static final SHARED_KEY_AM_STEP_DEFAULT:I = 0x9

.field public static final SHARED_KEY_FM_MAX:Ljava/lang/String; = "fm_max"

.field public static final SHARED_KEY_FM_MAX_DEFAULT:I = 0x1a5e0

.field public static final SHARED_KEY_FM_MIN:Ljava/lang/String; = "fm_min"

.field public static final SHARED_KEY_FM_MIN_DEFAULT:I = 0x155cc

.field public static final SHARED_KEY_FM_STEP:Ljava/lang/String; = "fm_step"

.field public static final SHARED_KEY_FM_STEP_DEFAULT:I = 0x64

.field public static final SHARED_RADIO_DATA_NAME:Ljava/lang/String; = "yf_radio_app_data"

.field private static lastClickTime:J

.field private static sInstance:Lcom/yftech/libradio/Utils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    const-string v0, "convertDabInfos,channelInfoList can \'t be null"

    .line 114
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_9

    .line 117
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_5

    .line 121
    :cond_1
    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    aget-object v6, v0, v5

    .line 122
    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getList()[Lcom/yftech/car/media/radio/dab/entity/DabProperties;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 123
    array-length v8, v7

    if-gtz v8, :cond_2

    goto :goto_3

    .line 127
    :cond_2
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v17, v7, v9

    .line 128
    new-instance v15, Lcom/yftech/libradio/bean/DabChannelInfo;

    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getFrequency()J

    move-result-wide v11

    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getEnsembleId()I

    move-result v13

    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v14

    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getTab()I

    move-result v16

    move-object v10, v15

    move-object v4, v15

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/yftech/libradio/bean/DabChannelInfo;-><init>(JILcom/yftech/car/media/radio/dab/entity/DabLabel;Lcom/yftech/car/media/radio/dab/entity/DabProperties;I)V

    .line 130
    invoke-virtual/range {v17 .. v17}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getPdFlag()B

    move-result v10

    if-nez v10, :cond_3

    if-eqz v2, :cond_4

    .line 132
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 124
    :cond_5
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertDabInfos,properties is Empty, length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_6

    const-string v6, "null"

    goto :goto_4

    :cond_6
    array-length v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-void

    .line 118
    :cond_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertDabInfos,dabEnsembles is Empty, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_a

    const-string v0, "null"

    goto :goto_6

    :cond_a
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static convertStationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static getAudioSourceListener()Ljava/lang/String;
    .locals 3

    .line 389
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, ","

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    .line 394
    aget-object v0, v0, v1

    const-string v1, "null"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static getDabData(I)[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-le p0, v0, :cond_1

    .line 160
    rem-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_0

    div-int/2addr p0, v0

    goto :goto_0

    :cond_0
    div-int/2addr p0, v0

    add-int/2addr p0, v1

    goto :goto_0

    :cond_1
    move p0, v1

    .line 162
    :goto_0
    new-array p0, p0, [Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    const/4 v2, 0x0

    move v3, v2

    .line 163
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 164
    new-instance v4, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    invoke-direct {v4}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;-><init>()V

    add-int/lit8 v5, v3, 0x14

    .line 165
    invoke-virtual {v4, v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->setEnsembleId(I)V

    mul-int/lit8 v5, v3, 0x2

    add-int/lit16 v5, v5, 0x401

    int-to-long v5, v5

    .line 166
    invoke-virtual {v4, v5, v6}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->setFrequency(J)V

    add-int/lit8 v5, v3, 0x2

    .line 167
    invoke-virtual {v4, v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->setTab(I)V

    .line 168
    new-instance v5, Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    invoke-direct {v5}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;-><init>()V

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BBC Group_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->setLabelString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->setLabel(Lcom/yftech/car/media/radio/dab/entity/DabLabel;)V

    .line 171
    new-array v5, v0, [Lcom/yftech/car/media/radio/dab/entity/DabProperties;

    .line 172
    invoke-virtual {v4, v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->setList([Lcom/yftech/car/media/radio/dab/entity/DabProperties;)V

    move v6, v2

    .line 173
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 174
    new-instance v7, Lcom/yftech/car/media/radio/dab/entity/DabProperties;

    invoke-direct {v7}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;-><init>()V

    .line 175
    invoke-virtual {v7, v1}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->setCaApplied(Z)V

    add-int/lit8 v8, v6, 0x2

    .line 176
    invoke-virtual {v7, v8}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->setCaId(I)V

    add-int/lit8 v8, v6, 0x1

    .line 177
    invoke-virtual {v7, v8}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->setDynPty(I)V

    add-int/lit8 v9, v6, 0x5

    int-to-long v9, v9

    .line 178
    invoke-virtual {v7, v9, v10}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->setServiceId(J)V

    .line 179
    new-instance v9, Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    invoke-direct {v9}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;-><init>()V

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BBC National_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->setLabelString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v7, v9}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->setLabel(Lcom/yftech/car/media/radio/dab/entity/DabLabel;)V

    .line 182
    aput-object v7, v5, v6

    move v6, v8

    goto :goto_2

    .line 184
    :cond_2
    aput-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static getDabImageInfo()[B
    .locals 4

    .line 326
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabImageInfo()Lcom/yftech/car/media/radio/dab/entity/DabImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 328
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabImageInfo;->getCompress()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 330
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabImageInfo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "data is Empty ----"

    .line 332
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v2, "data is compress ----"

    .line 338
    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabImageInfo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 340
    array-length v2, v0

    if-gtz v2, :cond_3

    goto :goto_1

    .line 344
    :cond_3
    invoke-static {v0}, Lcom/yftech/libradio/Utils;->uncompressGzip([B)[B

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "data is Empty ----"

    .line 341
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v1

    :cond_5
    const-string v0, "dabImageInfo is null---"

    .line 348
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDabLableString(Lcom/yftech/car/media/radio/dab/entity/DabLabel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/yftech/libradio/Utils;
    .locals 2

    .line 70
    sget-object v0, Lcom/yftech/libradio/Utils;->sInstance:Lcom/yftech/libradio/Utils;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/yftech/libradio/Utils;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/yftech/libradio/Utils;->sInstance:Lcom/yftech/libradio/Utils;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/yftech/libradio/Utils;

    invoke-direct {v1}, Lcom/yftech/libradio/Utils;-><init>()V

    sput-object v1, Lcom/yftech/libradio/Utils;->sInstance:Lcom/yftech/libradio/Utils;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/libradio/Utils;->sInstance:Lcom/yftech/libradio/Utils;

    return-object v0
.end method

.method public static isFMAndAMPresent()Z
    .locals 3

    .line 439
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFMAndAMSConfiguration-->config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 441
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->FM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->AM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->FM_PLUSAM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 442
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFMAndAMSConfiguration--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static declared-synchronized isQuickClick()Z
    .locals 7

    const-class v0, Lcom/yftech/libradio/Utils;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 86
    sget-wide v3, Lcom/yftech/libradio/Utils;->lastClickTime:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v1, 0x1

    .line 87
    monitor-exit v0

    return v1

    .line 89
    :cond_0
    :try_start_1
    sput-wide v1, Lcom/yftech/libradio/Utils;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 90
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    throw v1
.end method

.method public static isRadioDABPresent()Z
    .locals 3

    .line 413
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioDABAndRDSConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioDABPresent-->config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 415
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 416
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioDABPresent-->: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static isRdsPresent()Z
    .locals 3

    .line 426
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioDABAndRDSConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioDABAndRDSConfiguration-->config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 428
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 429
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioDABAndRDSConfiguration--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static loadDabSliderShowData(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "imageView is null---"

    .line 191
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 194
    array-length v0, p3

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    .line 200
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 202
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 203
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 205
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 206
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 207
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 208
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 211
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 212
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 213
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 214
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p2, "none imamge data----"

    .line 195
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static loadDabSliderShowDataNoCache(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "imageView is null---"

    .line 237
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 240
    array-length v0, p3

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    .line 246
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 247
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 248
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 249
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 251
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 252
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 253
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/yftech/libradio/Utils$1;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/Utils$1;-><init>(Landroid/widget/ImageView;)V

    .line 254
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 276
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 277
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 278
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/yftech/libradio/Utils$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/Utils$2;-><init>(Landroid/widget/ImageView;)V

    .line 279
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 298
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p2, "none imamge data----"

    .line 241
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static declared-synchronized playKeySoundEffect(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/yftech/libradio/Utils;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "audio"

    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 97
    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    throw p0
.end method

.method private static uncompressGzip([B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 361
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_5

    .line 365
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 366
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 368
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 369
    array-length p0, p0

    new-array p0, p0, [B

    .line 371
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x0

    .line 372
    invoke-virtual {v1, p0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 380
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 376
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gzip compress error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 380
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object p0, v0

    :goto_2
    return-object p0

    .line 379
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 380
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 384
    :goto_4
    throw p0

    :cond_2
    :goto_5
    return-object v0
.end method


# virtual methods
.method public formatFreq(II)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/yftech/libradio/Utils;->isFmKeepTwoDecima()Z

    move-result p0

    const/high16 p2, 0x447a0000    # 1000.0f

    if-eqz p0, :cond_0

    .line 489
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float p0, p1

    div-float/2addr p0, p2

    .line 491
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 494
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFmKeepTwoDecima()Z
    .locals 3

    .line 476
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getStep(I)I

    move-result p0

    .line 477
    rem-int/lit8 v1, p0, 0x64

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 478
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFmKeepTwoDecima->isFmKeepTwoDecima="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method
