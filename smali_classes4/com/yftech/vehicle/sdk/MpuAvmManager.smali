.class public Lcom/yftech/vehicle/sdk/MpuAvmManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "MpuAvmManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IMpuAvm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/MpuAvmManager$MpuAvmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpuAvmManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/MpuAvmManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/MpuAvmManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/MpuAvmManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/MpuAvmManager;->sMe:Lcom/yftech/vehicle/sdk/MpuAvmManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/MpuAvmManager;->sMe:Lcom/yftech/vehicle/sdk/MpuAvmManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/MpuAvmManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/MpuAvmManager;->sMe:Lcom/yftech/vehicle/sdk/MpuAvmManager;
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
.method public getAvmVersion()Ljava/lang/String;
    .locals 2

    const-string p0, "20200619V1.0"

    :try_start_0
    const-string v0, "persist.version.avm.software "

    const-string v1, "20200619V1.0"

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    return-object p0
.end method

.method public getNotifyAvmDisplayStateByAvm()Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;
    .locals 1

    const/16 v0, 0x26ce

    .line 60
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    move-result-object p0

    return-object p0
.end method

.method public getNotifyAvmHeartStateByAvm()Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;
    .locals 1

    const/16 v0, 0x26c8

    .line 68
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/MpuAvmManager$MpuAvmListener;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAvmDisplayStateByMpuReq(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)Z
    .locals 1

    .line 39
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->value:I

    const/16 v0, 0x26cf

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAvmLanguage(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;)Z
    .locals 1

    .line 77
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->value:I

    const/16 v0, 0x26c6

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/MpuAvmManager$MpuAvmListener;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
