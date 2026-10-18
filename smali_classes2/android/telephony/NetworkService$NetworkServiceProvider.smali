.class public Landroid/telephony/NetworkService$NetworkServiceProvider;
.super Ljava/lang/Object;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkServiceProvider"
.end annotation


# instance fields
.field private final mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotId:I

.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method public constructor <init>(Landroid/telephony/NetworkService;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    .line 89
    iput p2, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotId:I

    return-void
.end method

.method static synthetic access$300(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->registerForStateChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static synthetic access$400(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->unregisterForStateChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static synthetic access$500(Landroid/telephony/NetworkService$NetworkServiceProvider;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyStateChangedToCallbacks()V

    return-void
.end method

.method private notifyStateChangedToCallbacks()V
    .locals 1

    .line 128
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/INetworkServiceCallback;

    .line 130
    :try_start_0
    invoke-interface {v0}, Landroid/telephony/INetworkServiceCallback;->onNetworkStateChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerForStateChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterForStateChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNetworkRegistrationState(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p2, p0, p1}, Landroid/telephony/NetworkServiceCallback;->onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V

    return-void
.end method

.method public final getSlotId()I
    .locals 0

    .line 96
    iget p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotId:I

    return p0
.end method

.method public final notifyNetworkRegistrationStateChanged()V
    .locals 4

    .line 111
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    iget p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotId:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationStateChangedCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
