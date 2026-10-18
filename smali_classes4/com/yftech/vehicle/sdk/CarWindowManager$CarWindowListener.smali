.class public abstract Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;
.super Ljava/lang/Object;
.source "CarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarWindowListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSunroofWindowAutoCloseEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa0
    .end annotation

    return-void
.end method

.method public onWindowOpenPercentFLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa2
    .end annotation

    return-void
.end method

.method public onWindowOpenPercentFRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa6
    .end annotation

    return-void
.end method

.method public onWindowOpenPercentRLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xaa
    .end annotation

    return-void
.end method

.method public onWindowOpenPercentRRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xae
    .end annotation

    return-void
.end method

.method public onWindowOperationStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa3
    .end annotation

    return-void
.end method

.method public onWindowOperationStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa7
    .end annotation

    return-void
.end method

.method public onWindowOperationStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xab
    .end annotation

    return-void
.end method

.method public onWindowOperationStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xaf
    .end annotation

    return-void
.end method

.method public onWindowOverheatStateFLChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa4
    .end annotation

    return-void
.end method

.method public onWindowOverheatStateFRChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa8
    .end annotation

    return-void
.end method

.method public onWindowOverheatStateRLChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xac
    .end annotation

    return-void
.end method

.method public onWindowOverheatStateRRChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb0
    .end annotation

    return-void
.end method

.method public onWindowRoofOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf7
    .end annotation

    return-void
.end method

.method public onWindowRoofOpenPercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf6
    .end annotation

    return-void
.end method

.method public onWindowRoofShadeOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xfa
    .end annotation

    return-void
.end method

.method public onWindowRoofShadeOpenPercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xf9
    .end annotation

    return-void
.end method

.method public onWindowStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa1
    .end annotation

    return-void
.end method

.method public onWindowStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa5
    .end annotation

    return-void
.end method

.method public onWindowStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xa9
    .end annotation

    return-void
.end method

.method public onWindowStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xad
    .end annotation

    return-void
.end method
