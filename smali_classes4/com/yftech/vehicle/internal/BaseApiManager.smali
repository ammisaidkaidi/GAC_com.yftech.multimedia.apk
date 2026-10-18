.class public abstract Lcom/yftech/vehicle/internal/BaseApiManager;
.super Ljava/lang/Object;
.source "BaseApiManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSignalDataValue(I)[B
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalDataValue(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSignalValue(I)Ljava/lang/Number;
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSignalsValue([I)[Ljava/lang/Number;
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalsValue([I)[Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerReceiver(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/CarManager;->registerReceiver(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(IB)Z
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(ID)Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(ID)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(IF)Z
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IF)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(II)Z
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(IJ)Z
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(IS)Z
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IS)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(IZ)Z
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignalValue(I[B)Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(I[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterReceiver(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->get()Lcom/yftech/vehicle/internal/CarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/internal/CarManager;->unregisterReceiver(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1
.end method
