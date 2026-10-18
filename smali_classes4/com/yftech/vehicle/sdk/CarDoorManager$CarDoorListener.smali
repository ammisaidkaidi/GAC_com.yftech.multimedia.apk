.class public abstract Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;
.super Ljava/lang/Object;
.source "CarDoorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarDoorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarDoorListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x94
    .end annotation

    return-void
.end method

.method public onDriverDoorLockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x192
    .end annotation

    return-void
.end method

.method public onDriverDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xbc
    .end annotation

    return-void
.end method

.method public onEngineHoodStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$EngineHoodState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x11b
    .end annotation

    return-void
.end method

.method public onHoodDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd2
    .end annotation

    return-void
.end method

.method public onLockUnlockSoundEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x96
    .end annotation

    return-void
.end method

.method public onPEPSAutoTrunkOpenChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x99
    .end annotation

    return-void
.end method

.method public onPEPSUnlockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x97
    .end annotation

    return-void
.end method

.method public onPEPSWalkAwayLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x98
    .end annotation

    return-void
.end method

.method public onPSDDoorSpeedLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9e
    .end annotation

    return-void
.end method

.method public onPSDDoorSpeedRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9f
    .end annotation

    return-void
.end method

.method public onPassengerDoorLockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x193
    .end annotation

    return-void
.end method

.method public onPassengerDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd3
    .end annotation

    return-void
.end method

.method public onRearLeftDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd4
    .end annotation

    return-void
.end method

.method public onRearRightDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd5
    .end annotation

    return-void
.end method

.method public onRemoteUnlockModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x93
    .end annotation

    return-void
.end method

.method public onSlidingDoorModeAutoStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xe3
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onSlidingDoorOperationLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf3
    .end annotation

    return-void
.end method

.method public onSlidingDoorOperationRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf5
    .end annotation

    return-void
.end method

.method public onSlidingDoorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf2
    .end annotation

    return-void
.end method

.method public onSlidingDoorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf4
    .end annotation

    return-void
.end method

.method public onSpeedAutoLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x95
    .end annotation

    return-void
.end method

.method public onTailDoorModeStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9d
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onTailDoorPercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9a
    .end annotation

    return-void
.end method

.method public onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9c
    .end annotation

    return-void
.end method

.method public onTailDoorTravelPercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x9b
    .end annotation

    return-void
.end method

.method public onTrunkDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd6
    .end annotation

    return-void
.end method
