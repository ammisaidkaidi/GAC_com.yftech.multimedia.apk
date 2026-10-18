.class public abstract Lcom/yftech/vehicle/sdk/MpuDemoManager$CarDemoListener;
.super Ljava/lang/Object;
.source "MpuDemoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/MpuDemoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarDemoListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameBrakeCtlPercentChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d0
    .end annotation

    return-void
.end method

.method public onGamePedalCtlPercentChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d1
    .end annotation

    return-void
.end method

.method public onGameSwcCtlAngleChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d2
    .end annotation

    return-void
.end method
