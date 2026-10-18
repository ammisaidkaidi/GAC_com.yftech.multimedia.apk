.class public abstract Lcom/yftech/vehicle/sdk/CarBspManager$CarBspListener;
.super Ljava/lang/Object;
.source "CarBspManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarBspManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarBspListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBspInfoSearchCmdStateChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f6
    .end annotation

    return-void
.end method

.method public onDisplayConnectedStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26eb
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDisplayDtcStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f5
    .end annotation

    return-void
.end method

.method public onDisplayLcdOnOffStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2707
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDisplayLightBarEnableChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26de
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDisplayLightBarLevelChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26df
    .end annotation

    return-void
.end method

.method public onDisplayTouchEnableStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2706
        valueToEnabledState = true
    .end annotation

    return-void
.end method
