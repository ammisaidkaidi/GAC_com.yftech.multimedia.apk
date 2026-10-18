.class public Lcom/yftech/vehicle/sdk/CarWindowManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarWindowManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarWindowManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarWindowManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarWindowManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarWindowManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarWindowManager;->sMe:Lcom/yftech/vehicle/sdk/CarWindowManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarWindowManager;->sMe:Lcom/yftech/vehicle/sdk/CarWindowManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarWindowManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarWindowManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarWindowManager;->sMe:Lcom/yftech/vehicle/sdk/CarWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSunroofWindowAutoCloseEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0xa0

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOpenPercentFL()I
    .locals 1

    const/16 v0, 0xa2

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowOpenPercentFR()I
    .locals 1

    const/16 v0, 0xa6

    .line 94
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowOpenPercentRL()I
    .locals 1

    const/16 v0, 0xaa

    .line 132
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowOpenPercentRR()I
    .locals 1

    const/16 v0, 0xae

    .line 170
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowOperationStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 1

    const/16 v0, 0xa3

    .line 64
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOperationStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 1

    const/16 v0, 0xa7

    .line 102
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOperationStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 1

    const/16 v0, 0xab

    .line 140
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOperationStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 1

    const/16 v0, 0xaf

    .line 178
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOverheatStateFL()Z
    .locals 1

    const/16 v0, 0xa4

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWindowOverheatStateFR()Z
    .locals 1

    const/16 v0, 0xa8

    .line 109
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWindowOverheatStateRL()Z
    .locals 1

    const/16 v0, 0xac

    .line 147
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWindowOverheatStateRR()Z
    .locals 1

    const/16 v0, 0xb0

    .line 185
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 1

    const/16 v0, 0xf7

    .line 248
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p0

    return-object p0
.end method

.method public getWindowRoofOpenPercent()I
    .locals 1

    const/16 v0, 0xf6

    .line 240
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowRoofShadeOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;
    .locals 1

    const/16 v0, 0xfa

    .line 278
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    move-result-object p0

    return-object p0
.end method

.method public getWindowRoofShadeOpenPercent()I
    .locals 1

    const/16 v0, 0xf9

    .line 270
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    const/16 v0, 0xa1

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    const/16 v0, 0xa5

    .line 87
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    const/16 v0, 0xa9

    .line 125
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    const/16 v0, 0xad

    .line 163
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setSunroofWindowAutoCloseEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x3f

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 1

    .line 79
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentFLVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x16c

    .line 285
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 1

    .line 117
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    const/16 v0, 0x41

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentFRVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x16d

    .line 292
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 1

    .line 155
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    const/16 v0, 0x42

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentRLVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x16e

    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 1

    .line 193
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    const/16 v0, 0x43

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowOpenPercentRRVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x16f

    .line 306
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindowRoofOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;)Z
    .locals 1

    .line 233
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    const/16 v0, 0x44

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowRoofShadeOpenPercent(I)Z
    .locals 1

    const/16 v0, 0xf8

    .line 255
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)Z
    .locals 1

    .line 263
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    const/16 v0, 0xf8

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowStateFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)Z
    .locals 1

    .line 201
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    const/16 v0, 0xca

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowStateFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)Z
    .locals 1

    .line 209
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    const/16 v0, 0xcb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowStateRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)Z
    .locals 1

    .line 217
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    const/16 v0, 0xcc

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindowStateRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)Z
    .locals 1

    .line 225
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    const/16 v0, 0xcd

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
