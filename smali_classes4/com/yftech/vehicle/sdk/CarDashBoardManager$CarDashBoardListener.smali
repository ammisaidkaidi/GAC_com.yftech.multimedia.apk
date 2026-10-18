.class public abstract Lcom/yftech/vehicle/sdk/CarDashBoardManager$CarDashBoardListener;
.super Ljava/lang/Object;
.source "CarDashBoardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarDashBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarDashBoardListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDashBoardPhoneActionMsgChanged(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26db
    .end annotation

    return-void
.end method

.method public onDashBoardSettingItemInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f9
    .end annotation

    return-void
.end method

.method public onDashBoardSettingItemLanguageChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f8
    .end annotation

    return-void
.end method

.method public onDashBoardSourceChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26fa
    .end annotation

    return-void
.end method

.method public onDashBoardTimeFormatChanged(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d9
    .end annotation

    return-void
.end method
