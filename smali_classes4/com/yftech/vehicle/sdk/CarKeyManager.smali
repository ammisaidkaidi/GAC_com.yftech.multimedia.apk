.class public Lcom/yftech/vehicle/sdk/CarKeyManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarKeyManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarKeyManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarKeyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarKeyManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarKeyManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarKeyManager;->sMe:Lcom/yftech/vehicle/sdk/CarKeyManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarKeyManager;->sMe:Lcom/yftech/vehicle/sdk/CarKeyManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarKeyManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarKeyManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarKeyManager;->sMe:Lcom/yftech/vehicle/sdk/CarKeyManager;
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
.method public registerListener(Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarKeyManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarKeyManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
