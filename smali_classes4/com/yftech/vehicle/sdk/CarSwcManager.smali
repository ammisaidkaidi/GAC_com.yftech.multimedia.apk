.class public Lcom/yftech/vehicle/sdk/CarSwcManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarSwcManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarSwc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSwcManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarSwcManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarSwcManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarSwcManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarSwcManager;->sMe:Lcom/yftech/vehicle/sdk/CarSwcManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarSwcManager;->sMe:Lcom/yftech/vehicle/sdk/CarSwcManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarSwcManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarSwcManager;->sMe:Lcom/yftech/vehicle/sdk/CarSwcManager;
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
.method public getSwcAngle()F
    .locals 1

    const/16 v0, 0x132

    .line 33
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getSwcAngleVdEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x152

    .line 41
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getSwcHeatState()Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;
    .locals 1

    const/16 v0, 0x130

    .line 63
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    move-result-object p0

    return-object p0
.end method

.method public performSwcStarKeyButtonClick()Z
    .locals 2

    const/16 v0, 0x11c

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performSwcStarKeyVDButtonClick()Z
    .locals 2

    const/16 v0, 0x11d

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setSwcHeatStateEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x131

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarSwcManager$CarSwcListener;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
