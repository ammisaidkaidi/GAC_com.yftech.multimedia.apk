.class public abstract Lcom/yftech/vehicle/sdk/CarFragranceManager$CarFragranceListener;
.super Ljava/lang/Object;
.source "CarFragranceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarFragranceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarFragranceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragrance1WorkStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x223
    .end annotation

    return-void
.end method

.method public onFragrance2WorkStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x224
    .end annotation

    return-void
.end method

.method public onFragrance3WorkStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x225
    .end annotation

    return-void
.end method

.method public onFragranceTaste1FragChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x226
    .end annotation

    return-void
.end method

.method public onFragranceTaste1PercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x220
    .end annotation

    return-void
.end method

.method public onFragranceTaste2FragChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x227
    .end annotation

    return-void
.end method

.method public onFragranceTaste2PercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x221
    .end annotation

    return-void
.end method

.method public onFragranceTaste3FragChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x228
    .end annotation

    return-void
.end method

.method public onFragranceTaste3PercentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x222
    .end annotation

    return-void
.end method
