.class public abstract Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarIcmListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackLightLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x72
    .end annotation

    return-void
.end method

.method public onFuelEconomyAndDistanceUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x77
    .end annotation

    return-void
.end method

.method public onKeepMuteWarningStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x78
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onKeyBoardBackLightChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xe2
    .end annotation

    return-void
.end method

.method public onLanguageChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x76
    .end annotation

    return-void
.end method

.method public onMeterVolumeModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x102
    .end annotation

    return-void
.end method

.method public onPressureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x74
    .end annotation

    return-void
.end method

.method public onSpeedWarningChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x75
    .end annotation

    return-void
.end method

.method public onTemperatureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x73
    .end annotation

    return-void
.end method
