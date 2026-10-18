.class public abstract Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;
.super Ljava/lang/Object;
.source "CarKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarKeyListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnobKeyEvent(Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x270e
    .end annotation

    return-void
.end method

.method public onPanelKeyEvent(Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2704
    .end annotation

    return-void
.end method

.method public onSteeringWheelKeyEvent(Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x270f
    .end annotation

    return-void
.end method
