.class public abstract Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;
.super Ljava/lang/Object;
.source "CarTBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarTBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarTBoxListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuteRadioOrderChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xbe
    .end annotation

    return-void
.end method

.method public onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x149
    .end annotation

    return-void
.end method

.method public onPhoneModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x148
    .end annotation

    return-void
.end method
