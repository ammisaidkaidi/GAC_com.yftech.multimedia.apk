.class public abstract Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
.super Ljava/lang/Object;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarPowerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x270c
    .end annotation

    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x270d
    .end annotation

    return-void
.end method
