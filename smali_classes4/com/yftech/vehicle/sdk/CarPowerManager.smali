.class public Lcom/yftech/vehicle/sdk/CarPowerManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarPowerManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarPower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarPowerManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarPowerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarPowerManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarPowerManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarPowerManager;->sMe:Lcom/yftech/vehicle/sdk/CarPowerManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarPowerManager;->sMe:Lcom/yftech/vehicle/sdk/CarPowerManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarPowerManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarPowerManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarPowerManager;->sMe:Lcom/yftech/vehicle/sdk/CarPowerManager;
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
.method public getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;
    .locals 1

    const/16 v0, 0x270c

    .line 43
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object p0

    return-object p0
.end method

.method public getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 1

    const/16 v0, 0x270d

    .line 35
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
