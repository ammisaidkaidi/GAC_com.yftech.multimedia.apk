.class public abstract Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;
.super Ljava/lang/Object;
.source "CarSwcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarSwcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarSwcListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwcAngleChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x132
    .end annotation

    return-void
.end method

.method public onSwcAngleVdEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x152
    .end annotation

    return-void
.end method

.method public onSwcHeatStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x130
    .end annotation

    return-void
.end method
