.class public abstract Lcom/yftech/vehicle/sdk/MpuAvmManager$MpuAvmListener;
.super Ljava/lang/Object;
.source "MpuAvmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/MpuAvmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MpuAvmListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyAvmCalibrationStateByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26cd
    .end annotation

    return-void
.end method

.method public onNotifyAvmCameraStateByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCameraState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c7
    .end annotation

    return-void
.end method

.method public onNotifyAvmDisplayStateByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26ce
    .end annotation

    return-void
.end method

.method public onNotifyAvmFullScreenSwtichByRadarByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26cb
    .end annotation

    return-void
.end method

.method public onNotifyAvmFullScreenSwtichByTurnLightByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26cc
    .end annotation

    return-void
.end method

.method public onNotifyAvmHeartStateByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c8
    .end annotation

    return-void
.end method

.method public onNotifyAvmWorkModeByAvm(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c9
    .end annotation

    return-void
.end method
