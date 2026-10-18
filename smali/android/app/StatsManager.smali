.class public final Landroid/app/StatsManager;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatsManager$StatsUnavailableException;,
        Landroid/app/StatsManager$StatsdDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_STATSD_STARTED:Ljava/lang/String; = "android.app.action.STATSD_STARTED"

.field private static final DEBUG:Z = false

.field public static final EXTRA_STATS_BROADCAST_SUBSCRIBER_COOKIES:Ljava/lang/String; = "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

.field public static final EXTRA_STATS_CONFIG_KEY:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_KEY"

.field public static final EXTRA_STATS_CONFIG_UID:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_UID"

.field public static final EXTRA_STATS_DIMENSIONS_VALUE:Ljava/lang/String; = "android.app.extra.STATS_DIMENSIONS_VALUE"

.field public static final EXTRA_STATS_SUBSCRIPTION_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_ID"

.field public static final EXTRA_STATS_SUBSCRIPTION_RULE_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

.field private static final TAG:Ljava/lang/String; = "StatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Landroid/app/StatsManager;Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object p1
.end method

.method private getIStatsManagerLocked()Landroid/os/IStatsManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_0

    .line 371
    iget-object p0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object p0

    :cond_0
    const-string/jumbo v0, "stats"

    .line 373
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    .line 374
    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/app/StatsManager$StatsdDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/StatsManager$StatsdDeathRecipient;-><init>(Landroid/app/StatsManager;Landroid/app/StatsManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    iget-object p0, p0, Landroid/app/StatsManager;->mService:Landroid/os/IStatsManager;

    return-object p0

    :catch_0
    move-exception p0

    .line 380
    new-instance v0, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v1, "could not connect when linkToDeath"

    invoke-direct {v0, v1, p0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 375
    :cond_1
    new-instance p0, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v0, "could not be found"

    invoke-direct {p0, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addConfig(J[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    .line 108
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/os/IStatsManager;->addConfiguration(J[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "StatsManager"

    const-string p3, "Failed to connect to statsd when adding configuration"

    .line 110
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string p3, "could not connect"

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 115
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addConfiguration(J[B)Z
    .locals 0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/StatsManager;->addConfig(J[B)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getData(J)[B
    .locals 0

    .line 318
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->getReports(J)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetadata()[B
    .locals 0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/app/StatsManager;->getStatsMetadata()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReports(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 298
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    .line 301
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IStatsManager;->getData(JLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "StatsManager"

    const-string v0, "Failed to connect to statsd when getting data"

    .line 303
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v0, "could not connect"

    invoke-direct {p2, v0, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 308
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getStatsMetadata()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 334
    monitor-enter p0

    .line 336
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    .line 337
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IStatsManager;->getMetadata(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "StatsManager"

    const-string v2, "Failed to connect to statsd when getting metadata"

    .line 339
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v2, "could not connect"

    invoke-direct {v1, v2, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 344
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeConfig(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    .line 143
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IStatsManager;->removeConfiguration(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "StatsManager"

    const-string v0, "Failed to connect to statsd when removing configuration"

    .line 145
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v0, "could not connect"

    invoke-direct {p2, v0, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 150
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeConfiguration(J)Z
    .locals 0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->removeConfig(J)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 200
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 206
    iget-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p2

    move-wide v3, p4

    .line 206
    invoke-interface/range {v0 .. v6}, Landroid/os/IStatsManager;->setBroadcastSubscriber(JJLandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    .line 209
    invoke-interface/range {v0 .. v5}, Landroid/os/IStatsManager;->unsetBroadcastSubscriber(JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 216
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "StatsManager"

    const-string p3, "Failed to connect to statsd when adding broadcast subscriber"

    .line 213
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string p3, "could not connect"

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 218
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBroadcastSubscriber(JJLandroid/app/PendingIntent;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move-wide v2, p1

    move-wide v4, p3

    .line 229
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDataFetchOperation(JLandroid/app/PendingIntent;)Z
    .locals 0

    .line 281
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/app/StatsManager;->setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 253
    monitor-enter p0

    .line 255
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v0

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Landroid/os/IStatsManager;->removeDataFetchOperation(JLjava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 261
    iget-object v1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-interface {v0, p2, p3, p1, v1}, Landroid/os/IStatsManager;->setDataFetchOperation(JLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 269
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "StatsManager"

    const-string p3, "Failed to connect to statsd when registering data listener."

    .line 266
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string p3, "could not connect"

    invoke-direct {p2, p3, p1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 271
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
