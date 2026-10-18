.class public abstract Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;
.super Ljava/lang/Object;
.source "CarSeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarSeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarSeatListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLockRLChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x15b
    .end annotation

    return-void
.end method

.method public onChildLockRRChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x15d
    .end annotation

    return-void
.end method

.method public onCurrPepsPuidChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrPepsPuid;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1f5
    .end annotation

    return-void
.end method

.method public onHeatLevelFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x57
    .end annotation

    return-void
.end method

.method public onHeatLevelFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x58
    .end annotation

    return-void
.end method

.method public onHeatLevelRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x59
    .end annotation

    return-void
.end method

.method public onHeatLevelRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5a
    .end annotation

    return-void
.end method

.method public onHeatVentAutoModeFLStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5f
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHeatVentAutoModeFRStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x60
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHeatVentAutoModeRLStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x61
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHeatVentAutoModeRRStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x62
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onMemSysOperationReqCmdChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$MemSysOperationReqCmd;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1fa
    .end annotation

    return-void
.end method

.method public onSeatMassageLevelRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x128
    .end annotation

    return-void
.end method

.method public onSeatMassageLevelRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x12e
    .end annotation

    return-void
.end method

.method public onSeatMassageModeRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x126
    .end annotation

    return-void
.end method

.method public onSeatMassageModeRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x12c
    .end annotation

    return-void
.end method

.method public onSeatMassageOnOffRLChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x124
    .end annotation

    return-void
.end method

.method public onSeatMassageOnOffRRChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x12a
    .end annotation

    return-void
.end method

.method public onSeatOperationStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatOperationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1f9
    .end annotation

    return-void
.end method

.method public onVentLevelFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5b
    .end annotation

    return-void
.end method

.method public onVentLevelFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5c
    .end annotation

    return-void
.end method

.method public onVentLevelRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5d
    .end annotation

    return-void
.end method

.method public onVentLevelRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x5e
    .end annotation

    return-void
.end method
