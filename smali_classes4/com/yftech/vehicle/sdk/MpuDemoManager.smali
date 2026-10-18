.class public Lcom/yftech/vehicle/sdk/MpuDemoManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "MpuDemoManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IDemo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/MpuDemoManager$CarDemoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarMiscManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/MpuDemoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/MpuDemoManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/MpuDemoManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/MpuDemoManager;->sMe:Lcom/yftech/vehicle/sdk/MpuDemoManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/MpuDemoManager;->sMe:Lcom/yftech/vehicle/sdk/MpuDemoManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/MpuDemoManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/MpuDemoManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/MpuDemoManager;->sMe:Lcom/yftech/vehicle/sdk/MpuDemoManager;
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
.method public getGameBrakeCtlPercent()F
    .locals 1

    const/16 v0, 0x26d0

    .line 53
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuDemoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getGamePedalCtlPercent()F
    .locals 1

    const/16 v0, 0x26d1

    .line 45
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuDemoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getGameSwcCtlAngle()F
    .locals 1

    const/16 v0, 0x26d2

    .line 37
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuDemoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/MpuDemoManager$CarDemoListener;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuDemoManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/MpuDemoManager$CarDemoListener;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuDemoManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
