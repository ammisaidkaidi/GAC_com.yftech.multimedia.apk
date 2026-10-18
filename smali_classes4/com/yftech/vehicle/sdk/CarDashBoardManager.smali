.class public Lcom/yftech/vehicle/sdk/CarDashBoardManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarDashBoardManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarDashBoardManager$CarDashBoardListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDashBoardManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarDashBoardManager;


# instance fields
.field private mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;


# direct methods
.method private constructor <init>(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    .line 25
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    .line 28
    iput-object p1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarDashBoardManager;
    .locals 3

    const-class v0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "ro.product.name"

    .line 40
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->sMe:Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, "CBIHU"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CB_IHU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-direct {v1, v2}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;-><init>(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->sMe:Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-direct {v1, v2}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;-><init>(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->sMe:Lcom/yftech/vehicle/sdk/CarDashBoardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 50
    :catch_0
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->sMe:Lcom/yftech/vehicle/sdk/CarDashBoardManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDashBoardLanguage()I
    .locals 1

    const/16 v0, 0x26f8

    .line 397
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getDashBoardSource()I
    .locals 1

    const/16 v0, 0x26fa

    .line 405
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getSetItemUnitInfo()Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;
    .locals 1

    const/16 v0, 0x26f9

    .line 368
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->getSignalDataValue(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->valueOf([B)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarDashBoardManager$CarDashBoardListener;)V
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setDashBoardAudioSourceEnableInfo(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "CarDashBoardManager"

    const-string p1, "setDashBoardAudioSourceEnableInfo()  info is null "

    .line 431
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x26dc

    .line 434
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->getDataArray()[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    const-string p1, "CarDashBoardManager"

    const-string v1, "setDashBoardAudioSourceEnableInfo() Exception "

    .line 436
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDashBoardFMFreqInfo(I)Z
    .locals 3

    const/16 v0, 0x32

    const/16 v1, 0x215

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setDashBoardFMFreqInfo: illegality freq"

    .line 490
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 485
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x1

    .line 488
    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDashBoardItemUnit(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardItemUnitByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;)[B

    move-result-object p1

    const-string v1, "CarDashBoardManager"

    .line 351
    invoke-static {p1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string p0, "CarDashBoardManager"

    const-string p1, "setDashBoardItem() format data error ! "

    .line 353
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/16 v1, 0x26f9

    .line 356
    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    const-string v1, "setDashBoardItemUnit()  Exception "

    .line 358
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDashBoardLanguage(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "CarDashBoardManager"

    const-string p1, "setDashBoardLanguage() language ==0 unknown ! "

    .line 380
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardLanguageByteArray(I)[B

    move-result-object p1

    const-string v1, "CarDashBoardManager"

    .line 384
    invoke-static {p1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x26f8

    .line 385
    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    const-string p1, "CarDashBoardManager"

    const-string v1, "setDashBoardLanguage()  Exception "

    .line 387
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDashBoardMsgNotify(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;)Z
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardMsgDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setDashBoardMsgNotify() byteArr is null"

    .line 416
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "CarDashBoardManager"

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDashBoardMsgNotify-> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26e9

    .line 420
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setDashBoardSyncSystemTime(Ljava/util/Calendar;Z)Z
    .locals 9

    int-to-byte v0, p2

    if-eqz p2, :cond_0

    const/16 v1, 0xb

    .line 449
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    goto :goto_0

    :goto_1
    int-to-byte v1, v1

    const-string v2, "CarDashBoardManager"

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDashBoardSyncSystemTime() isHour24Val="

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

    .line 453
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    const-string v6, "CarDashBoardManager"

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDashBoardSyncSystemTime() isAm="

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
    const/16 p2, 0x26da

    const/4 v5, 0x7

    .line 464
    new-array v5, v5, [B

    .line 465
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7d0

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const/4 v3, 0x2

    .line 466
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v4, 0x5

    .line 467
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const/4 v3, 0x3

    int-to-byte v1, v1

    aput-byte v1, v5, v3

    const/4 v1, 0x4

    .line 469
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    const/16 v1, 0xd

    .line 470
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v5, v4

    const/4 p1, 0x6

    aput-byte v0, v5, p1

    .line 464
    invoke-virtual {p0, p2, v5}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setSendBtInfoToDashBoardForTboxCall(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)Z
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "MCU_IHU12 setSendBtInfoToDashBoardForTboxCall -ECall() byteArr is null"

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 231
    invoke-static {v0, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v0

    const-string v1, "CarDashBoardManager"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCU_IHU12 setSendBtInfoToDashBoardForTboxCall->INFO_TYPE_PHONE_INFO= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->getDashBoardSource()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x26d3

    .line 233
    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    if-eqz p1, :cond_2

    .line 234
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 235
    iput-byte v3, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;-><init>(Lcom/yftech/vehicle/sdk/CarDashBoardManager;Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public setSendDashBoardInfo(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 10

    const/4 v0, 0x0

    .line 123
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v1, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "MCU_IHU12 setSendDashBoardInfo() byteArr is null"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getDashBoardInfoDataByteArrayForIhu12(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    const-string v3, "CarDashBoardManager"

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCU_IHU12 setSendDashBoardInfo->DashBoardInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x26d3

    .line 130
    invoke-virtual {p0, v3, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    .line 131
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eq v1, v4, :cond_b

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_6

    .line 159
    :pswitch_0
    instance-of v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez v1, :cond_2

    const-string p0, "CarDashBoardManager"

    const-string p1, "getMediaInfo() - PHONE_NUMBER info is not BtInfo"

    .line 160
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 163
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    const/4 v4, 0x3

    .line 164
    invoke-static {v4, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v4

    const-string v6, "CarDashBoardManager"

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_INFO= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v8

    goto :goto_1

    :cond_3
    move v8, v2

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, v3, v4}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    .line 167
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->isBtInfoChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z

    move-result v4

    const/4 v6, 0x5

    if-eqz v4, :cond_7

    .line 168
    invoke-static {v6, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v4

    const-string v7, "CarDashBoardManager"

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_NAME= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v9

    goto :goto_2

    :cond_4
    move v9, v2

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, v3, v4}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    if-eqz v1, :cond_5

    .line 171
    iget-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    .line 172
    iput-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    :cond_5
    const/4 v4, 0x4

    .line 174
    invoke-static {v4, v1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v4

    const-string v7, "CarDashBoardManager"

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_NUMBER= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->getDashBoardSource()I

    move-result v9

    goto :goto_3

    :cond_6
    move v9, v2

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, v3, v4}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    :cond_7
    if-eqz v1, :cond_9

    .line 178
    iget-byte v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    const/4 v7, 0x7

    if-ne v4, v7, :cond_9

    const/4 v4, 0x6

    .line 179
    invoke-static {v4, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v4

    const-string v7, "CarDashBoardManager"

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_PHONE_TIMES= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v9

    goto :goto_4

    :cond_8
    move v9, v2

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0, v3, v4}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    :cond_9
    if-eqz v1, :cond_a

    .line 183
    iget-byte v3, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    if-ne v3, v6, :cond_a

    .line 184
    iput-byte v2, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    .line 185
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yftech/vehicle/sdk/CarDashBoardManager$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager$1;-><init>(Lcom/yftech/vehicle/sdk/CarDashBoardManager;Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 198
    :cond_a
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->setCurrentSource(I)V

    goto/16 :goto_6

    .line 140
    :cond_b
    :pswitch_1
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_c

    .line 141
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_d

    .line 142
    :cond_c
    move-object v1, p1

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    const-string v4, ""

    .line 143
    iput-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const-string v4, ""

    .line 144
    iput-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 147
    :cond_d
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->isMediaChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z

    move-result v1

    const-string v4, "CarDashBoardManager"

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCU_IHU12 setSendDashBoardInfo->isMediaChange-0 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",getDashBoardSource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_10

    .line 150
    invoke-static {v5, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    const-string v4, "CarDashBoardManager"

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_SONG_TITLE= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v7

    goto :goto_5

    :cond_e
    move v7, v2

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, v3, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    const/4 v1, 0x2

    .line 153
    invoke-static {v1, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    const-string v4, "CarDashBoardManager"

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCU_IHU12 setSendDashBoardInfo->INFO_TYPE_SONG_ARTIST= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v2

    :cond_f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v3, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    :cond_10
    :goto_6
    return v5

    .line 206
    :cond_11
    iget-object v1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardInfoDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    if-nez v1, :cond_12

    const-string p0, "CarDashBoardManager"

    const-string p1, "setSendDashBoardInfo() byteArr is null"

    .line 208
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    const-string v3, "CarDashBoardManager"

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSendDashBoardInfo->source= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v2

    :cond_13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2702

    .line 212
    invoke-virtual {p0, p1, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setSendDashBoardMusicArtImage([B)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setSendDashBoardMusicArtImage() imageBytes is null"

    .line 307
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x2701

    .line 310
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setSendDashBoardNaviGuideBaseInfoForIhu12(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setSendDashBoardNaviGuideInfoForIhu12() info is null"

    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 263
    :try_start_0
    invoke-static {v1, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B

    move-result-object v1

    const/16 v2, 0x26d3

    .line 264
    invoke-virtual {p0, v2, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    const/16 v1, 0x8

    .line 265
    invoke-static {v1, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B

    move-result-object v1

    .line 266
    invoke-virtual {p0, v2, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    const/16 v1, 0x9

    .line 267
    invoke-static {v1, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B

    const/16 v1, 0xa

    .line 269
    invoke-static {v1, p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B

    move-result-object p1

    .line 270
    invoke-virtual {p0, v2, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    const-string v1, "setSendDashBoardNaviGuideInfo()  Exception "

    .line 275
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setSendDashBoardNaviGuideInfo(IILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setSendDashBoardNaviGuideInfo() nextRoadName is null"

    .line 323
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 327
    :cond_0
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v2, v1, 0x2

    .line 328
    new-array v2, v2, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 329
    aput-byte p1, v2, v0

    const/4 p1, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 330
    aput-byte p2, v2, p1

    .line 331
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v0, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x2700

    .line 332
    invoke-virtual {p0, p1, v2}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    const-string p2, "setSendDashBoardNaviGuideInfo()  Exception "

    .line 334
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setSendDashBoardNaviGuideUpdateInfoForIhu12(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "CarDashBoardManager"

    const-string p1, "setSendDashBoardNaviGuideUpdateInfoForIhu12() info is null"

    .line 287
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 291
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getNaviGuideUpdateDataProtocol(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;)[B

    move-result-object p1

    const/16 v1, 0x26d3

    .line 292
    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    const-string v1, "setSendDashBoardNaviGuideUpdateInfoForIhu12()  Exception "

    .line 295
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setSendDashBoardSource(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 6

    const/4 v0, 0x0

    .line 62
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v1, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->setCurrentSource(I)V

    .line 64
    invoke-static {p1, p2}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getDashBoardSourceDataByteArray(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string p2, "CarDashBoardManager"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCU_IHU12  setSendDashBoardSource->source= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",byteArr=null return!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v3, "CarDashBoardManager"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCU_IHU12  setSendDashBoardSource->source= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",["

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ]"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x26d3

    .line 69
    invoke-virtual {p0, p2, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 77
    :pswitch_0
    new-instance p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    invoke-direct {p2, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;-><init>(I)V

    const-string p1, ""

    .line 78
    iput-object p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const-string p1, ""

    .line 79
    iput-object p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSendDashBoardInfo(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z

    :goto_2
    return v2

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardSourceDataByteArray(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 99
    array-length v3, v1

    if-gt v3, v2, :cond_3

    goto :goto_3

    :cond_3
    const-string p2, "CarDashBoardManager"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSendDashBoardSource->source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->isSendMediaInfoOnly()Z

    move-result p1

    const/16 p2, 0x2702

    if-eqz p1, :cond_4

    .line 105
    invoke-virtual {p0, p2, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    .line 107
    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    :cond_5
    :goto_3
    const-string p0, "CarDashBoardManager"

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSendDashBoardSource() byteArr is null info="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "CarDashBoardManager"

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarDashBoardManager$CarDashBoardListener;)V
    .locals 0

    .line 506
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
