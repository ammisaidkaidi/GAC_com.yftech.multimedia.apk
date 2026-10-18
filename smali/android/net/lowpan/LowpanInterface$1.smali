.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 0

    .line 557
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    .line 561
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 564
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {p2}, Landroid/net/lowpan/LowpanInterface;->access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 566
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method static synthetic lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    .line 572
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onLinkAddressAdded$8(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    .line 638
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$onLinkNetworkAdded$6(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    .line 602
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$onLowpanIdentityChanged$5(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0

    .line 597
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method static synthetic lambda$onRoleChanged$3(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    .line 587
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    .line 592
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onUpChanged$2(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    .line 582
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .locals 2

    .line 577
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 2

    .line 572
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .locals 3

    .line 614
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$i2_6hzE6WEaUSOaaltxLebbf7-E;

    invoke-direct {v1, p0, v0}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$i2_6hzE6WEaUSOaaltxLebbf7-E;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p0

    .line 617
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLinkAddressAdded: Bad LinkAddress \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 616
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 3

    .line 628
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;

    invoke-direct {v1, p0, v0}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p0

    .line 631
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLinkAddressRemoved: Bad LinkAddress \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 630
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 2

    .line 602
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$oacwoIgJ4pmkBqVtGJfFzk7A35k;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$oacwoIgJ4pmkBqVtGJfFzk7A35k;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 2

    .line 607
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$cH3X25eT4t6pHlLvzBjlSOMs2vc;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$cH3X25eT4t6pHlLvzBjlSOMs2vc;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 2

    .line 597
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$rl_ENeH3C5Kvf22BOtLnz-Ehs5c;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$rl_ENeH3C5Kvf22BOtLnz-Ehs5c;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 0

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 2

    .line 587
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$9yiRqHwJmFc-LEKn1vk5rA75W0M;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$9yiRqHwJmFc-LEKn1vk5rA75W0M;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 592
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$5PUJBkKF3VANgkiEem5Oq8oyB6U;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpChanged(Z)V
    .locals 2

    .line 582
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$a1rvbSIFSC6J5j7aKUf1ekbmIIA;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$a1rvbSIFSC6J5j7aKUf1ekbmIIA;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
