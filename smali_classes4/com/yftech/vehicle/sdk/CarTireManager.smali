.class public Lcom/yftech/vehicle/sdk/CarTireManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarTireManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarTire;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarTireManager$CarTireListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarTireManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarTireManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarTireManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarTireManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarTireManager;->sMe:Lcom/yftech/vehicle/sdk/CarTireManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarTireManager;->sMe:Lcom/yftech/vehicle/sdk/CarTireManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarTireManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarTireManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarTireManager;->sMe:Lcom/yftech/vehicle/sdk/CarTireManager;
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
.method public getWheelSpeedFL()F
    .locals 1

    const/16 v0, 0x153

    .line 33
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWheelSpeedFLEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x154

    .line 41
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWheelSpeedFR()F
    .locals 1

    const/16 v0, 0x155

    .line 48
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWheelSpeedFREnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x156

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWheelSpeedRL()F
    .locals 1

    const/16 v0, 0x157

    .line 63
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWheelSpeedRLEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x158

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWheelSpeedRR()F
    .locals 1

    const/16 v0, 0x159

    .line 78
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWheelSpeedRREnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x15a

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTireManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarTireManager$CarTireListener;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarTireManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarTireManager$CarTireListener;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarTireManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
