.class Landroid/app/usage/NetworkStatsManager$CallbackHandler;
.super Landroid/os/Handler;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final mNetworkType:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 526
    iput p2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    .line 527
    iput-object p3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    .line 528
    iput-object p4, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    return-void
.end method

.method private static getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 554
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "DataUsageRequest"

    .line 534
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DataUsageRequest;

    .line 536
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    goto :goto_0

    .line 538
    :pswitch_1
    iget-object p1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    if-eqz p1, :cond_0

    .line 539
    iget-object p1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget v0, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    iget-object p0, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "NetworkStatsManager"

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit reached with released callback for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
