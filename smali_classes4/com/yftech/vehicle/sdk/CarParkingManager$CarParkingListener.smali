.class public abstract Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;
.super Ljava/lang/Object;
.source "CarParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarParkingListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPASDistanceFLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x88
    .end annotation

    return-void
.end method

.method public onPASDistanceFLMiddleChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x83
    .end annotation

    return-void
.end method

.method public onPASDistanceFLSideChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8c
    .end annotation

    return-void
.end method

.method public onPASDistanceFRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x87
    .end annotation

    return-void
.end method

.method public onPASDistanceFRMiddleChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x84
    .end annotation

    return-void
.end method

.method public onPASDistanceFRSideChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8b
    .end annotation

    return-void
.end method

.method public onPASDistanceRLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x86
    .end annotation

    return-void
.end method

.method public onPASDistanceRLMiddleChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x81
    .end annotation

    return-void
.end method

.method public onPASDistanceRLSideChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8a
    .end annotation

    return-void
.end method

.method public onPASDistanceRRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x85
    .end annotation

    return-void
.end method

.method public onPASDistanceRRMiddleChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x82
    .end annotation

    return-void
.end method

.method public onPASDistanceRRSideChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x89
    .end annotation

    return-void
.end method

.method public onPASErrorFlagOfEEPROMChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x91
    .end annotation

    return-void
.end method

.method public onPASErrorFlagOfIGNVoltageChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x92
    .end annotation

    return-void
.end method

.method public onPASErrorFlagRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x90
    .end annotation

    return-void
.end method

.method public onPASErrorFlagRLMiddleChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8e
    .end annotation

    return-void
.end method

.method public onPASErrorFlagRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8f
    .end annotation

    return-void
.end method

.method public onPASErrorFlagRRMiddleChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x8d
    .end annotation

    return-void
.end method

.method public onPASSystemFailureFlagChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7f
    .end annotation

    return-void
.end method

.method public onPASSystemTypeChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7e
    .end annotation

    return-void
.end method

.method public onPASWarnToneChanged(Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x80
    .end annotation

    return-void
.end method

.method public onParkingRadarAlarmEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xfe
    .end annotation

    return-void
.end method

.method public onParkingVoiceSwitchEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x100
    .end annotation

    return-void
.end method
