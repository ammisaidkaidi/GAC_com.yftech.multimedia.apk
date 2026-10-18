.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "WifiAwareSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final VDBG:Z = false


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 48
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 56
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 59
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p1, "close"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 74
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string p0, "WifiAwareSession"

    const-string v0, "destroy: called post GC on WifiAwareManager"

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 81
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 82
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .locals 7

    .line 236
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    .line 238
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 241
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierOpen: called after termination"

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 245
    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 7

    .line 278
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    .line 280
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 283
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierPassphrase: called after termination"

    .line 284
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 287
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p0

    return-object p0

    .line 288
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Passphrase must meet length requirements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    .line 330
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 333
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1

    const-string p0, "WifiAwareSession"

    const-string p1, "createNetworkSpecifierPmk: called after termination"

    .line 334
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 337
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p0

    return-object p0

    .line 338
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PMK must 32 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 93
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientId()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    iget p0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    return p0
.end method

.method public publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 2

    .line 148
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string p0, "WifiAwareSession"

    const-string/jumbo p1, "publish: called post GC on WifiAwareManager"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string p0, "WifiAwareSession"

    const-string/jumbo p1, "publish: called after termination"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_1
    iget p0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p0, p3, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    return-void
.end method

.method public subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 2

    .line 194
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string p0, "WifiAwareSession"

    const-string/jumbo p1, "publish: called post GC on WifiAwareManager"

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    const-string p0, "WifiAwareSession"

    const-string/jumbo p1, "publish: called after termination"

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_1
    iget p0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p0, p3, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    return-void
.end method
