.class public final Landroid/util/StatsLog;
.super Landroid/util/StatsLogInternal;
.source "StatsLog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatsLog"

.field private static sService:Landroid/os/IStatsManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/util/StatsLogInternal;-><init>()V

    return-void
.end method

.method private static getIStatsManagerLocked()Landroid/os/IStatsManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    sget-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "stats"

    .line 113
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    sput-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    .line 114
    sget-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    return-object v0
.end method

.method public static logEvent(I)Z
    .locals 4

    .line 91
    const-class v0, Landroid/util/StatsLog;

    monitor-enter v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x1

    .line 98
    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 102
    sput-object p0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    .line 104
    monitor-exit v0

    return v1

    .line 106
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static logStart(I)Z
    .locals 4

    .line 42
    const-class v0, Landroid/util/StatsLog;

    monitor-enter v0

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x3

    .line 49
    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    .line 51
    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 53
    sput-object p0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    .line 55
    monitor-exit v0

    return v1

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static logStop(I)Z
    .locals 4

    .line 67
    const-class v0, Landroid/util/StatsLog;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x2

    .line 74
    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    .line 75
    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 77
    sput-object p0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    .line 79
    monitor-exit v0

    return v1

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
