.class public Lcom/yftech/libmusic/utils/CarPlayMusicManager;
.super Ljava/lang/Object;
.source "CarPlayMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;
    }
.end annotation


# static fields
.field private static final CHECK_CARPLAY_SERVICE_TIME:I = 0xbb8

.field private static final MSG_CHECK_CARPLAY_SERVICE:I = 0x1

.field private static volatile instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carPlayMusicListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;",
            ">;"
        }
    .end annotation
.end field

.field private final carplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

.field private carplayManager:Lcom/autochips/carplay/CarplayManager;

.field private connectionState:I

.field private mCarPlayCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

.field private mHandle:Landroid/os/Handler;

.field private mProgress:I

.field private mTotalDuration:I

.field private phoneCallStatus:Z

.field private screenVisible:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->phoneCallStatus:Z

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->screenVisible:I

    .line 399
    new-instance v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;-><init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarPlayCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 435
    new-instance v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;-><init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    .line 570
    new-instance v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;-><init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getCarplayManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    :cond_1
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarPlayCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->screenVisible:I

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->screenVisible:I

    return p1
.end method

.method static synthetic access$802(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->phoneCallStatus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method private getCarplayManager()Lcom/autochips/carplay/CarplayManager;
    .locals 3

    .line 81
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    .line 82
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/autochips/carplay/CarplayManager;->registerCallback(Lcom/autochips/carplay/CarplayManager$CarplayCallback;Landroid/os/Handler;)I

    .line 84
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->getConnectionState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    .line 88
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 89
    iget v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    invoke-interface {v1, v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayConnectChanged(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackLen()I

    move-result v1

    iput v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    .line 95
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackPos()I

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    .line 99
    iget v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 101
    iget v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    invoke-interface {v1, v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayProgressChanged(I)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    return-object p0
.end method

.method private getConnectionState()I
    .locals 3

    .line 143
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarPlayConnectionStatus:getConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "carplay"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 146
    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    .line 147
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    return p0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    .line 158
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->getConnectionState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    .line 161
    :cond_3
    :goto_1
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;
    .locals 2

    .line 53
    sget-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-direct {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;-><init>()V

    sput-object v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 64
    :cond_2
    sget-object p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mContext:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 349
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0

    .line 353
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CarPlay Error"

    .line 355
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public getConnectStatus()I
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 306
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->connectionState:I

    return p0
.end method

.method public getLastUIState()I
    .locals 1

    const-string v0, "getLastUIState"

    .line 204
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->getLastUIState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getProgress()I
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 377
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mProgress:I

    return p0
.end method

.method public getResourceState()Lcom/autochips/carplay/CarplayResourceState;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0

    .line 327
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "CarPlay Error"

    .line 329
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public getTotalDuration()I
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTotalDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 387
    iget p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mTotalDuration:I

    return p0
.end method

.method public isPhoneCallStatus()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->phoneCallStatus:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "carplayManager is null in isPlaying()"

    .line 271
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-nez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    .line 284
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, p0}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    :cond_5
    return v1
.end method

.method public next()I
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 257
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 259
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next ret:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public openCarplayMediaView()V
    .locals 2

    const-string v0, "openCarplayMediaView"

    .line 194
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    const-string p0, "set carplay stop !!!"

    .line 229
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->stop()Z

    return-void
.end method

.method public play()V
    .locals 0

    const-string p0, "set carplay play !!!"

    .line 219
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->play()Z

    return-void
.end method

.method public previous()I
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 242
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 244
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previous ret:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "CarPlayMusicManager release"

    .line 123
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->unregisterCallback(Lcom/autochips/carplay/CarplayManager$CarplayCallback;)V

    .line 126
    iput-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carplayManager:Lcom/autochips/carplay/CarplayManager;

    .line 128
    :cond_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mCarPlayCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 129
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->mHandle:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iput-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    .line 135
    :cond_1
    sput-object v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->instance:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    return-void
.end method

.method public unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->carPlayMusicListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
