.class public Lcom/yftech/vehicle/sdk/CarDoorManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarDoorManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarDoor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDoorManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarDoorManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarDoorManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarDoorManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarDoorManager;->sMe:Lcom/yftech/vehicle/sdk/CarDoorManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarDoorManager;->sMe:Lcom/yftech/vehicle/sdk/CarDoorManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDoorManager;->sMe:Lcom/yftech/vehicle/sdk/CarDoorManager;
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
.method public getAutoUnlock()Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;
    .locals 1

    const/16 v0, 0x94

    .line 106
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    move-result-object p0

    return-object p0
.end method

.method public getDriverDoorLock()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;
    .locals 1

    const/16 v0, 0x192

    .line 367
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;

    move-result-object p0

    return-object p0
.end method

.method public getDriverDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xbc

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public getEngineHoodState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$EngineHoodState;
    .locals 1

    const/16 v0, 0x11b

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$EngineHoodState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$EngineHoodState;

    move-result-object p0

    return-object p0
.end method

.method public getHoodDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xd2

    .line 42
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public getLockUnlockSoundEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x96

    .line 137
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPEPSAutoTrunkOpen()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;
    .locals 1

    const/16 v0, 0x99

    .line 182
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    move-result-object p0

    return-object p0
.end method

.method public getPEPSUnlockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x97

    .line 152
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPEPSWalkAwayLockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x98

    .line 167
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPSDDoorSpeedL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;
    .locals 1

    const/16 v0, 0x9e

    .line 273
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object p0

    return-object p0
.end method

.method public getPSDDoorSpeedR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;
    .locals 1

    const/16 v0, 0x9f

    .line 289
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object p0

    return-object p0
.end method

.method public getPassengerDoorLock()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;
    .locals 1

    const/16 v0, 0x193

    .line 375
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;

    move-result-object p0

    return-object p0
.end method

.method public getPassengerDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xd3

    .line 58
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public getRearLeftDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xd4

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public getRearRightDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xd5

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteUnlockMode()Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;
    .locals 1

    const/16 v0, 0x93

    .line 90
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorOperationL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;
    .locals 1

    const/16 v0, 0xf3

    .line 343
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorOperationR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;
    .locals 1

    const/16 v0, 0xf5

    .line 359
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorStateL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 1

    const/16 v0, 0xf2

    .line 335
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorStateR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 1

    const/16 v0, 0xf4

    .line 351
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedAutoLockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x95

    .line 122
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getTailDoorPercent()I
    .locals 1

    const/16 v0, 0x9a

    .line 219
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTailDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 1

    const/16 v0, 0x9c

    .line 234
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p0

    return-object p0
.end method

.method public getTailDoorTravelPercent()I
    .locals 1

    const/16 v0, 0x9b

    .line 226
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTrunkDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    const/16 v0, 0xd6

    .line 82
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object p0

    return-object p0
.end method

.method public isSlidingDoorModeAutoEnabled()Z
    .locals 1

    const/16 v0, 0xe3

    .line 304
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isTailDoorModeEnabled()Z
    .locals 1

    const/16 v0, 0x9d

    .line 241
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public performTailDoorMaxPositionMemoryButtonClick()Z
    .locals 2

    const/16 v0, 0x121

    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performTailDoorPositionMemoryClearButtonClick()Z
    .locals 2

    const/16 v0, 0x11e

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoUnlock(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z
    .locals 1

    .line 114
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->value:I

    const/16 v0, 0x35

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setLockUnlockSoundEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x37

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPEPSAutoTrunkOpen(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)Z
    .locals 1

    .line 190
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->value:I

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPEPSUnlockEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x38

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPEPSWalkAwayLockEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x39

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPLGMControl(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;)Z
    .locals 1

    .line 249
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->value:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPLGMFunction(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;)Z
    .locals 1

    .line 265
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->value:I

    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPLGMMaxLevel(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;)Z
    .locals 1

    .line 257
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->value:I

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPSDDoorSpeedL(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)Z
    .locals 1

    .line 281
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->value:I

    const/16 v0, 0xe5

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPSDDoorSpeedR(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)Z
    .locals 1

    .line 297
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->value:I

    const/16 v0, 0xe6

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRemoteUnlockMode(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)Z
    .locals 1

    .line 98
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;->value:I

    const/16 v0, 0x34

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSlidingDoorCmdL(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;)Z
    .locals 1

    .line 327
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    const/16 v0, 0xf1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSlidingDoorCmdR(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;)Z
    .locals 1

    .line 319
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    const/16 v0, 0xf0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSlidingDoorModeAutoEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0xe4

    .line 311
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSpeedAutoLockEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x36

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z
    .locals 1

    .line 198
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
