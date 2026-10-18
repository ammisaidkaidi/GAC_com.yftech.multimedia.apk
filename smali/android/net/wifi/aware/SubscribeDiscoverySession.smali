.class public Landroid/net/wifi/aware/SubscribeDiscoverySession;
.super Landroid/net/wifi/aware/DiscoverySession;
.source "SubscribeDiscoverySession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscribeDiscSession"


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/aware/DiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    return-void
.end method


# virtual methods
.method public updateSubscribe(Landroid/net/wifi/aware/SubscribeConfig;)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    const-string p0, "SubscribeDiscSession"

    const-string/jumbo p1, "updateSubscribe: called on terminated session"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_1

    const-string p0, "SubscribeDiscSession"

    const-string/jumbo p1, "updateSubscribe: called post GC on WifiAwareManager"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mClientId:I

    iget p0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    return-void
.end method
