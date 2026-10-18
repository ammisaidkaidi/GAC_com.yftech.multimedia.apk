.class public Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.super Ljava/lang/Object;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
    }
.end annotation


# static fields
.field public static final INFO_TYPE_NAVI_BASE_INFO:B = 0x7t

.field public static final INFO_TYPE_NAVI_GUIDE_COMPASS:B = 0x8t

.field public static final INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME:B = 0x9t

.field public static final INFO_TYPE_NAVI_GUIDE_NEXT_LOAD_NAME:B = 0xat

.field public static final INFO_TYPE_NAVI_GUIDE_NEXT_PATH_CALCULATION:B = 0xbt

.field public static final INFO_TYPE_PHONE_INFO:B = 0x3t

.field public static final INFO_TYPE_PHONE_NAME:B = 0x5t

.field public static final INFO_TYPE_PHONE_NUMBER:B = 0x4t

.field public static final INFO_TYPE_PHONE_TIMES:B = 0x6t

.field public static final INFO_TYPE_SONG_ARTIST:B = 0x2t

.field public static final INFO_TYPE_SONG_TITLE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "Ihu12DashBoard"

.field static mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

.field private static mDashBoardInfoDataByteArrayForIhu12:[B

.field private static mLastSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 14
    new-array v0, v0, [B

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mDashBoardInfoDataByteArrayForIhu12:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDashBoardInfoDataByteArrayForIhu12(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 13

    .line 111
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mDashBoardInfoDataByteArrayForIhu12:[B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    .line 112
    aput-byte v2, v0, v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 113
    aput-byte v2, v0, v3

    const/4 v4, 0x2

    .line 114
    aput-byte v3, v0, v4

    const/4 v5, 0x3

    .line 115
    aput-byte v1, v0, v5

    .line 116
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/16 v9, 0x9

    if-eq v6, v9, :cond_0

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x14

    .line 128
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_1
    const/16 v6, 0x20

    .line 134
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_2
    const/16 v6, 0x21

    .line 131
    aput-byte v6, v0, v5

    goto :goto_0

    .line 125
    :pswitch_3
    aput-byte v7, v0, v5

    goto :goto_0

    :pswitch_4
    const/16 v6, 0x16

    .line 137
    aput-byte v6, v0, v5

    goto :goto_0

    .line 122
    :pswitch_5
    aput-byte v8, v0, v5

    goto :goto_0

    .line 119
    :cond_0
    :pswitch_6
    aput-byte v5, v0, v5

    .line 146
    :goto_0
    :pswitch_7
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v6

    const/4 v10, 0x5

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_5

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_4

    .line 185
    :pswitch_8
    instance-of v4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    if-nez v4, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string v1, "formartDashBoardInfoDataBytes() AbsDashBoardInfo is not RadioInfo"

    .line 186
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 189
    :cond_1
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    .line 191
    iget-byte v4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    const/16 v6, 0xe

    const/16 v7, 0xf

    packed-switch v4, :pswitch_data_4

    goto :goto_1

    .line 199
    :pswitch_9
    aput-byte v6, v0, v5

    goto :goto_1

    .line 195
    :pswitch_a
    aput-byte v7, v0, v5

    :goto_1
    const/16 v4, 0xd

    .line 205
    iget-byte v5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->scanMode:B

    if-ne v5, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-byte v3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->scanMode:B

    :goto_2
    aput-byte v3, v0, v4

    .line 208
    iget-byte v3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    packed-switch v3, :pswitch_data_5

    goto/16 :goto_4

    .line 222
    :pswitch_b
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    add-int/lit16 p0, p0, -0x90

    if-gez p0, :cond_3

    move p0, v1

    :cond_3
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 227
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 228
    aput-byte p0, v0, v1

    goto/16 :goto_4

    .line 212
    :pswitch_c
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    .line 213
    div-int/lit8 p0, p0, 0xa

    add-int/lit16 p0, p0, -0x1964

    if-gez p0, :cond_4

    move p0, v1

    :cond_4
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 217
    aput-byte v1, v0, v6

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 218
    aput-byte p0, v0, v7

    goto/16 :goto_4

    .line 155
    :cond_5
    :pswitch_d
    instance-of v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v1, :cond_6

    const-string p0, "Ihu12DashBoard"

    const-string v1, "getDashBoardInfoDataByteArrayForIhu12() AbsDashBoardInfo is not MediaInfo"

    .line 156
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 159
    :cond_6
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 161
    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    if-ne v1, v4, :cond_7

    .line 162
    aput-byte v3, v0, v8

    goto :goto_3

    .line 164
    :cond_7
    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    if-ne v1, v3, :cond_8

    .line 165
    aput-byte v4, v0, v8

    .line 167
    :cond_8
    :goto_3
    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->playType:I

    int-to-byte v1, v1

    aput-byte v1, v0, v10

    .line 168
    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    const v2, 0x5265c00

    rem-int/2addr v1, v2

    const v2, 0x36ee80

    div-int/2addr v1, v2

    .line 169
    iget v4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    rem-int/2addr v4, v2

    const v5, 0xea60

    div-int/2addr v4, v5

    .line 170
    iget v6, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    rem-int/2addr v6, v5

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "Ihu12DashBoard"

    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ihu12:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " totalHours "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " totalMinutes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " totalSeconds "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v8, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    const v10, 0x5265c00

    rem-int/2addr v8, v10

    div-int/2addr v8, v2

    .line 173
    iget v10, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    rem-int/2addr v10, v2

    div-int/2addr v10, v5

    .line 174
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    rem-int/2addr v2, v5

    div-int/lit16 v2, v2, 0x3e8

    const-string v5, "Ihu12DashBoard"

    .line 175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ihu12:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " currHours "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " currMinutes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " currSeconds "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-byte v1, v1

    .line 176
    aput-byte v1, v0, v7

    const/4 v1, 0x7

    int-to-byte v4, v4

    .line 177
    aput-byte v4, v0, v1

    int-to-byte v1, v6

    const/16 v4, 0x8

    .line 178
    aput-byte v1, v0, v4

    int-to-byte v1, v8

    .line 179
    aput-byte v1, v0, v9

    const/16 v1, 0xa

    int-to-byte v4, v10

    .line 180
    aput-byte v4, v0, v1

    const/16 v1, 0xb

    int-to-byte v2, v2

    .line 181
    aput-byte v2, v0, v1

    const/16 v1, 0xc

    .line 182
    iget-boolean p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isMute:Z

    xor-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static getDashBoardSourceDataByteArray(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 4

    const/16 v0, 0x12

    .line 84
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    aput-byte v1, v0, v2

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "Ihu12DashBoard"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCU_IHU12  getDashBoardSourceDataByteArray->source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",info is null continue"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 14

    const/16 v0, 0x8

    .line 257
    new-array v1, v0, [B

    const/16 v2, 0x18

    const/16 v3, 0x1b

    const/16 v4, 0x11

    const/16 v5, -0x7c

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_e

    .line 412
    :pswitch_0
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_TIMES info is not btInfo"

    .line 413
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 416
    :cond_0
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 417
    iget p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    const v1, 0x5265c00

    rem-int/2addr p0, v1

    const v1, 0x36ee80

    div-int/2addr p0, v1

    .line 418
    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    rem-int/2addr v2, v1

    const v1, 0xea60

    div-int/2addr v2, v1

    .line 419
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    rem-int/2addr p1, v1

    div-int/lit16 p1, p1, 0x3e8

    const-string v1, "Ihu12DashBoard"

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INFO_TYPE_PHONE_TIMES: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currHours "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currMinutes "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currSeconds "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-array v1, v0, [B

    aput-byte v5, v1, v12

    aput-byte v4, v1, v9

    aput-byte v7, v1, v8

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v10

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v7

    int-to-byte p0, v2

    aput-byte p0, v1, v11

    int-to-byte p0, p1

    aput-byte p0, v1, v6

    goto/16 :goto_e

    .line 388
    :pswitch_1
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_NAME info is not BtInfo"

    .line 389
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 392
    :cond_1
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 393
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 394
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_1

    :cond_3
    move p1, v12

    .line 397
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 399
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_2

    :cond_4
    move p1, v12

    :cond_5
    :goto_2
    add-int/lit8 v0, p1, 0x5

    .line 401
    new-array v1, v0, [B

    .line 402
    aput-byte v5, v1, v12

    .line 403
    aput-byte v4, v1, v9

    .line 404
    aput-byte v10, v1, v8

    int-to-byte v0, p1

    .line 405
    aput-byte v0, v1, v10

    .line 406
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 408
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 364
    :pswitch_2
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_6

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_NUMBER info is not BtInfo"

    .line 365
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 368
    :cond_6
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 369
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_8

    .line 370
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_4

    :cond_8
    move p1, v12

    .line 373
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 375
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_5

    :cond_9
    move p1, v12

    :cond_a
    :goto_5
    add-int/lit8 v0, p1, 0x5

    .line 377
    new-array v1, v0, [B

    .line 378
    aput-byte v5, v1, v12

    .line 379
    aput-byte v4, v1, v9

    .line 380
    aput-byte v8, v1, v8

    int-to-byte v0, p1

    .line 381
    aput-byte v0, v1, v10

    .line 382
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 384
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 309
    :pswitch_3
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_b

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_INFO info is not BtInfo"

    .line 310
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 313
    :cond_b
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 314
    new-array v1, v0, [B

    aput-byte v5, v1, v12

    aput-byte v4, v1, v9

    aput-byte v9, v1, v8

    .line 319
    iget-byte p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    if-eqz p0, :cond_c

    aput-byte v9, v1, v10

    goto :goto_6

    :cond_c
    aput-byte v12, v1, v10

    :goto_6
    aput-byte v12, v1, v7

    aput-byte v12, v1, v11

    .line 330
    iget-byte p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    if-eqz p0, :cond_d

    packed-switch p0, :pswitch_data_1

    aput-byte v12, v1, v6

    goto :goto_7

    :pswitch_4
    aput-byte v11, v1, v6

    goto :goto_7

    :pswitch_5
    aput-byte v7, v1, v6

    goto :goto_7

    :pswitch_6
    aput-byte v10, v1, v6

    goto :goto_7

    :pswitch_7
    aput-byte v8, v1, v6

    goto :goto_7

    :pswitch_8
    aput-byte v9, v1, v6

    goto :goto_7

    :cond_d
    aput-byte v12, v1, v6

    :goto_7
    const/4 p0, 0x7

    aput-byte v9, v1, p0

    .line 356
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-ne v0, v7, :cond_e

    aput-byte v8, v1, p0

    .line 359
    :cond_e
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-ne p1, v11, :cond_19

    aput-byte v10, v1, p0

    goto/16 :goto_e

    .line 285
    :pswitch_9
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez p0, :cond_f

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - SONG_ARTIST info is not MediaInfo"

    .line 286
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 289
    :cond_f
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 290
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez p0, :cond_10

    const-string p0, ""

    goto :goto_8

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_11

    .line 291
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_9

    :cond_11
    move p1, v12

    .line 294
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_13

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 296
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_a

    :cond_12
    move p1, v12

    :cond_13
    :goto_a
    add-int/lit8 v0, p1, 0x5

    .line 298
    new-array v1, v0, [B

    .line 299
    aput-byte v5, v1, v12

    const/16 v0, 0x10

    .line 300
    aput-byte v0, v1, v9

    .line 301
    aput-byte v10, v1, v8

    int-to-byte v0, p1

    .line 302
    aput-byte v0, v1, v10

    .line 303
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 305
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 260
    :pswitch_a
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez p0, :cond_14

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - SONG_TITLE info is not MediaInfo"

    .line 261
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 264
    :cond_14
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 266
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-nez p0, :cond_15

    const-string p0, ""

    goto :goto_b

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_16

    .line 267
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_c

    :cond_16
    move p1, v12

    .line 270
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_18

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 272
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_d

    :cond_17
    move p1, v12

    :cond_18
    :goto_d
    add-int/lit8 v0, p1, 0x5

    .line 274
    new-array v1, v0, [B

    .line 275
    aput-byte v5, v1, v12

    const/16 v0, 0x10

    .line 276
    aput-byte v0, v1, v9

    .line 277
    aput-byte v8, v1, v8

    int-to-byte v0, p1

    .line 278
    aput-byte v0, v1, v10

    .line 279
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 281
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_e
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B
    .locals 12

    const/16 v0, 0x8

    .line 694
    new-array v1, v0, [B

    if-nez p1, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - PHONE_NUMBER info is null"

    .line 696
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/16 v2, 0x18

    const/16 v3, 0x1b

    const/4 v4, 0x4

    const/16 v5, 0x12

    const/16 v6, -0x7c

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_8

    .line 776
    :pswitch_0
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    if-nez p0, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.caculationState is null"

    .line 777
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 780
    :cond_1
    new-array v1, v0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v7, v1, v9

    .line 784
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    goto/16 :goto_8

    .line 749
    :pswitch_1
    instance-of p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;

    if-nez p0, :cond_2

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo"

    .line 750
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 753
    :cond_2
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p0, ""

    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    .line 757
    :cond_3
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    .line 758
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_1

    :cond_5
    move p1, v11

    .line 761
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 763
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_2

    :cond_6
    move p1, v11

    :cond_7
    :goto_2
    add-int/lit8 v0, p1, 0x5

    .line 765
    new-array v1, v0, [B

    .line 766
    aput-byte v6, v1, v11

    .line 767
    aput-byte v5, v1, v10

    .line 768
    aput-byte v4, v1, v9

    int-to-byte v0, p1

    .line 769
    aput-byte v0, v1, v8

    .line 770
    aput-byte v11, v1, v4

    if-eqz p1, :cond_10

    .line 772
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v11, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    :cond_8
    :goto_3
    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.nextRoadName is null"

    .line 754
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 722
    :pswitch_2
    instance-of p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;

    if-nez p0, :cond_9

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo"

    .line 723
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 726
    :cond_9
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    if-eqz p0, :cond_f

    const-string p0, ""

    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_7

    .line 730
    :cond_a
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    if-nez p0, :cond_b

    const-string p0, ""

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_c

    .line 731
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_5

    :cond_c
    move p1, v11

    .line 734
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 735
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 736
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_6

    :cond_d
    move p1, v11

    :cond_e
    :goto_6
    add-int/lit8 v0, p1, 0x5

    .line 738
    new-array v1, v0, [B

    .line 739
    aput-byte v6, v1, v11

    .line 740
    aput-byte v5, v1, v10

    .line 741
    aput-byte v8, v1, v9

    int-to-byte v0, p1

    .line 742
    aput-byte v0, v1, v8

    .line 743
    aput-byte v11, v1, v4

    if-eqz p1, :cond_10

    .line 745
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v11, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_f
    :goto_7
    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.roadName is null"

    .line 727
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 715
    :pswitch_3
    new-array v1, v0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v9, v1, v9

    .line 719
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->compass:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    goto :goto_8

    :pswitch_4
    const/16 p0, 0xb

    .line 701
    new-array v1, p0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v10, v1, v9

    .line 705
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->seaLevel:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    .line 706
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->gpsSignal:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    .line 707
    iget p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->azimuthInfo:I

    shr-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v7

    const/4 p0, 0x6

    .line 708
    iget v2, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->azimuthInfo:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    const/4 p0, 0x7

    .line 709
    iget-object v2, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v2, v2, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    .line 710
    iget p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_TBT:I

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    const/16 p0, 0x9

    .line 711
    iget v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_RC:I

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    const/16 p0, 0xa

    .line 712
    iget p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_WS:I

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    :cond_10
    :goto_8
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNaviGuideUpdateDataProtocol(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;)[B
    .locals 6

    const/16 v0, 0x8

    .line 798
    new-array v1, v0, [B

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v0, "getNaviGuideUpdateDataProtocol() - updateData is null"

    .line 800
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/16 v1, 0x12

    .line 803
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x7c

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/4 v1, 0x2

    const/4 v3, 0x6

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    .line 807
    iget-object v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v1, 0x4

    .line 809
    iget v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    const/16 v5, 0x10

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v1, 0x5

    .line 810
    iget v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    shr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 811
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x7

    .line 813
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 814
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    shr-int/2addr v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    const/16 v1, 0x9

    .line 815
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xa

    .line 817
    iget-object v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviSumDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xb

    .line 819
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviMinitue:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xc

    .line 821
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviHour:I

    shr-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    .line 822
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviHour:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xe

    .line 824
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xf

    .line 825
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 826
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    const/16 v0, 0x11

    .line 827
    iget p0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    return-object v2
.end method

.method public static isBtInfoChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v1, "isBtInfoChange()  BtInfo is null)"

    .line 54
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 57
    :cond_0
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 58
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string v1, "isBtInfoChange()  BtInfo.mBtCallNumber is null)"

    .line 59
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 63
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)V

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-direct {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;-><init>()V

    sput-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    :goto_1
    const-string p0, "Ihu12DashBoard"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBtInfoChange() isBtInfoChange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isCurrentSource(I)Z
    .locals 1

    .line 20
    sget v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 4

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 25
    iget-object v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 30
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    sget p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    if-eq p0, v1, :cond_2

    .line 38
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->setDashBoardSource(I)V

    goto :goto_1

    .line 41
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-eqz p0, :cond_3

    .line 42
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    .line 31
    :cond_4
    :goto_0
    new-instance v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;-><init>(I)V

    sput-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    .line 32
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 33
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V

    :goto_1
    const-string p0, "Ihu12DashBoard"

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMediaChange()-3 mLastSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAbsInfo.getDashBoardSource()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMediaUpdate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    :goto_2
    const-string p0, "Ihu12DashBoard"

    const-string v0, "isMediaChange() USB MediaInfo.title is null or AbsDashBoardInfo is not MediaInfo"

    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static setCurrentSource(I)V
    .locals 0

    .line 17
    sput p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    return-void
.end method
