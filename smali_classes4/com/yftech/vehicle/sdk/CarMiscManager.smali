.class public Lcom/yftech/vehicle/sdk/CarMiscManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarMiscManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarMisc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarMiscManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarMiscManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarMiscManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarMiscManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarMiscManager;->sMe:Lcom/yftech/vehicle/sdk/CarMiscManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarMiscManager;->sMe:Lcom/yftech/vehicle/sdk/CarMiscManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarMiscManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarMiscManager;->sMe:Lcom/yftech/vehicle/sdk/CarMiscManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAteCarType()Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;
    .locals 1

    const/16 v0, 0x26d8

    .line 370
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;

    move-result-object p0

    return-object p0
.end method

.method public getCarInfoAvmState()Z
    .locals 1

    const/16 v0, 0x26f1

    .line 229
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCarInfoCameraRearViewState()Z
    .locals 1

    const/16 v0, 0x26f2

    .line 214
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeviceExtAvmState()Z
    .locals 1

    const/16 v0, 0x26e7

    .line 277
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeviceNodeState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;
    .locals 1

    const/16 v0, 0x26e8

    .line 261
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;

    move-result-object p0

    return-object p0
.end method

.method public getFactoryModeDevelopModeEnabled()Z
    .locals 1

    const/16 v0, 0x26f7

    .line 199
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFactoryModeTransportMode()Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;
    .locals 1

    const/16 v0, 0x26d5

    .line 378
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardBacklight()I
    .locals 1

    const/16 v0, 0x2709

    .line 107
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getScreenBacklight()I
    .locals 1

    const/16 v0, 0x2708

    .line 79
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTBoxBatteryState()Z
    .locals 1

    const/16 v0, 0x26ee

    .line 253
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTBoxConnectState()Z
    .locals 1

    const/16 v0, 0x26f0

    .line 237
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTBoxECallState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;
    .locals 1

    const/16 v0, 0x26ef

    .line 245
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAteCarType(Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;)Z
    .locals 1

    .line 362
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;->value:I

    const/16 v0, 0x26d8

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setCarDtcState(II)Z
    .locals 2

    const/4 v0, 0x2

    .line 178
    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    const/16 p1, 0x26fb

    invoke-virtual {p0, p1, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setCheckFactoryModeState()Z
    .locals 2

    const/16 v0, 0x26fc

    const/4 v1, 0x1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setDeviceExtAvmState(Z)Z
    .locals 1

    const/16 v0, 0x26e7

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setFactoryModeCanStateEnabled(Z)Z
    .locals 1

    const/16 v0, 0x2703

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setFactoryModeCarKitCreateDate(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 292
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x4

    .line 298
    :try_start_1
    new-array p1, p1, [B

    .line 299
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, p1, v4

    const/4 v2, 0x2

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    const/4 v2, 0x3

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    const-string v1, "CarMiscManager"

    .line 303
    invoke-static {p1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x26e0

    .line 304
    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarMiscManager"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFactoryModeCarKitCreateDate() error \u2014> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception p0

    const-string v1, "CarMiscManager"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFactoryModeCarKitCreateDate() SimpleDateFormat.parse([ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]) error \uff0cis not yyyyMMdd \u2014> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const-string p0, "CarMiscManager"

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFactoryModeCarKitCreateDate()  dateString is null or length!=8 error ,date ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setFactoryModeClearDtc(Z)Z
    .locals 1

    const/16 v0, 0x26f4

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setFactoryModeDevelopModeEnabled(ZZ)Z
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/16 p2, 0x26f7

    .line 192
    invoke-virtual {p0, p2, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setFactoryModeEcuAndProductLineSerial(IILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const v1, 0xffffff

    if-le p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_4

    const/16 v1, 0xff

    if-le p2, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p3, :cond_3

    .line 327
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto/16 :goto_0

    .line 333
    :cond_2
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyMMdd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p3, 0x8

    .line 339
    :try_start_1
    new-array p3, p3, [B

    shr-int/lit8 v4, p1, 0x10

    and-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    shr-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v1

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, p3, v5

    const/4 v4, 0x2

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v4

    const/4 p1, 0x3

    shr-int/lit8 v4, p2, 0x8

    and-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p3, p1

    const/4 p1, 0x4

    and-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    const/4 p1, 0x5

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p3, v3

    const/4 p1, 0x7

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    const-string p1, "CarMiscManager"

    .line 348
    invoke-static {p3}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x26dd

    .line 349
    invoke-virtual {p0, p1, p3}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarMiscManager"

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFactoryModeEcuAndProductLineSerial() error \u2014> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception p0

    const-string p1, "CarMiscManager"

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFactoryModeEcuAndProductLineSerial() SimpleDateFormat.parse([ "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ]) error \uff0cis not yyyyMMdd \u2014> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_0
    const-string p0, "CarMiscManager"

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFactoryModeEcuAndProductLineSerial()  dateString is not \u3010 yyMMdd \u3011 error ,dateString ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    const-string p0, "CarMiscManager"

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFactoryModeEcuAndProductLineSerial()  ecuSerial = 0 or > 255 error ,proLineSerial ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_2
    const-string p0, "CarMiscManager"

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFactoryModeEcuAndProductLineSerial()  ecuSerial = 0 or > 16777215 error ,ecuSerial ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setFactoryModeErrorCodeEnabled(Z)Z
    .locals 1

    const/16 v0, 0x2705

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setFactoryModeReSetDashBoardFactorySetting()Z
    .locals 2

    const/16 v0, 0x26f3

    const/4 v1, 0x3

    .line 165
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFactoryModeReSetFactorySettingNotify()Z
    .locals 2

    const/16 v0, 0x26f3

    const/4 v1, 0x1

    .line 153
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFactoryModeUUID(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "CarMiscManager"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFactoryModeUUID() uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CarMiscManager"

    const-string p1, "setFactoryModeUUID() error \u2014> uuid is empty"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v2, v0, 0x4

    .line 398
    new-array v2, v2, [B

    const/16 v3, -0x6b

    .line 399
    aput-byte v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xb

    .line 400
    aput-byte v4, v2, v3

    const/4 v3, 0x2

    .line 401
    aput-byte v3, v2, v3

    const/4 v3, 0x3

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 404
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v3, 0x4

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x26d3

    .line 405
    invoke-virtual {p0, p1, v2}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setFastSleep()Z
    .locals 2

    const/4 v0, 0x4

    .line 385
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x26d3

    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x71t
        0x0t
        0x0t
        0x4t
    .end array-data
.end method

.method public setKeyboardBacklight(I)Z
    .locals 1

    int-to-short p1, p1

    const/16 v0, 0x2709

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IS)Z

    move-result p0

    return p0
.end method

.method public setQueryCarInfoAvmState()Z
    .locals 2

    const/16 v0, 0x26f1

    const/4 v1, 0x1

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setQueryCarInfoCameraRearViewState()Z
    .locals 2

    const/16 v0, 0x26f2

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setScreenBacklight(I)Z
    .locals 1

    const/16 v0, 0x2708

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setScreenTouchEnabled(Z)Z
    .locals 1

    const/16 v0, 0x2706

    .line 100
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setSystemTime(Ljava/util/Calendar;Z)Z
    .locals 9

    int-to-byte v0, p2

    if-eqz p2, :cond_0

    const/16 v1, 0xb

    .line 49
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    goto :goto_0

    :goto_1
    int-to-byte v1, v1

    const-string v2, "CarMiscManager"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSystemTime() isHour24Val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hourVal ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_4

    const/16 p2, 0x9

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    const-string v6, "CarMiscManager"

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSystemTime() isAm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", am_pm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    if-eqz v5, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    add-int/lit8 v1, v1, 0xc

    :cond_4
    :goto_3
    const/16 p2, 0x270a

    const/4 v5, 0x7

    .line 64
    new-array v5, v5, [B

    .line 65
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7d0

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const/4 v3, 0x2

    .line 66
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v4, 0x5

    .line 67
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const/4 v3, 0x3

    int-to-byte v1, v1

    aput-byte v1, v5, v3

    const/4 v1, 0x4

    .line 69
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    const/16 v1, 0xd

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v5, v4

    const/4 p1, 0x6

    aput-byte v0, v5, p1

    .line 64
    invoke-virtual {p0, p2, v5}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public turnScreenOnOff(Z)Z
    .locals 1

    const/16 v0, 0x2707

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
