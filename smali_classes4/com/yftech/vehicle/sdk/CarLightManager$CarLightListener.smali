.class public abstract Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;
.super Ljava/lang/Object;
.source "CarLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarLightListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADBEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x229
    .end annotation

    return-void
.end method

.method public onAtmosphereLampBrightnessChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x113
    .end annotation

    return-void
.end method

.method public onAtmosphereLampColorChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x115
    .end annotation

    return-void
.end method

.method public onAtmosphereLampMusicModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x119
    .end annotation

    return-void
.end method

.method public onAtmosphereLampWorkModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x117
    .end annotation

    return-void
.end method

.method public onAutoHoldLightEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ef
    .end annotation

    return-void
.end method

.method public onBrakeLampStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc6
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHeadLightDelayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb2
    .end annotation

    return-void
.end method

.method public onIHBCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb1
    .end annotation

    return-void
.end method

.method public onILBCStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc7
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onLightShowMainLampSwitchStChanged(Lcom/yftech/vehicle/internal/adapter/ICarLight$MainLampSwitchSt;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ff
    .end annotation

    return-void
.end method

.method public onLightShowModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1fc
    .end annotation

    return-void
.end method

.method public onLowLightStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd1
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onSmallLightStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x106
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onTopLightStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xdc
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onWelLightEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1f1
    .end annotation

    return-void
.end method

.method public onWelLightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1f3
    .end annotation

    return-void
.end method
