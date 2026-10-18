.class public Landroid/net/NetworkWatchlistManager;
.super Ljava/lang/Object;
.source "NetworkWatchlistManager.java"


# static fields
.field private static final SHARED_MEMORY_TAG:Ljava/lang/String; = "NETWORK_WATCHLIST_SHARED_MEMORY"

.field private static final TAG:Ljava/lang/String; = "NetworkWatchlistManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing context"

    .line 53
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "network_watchlist"

    .line 56
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method


# virtual methods
.method public getWatchlistConfigHash()[B
    .locals 2

    .line 95
    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Unable to get watchlist config hash"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public reloadWatchlist()V
    .locals 2

    .line 83
    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->reloadWatchlist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Unable to reload watchlist"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public reportWatchlistIfNecessary()V
    .locals 2

    .line 69
    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->reportWatchlistIfNecessary()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Cannot report records"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
