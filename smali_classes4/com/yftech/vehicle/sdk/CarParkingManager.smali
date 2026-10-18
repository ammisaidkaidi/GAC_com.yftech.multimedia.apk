.class public Lcom/yftech/vehicle/sdk/CarParkingManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarParkingManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarParking;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarParkingManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarParkingManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarParkingManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarParkingManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarParkingManager;->sMe:Lcom/yftech/vehicle/sdk/CarParkingManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarParkingManager;->sMe:Lcom/yftech/vehicle/sdk/CarParkingManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarParkingManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarParkingManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarParkingManager;->sMe:Lcom/yftech/vehicle/sdk/CarParkingManager;
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
.method public getPASDistanceFL()I
    .locals 1

    const/16 v0, 0x88

    .line 106
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceFLMiddle()I
    .locals 1

    const/16 v0, 0x83

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceFLSide()I
    .locals 1

    const/16 v0, 0x8c

    .line 134
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceFR()I
    .locals 1

    const/16 v0, 0x87

    .line 99
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceFRMiddle()I
    .locals 1

    const/16 v0, 0x84

    .line 78
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceFRSide()I
    .locals 1

    const/16 v0, 0x8b

    .line 127
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRL()I
    .locals 1

    const/16 v0, 0x86

    .line 92
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRLMiddle()I
    .locals 1

    const/16 v0, 0x81

    .line 57
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRLSide()I
    .locals 1

    const/16 v0, 0x8a

    .line 120
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRR()I
    .locals 1

    const/16 v0, 0x85

    .line 85
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRRMiddle()I
    .locals 1

    const/16 v0, 0x82

    .line 64
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASDistanceRRSide()I
    .locals 1

    const/16 v0, 0x89

    .line 113
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPASErrorFlagOfEEPROM()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x91

    .line 174
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASErrorFlagOfIGNVoltage()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x92

    .line 182
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASErrorFlagRL()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x90

    .line 166
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASErrorFlagRLMiddle()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x8e

    .line 150
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASErrorFlagRR()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x8f

    .line 158
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASErrorFlagRRMiddle()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    const/16 v0, 0x8d

    .line 142
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASSystemFailureFlag()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;
    .locals 1

    const/16 v0, 0x7f

    .line 42
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    move-result-object p0

    return-object p0
.end method

.method public getPASSystemType()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
    .locals 1

    const/16 v0, 0x7e

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    move-result-object p0

    return-object p0
.end method

.method public getPASWarnTone()Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;
    .locals 1

    const/16 v0, 0x80

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    move-result-object p0

    return-object p0
.end method

.method public getParkingRadarAlarmEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0xfe

    .line 190
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getParkingVoiceSwitchEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x100

    .line 205
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public performParkingRadarAlarmButtonClick()Z
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarParkingManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setParkingVoiceSwitchEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x101

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;)V
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
