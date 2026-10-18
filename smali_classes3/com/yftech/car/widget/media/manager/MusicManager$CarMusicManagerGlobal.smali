.class final Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarMusicManagerGlobal"
.end annotation


# static fields
.field private static final FAST_BACK:I = 0x7

.field private static final FAST_FORWARD:I = 0x6

.field private static final NEXT:I = 0x4

.field private static final PAUSE:I = 0x2

.field private static final PLAY:I = 0x1

.field private static final PLAY_PAUSE:I = 0x3

.field private static final PREV:I = 0x5

.field private static final SERVICE_NAME:Ljava/lang/String; = "car_media_music"

.field private static final gCarMusicManager:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

.field private static mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;


# instance fields
.field private mConnectingThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private final mControlCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mICarMusicCallback:Lcom/yftech/car/media/music/ICarMusicCallback$Stub;

.field private mInitCallback:Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

.field private final mLock:Ljava/lang/Object;

.field private mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 498
    new-instance v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->gCarMusicManager:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    .line 542
    new-instance v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;-><init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 571
    new-instance v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;-><init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1352
    new-instance v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;-><init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mICarMusicCallback:Lcom/yftech/car/media/music/ICarMusicCallback$Stub;

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
    .locals 1

    .line 481
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->get()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->registerCarMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;BZ)V
    .locals 0

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setCurrentUSB(BZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayProgress(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Z)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->requestPlay(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->stopPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayMode(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->switchPlayMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->removeCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->unregisterCarMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getMusicType()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayListSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCurrentPlayProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)J
    .locals 2

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCurrentPlayDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCollectMusic(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCurrentPlayList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->play()V

    return-void
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)[I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getRandomList()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getAudioSession()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;F)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlaybackParams(F)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)F
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlaybackParams()F

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->isPlayList()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->isCollectMusic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->isDirectoryPlayPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800()Lcom/yftech/car/media/music/ICarMusicClientService;
    .locals 1

    .line 481
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/yftech/car/media/music/ICarMusicClientService;)Lcom/yftech/car/media/music/ICarMusicClientService;
    .locals 0

    .line 481
    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->pause()V

    return-void
.end method

.method static synthetic access$4000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/media/music/ICarMusicCallback$Stub;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mICarMusicCallback:Lcom/yftech/car/media/music/ICarMusicCallback$Stub;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Landroid/content/Context;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4502(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->switchPlayPause()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->next()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->previous()V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->fastForward(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Z
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->fastBack(I)Z

    move-result p0

    return p0
.end method

.method private addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1014
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1016
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1018
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1021
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string p1, "addCollectItem: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;)V
    .locals 2

    .line 529
    iput-object p2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    .line 530
    sget-object p2, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/music/ICarMusicClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/music/ICarMusicClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    if-eqz p1, :cond_2

    .line 537
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;->onSuccess(Z)V

    goto :goto_1

    .line 531
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mContext:Landroid/content/Context;

    .line 532
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.yf.music.service.MusicService"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yftech.media.service"

    .line 533
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private connectCarMusicServiceLocked()Z
    .locals 4

    .line 611
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/music/ICarMusicClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/music/ICarMusicClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "car_media_music"

    .line 612
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 615
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 616
    invoke-static {v0}, Lcom/yftech/car/media/music/ICarMusicClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 620
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mICarMusicCallback:Lcom/yftech/car/media/music/ICarMusicCallback$Stub;

    invoke-interface {v0, p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->registerUiControl(Lcom/yftech/car/media/music/ICarMusicCallback;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 622
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "the car music service not started!connected service fail!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 626
    :goto_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link to death error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method private fastBack(I)Z
    .locals 1

    const/4 v0, 0x7

    .line 731
    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->pressKeyEvent(II)Z

    move-result p0

    return p0
.end method

.method private fastForward(I)Z
    .locals 1

    const/4 v0, 0x6

    .line 727
    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->pressKeyEvent(II)Z

    move-result p0

    return p0
.end method

.method private static get()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
    .locals 1

    .line 515
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->gCarMusicManager:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    return-object v0
.end method

.method private getAudioSession()I
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1264
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1266
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getAudioSession()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1268
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1271
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getAudioSession: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1273
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-nez v1, :cond_1

    .line 521
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "car music service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->startReconnectThread()V

    .line 524
    :cond_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCollectMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1189
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1191
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1193
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->getCollectMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1195
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1198
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getCollectMusic: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1200
    :goto_1
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentPlayDuration()J
    .locals 3

    .line 1145
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1147
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1149
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getDuration()J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p0

    .line 1151
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1154
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getCurrentPlayDuration: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v1, 0x0

    .line 1156
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 1157
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getCurrentPlayList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1209
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    const/4 p0, 0x0

    .line 1211
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1213
    :try_start_1
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {v1}, Lcom/yftech/car/media/music/ICarMusicClientService;->getPlayList()Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1215
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1218
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCurrentPlayList: the car music service not started!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :goto_0
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1221
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getCurrentPlayProgress()I
    .locals 1

    .line 1127
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1128
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1130
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getProgress()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1135
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCurrentPlayProgress: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getMusicType()I
    .locals 1

    .line 1073
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1074
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1076
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getListTypePosition()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1078
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1081
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getMusicType: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getPlayList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1241
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCurrentPlayList()Ljava/util/List;

    move-result-object v0

    .line 1242
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getPlayMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1243
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getRandomList()[I

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 1244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 1247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 1248
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method private getPlayListSize()I
    .locals 1

    .line 1109
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1110
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1112
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getPlayListSize()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1114
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1117
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPlayListSize: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPlayMode()I
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 936
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 938
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getPlayMode()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 940
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 943
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getPlayMode: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 945
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 946
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_0

    .line 1166
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object v1

    sput-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1170
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1172
    :try_start_1
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {v1}, Lcom/yftech/car/media/music/ICarMusicClientService;->getCurrentMusicFilePlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1174
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1177
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPlayMusic: the car music service not started!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mPlayFile:Lcom/yftech/car/media/data/entity/MediaFile;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1180
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getPlayPosition()I
    .locals 1

    .line 1091
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1092
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1094
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getPlayPosition()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1096
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1099
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPlayPosition: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPlaybackParams()F
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1295
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1297
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getPlaybackParams()F

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1299
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1302
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getPlaybackParams: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_0
    monitor-exit v0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getRandomList()[I
    .locals 2

    .line 1225
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1227
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1229
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->getRandomList()[I

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1231
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1234
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getRandomList: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isAudioFocus()Z
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 855
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 857
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->isAudioFocus()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 859
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "isAudioFocus: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 864
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 865
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isCollectMusic(Ljava/lang/String;)Z
    .locals 0

    .line 1323
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1324
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1326
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->isCollectMusic(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1328
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1331
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string p1, "isCollectMusic: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDirectoryPlayPath(Ljava/lang/String;)Z
    .locals 0

    .line 1337
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1338
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1340
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->isDirectoryPlayPath(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1342
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1345
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string p1, "isCollectMusic: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPlayList()Z
    .locals 1

    .line 1309
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1310
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1312
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->isPlayList()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1314
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isPlayList: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPlaying()Z
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1051
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-eqz p0, :cond_0

    .line 1053
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1055
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isPlaying: the car music service not started!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPrepared()Z
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 956
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 958
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->isPrepared()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 960
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 963
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string v1, "isPrepared: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 965
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 966
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private next()V
    .locals 1

    const/4 v0, 0x4

    .line 719
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayStatus(I)V

    return-void
.end method

.method private pause()V
    .locals 1

    const/4 v0, 0x2

    .line 711
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayStatus(I)V

    return-void
.end method

.method private play()V
    .locals 1

    const/4 v0, 0x1

    .line 707
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayStatus(I)V

    return-void
.end method

.method private pressKeyEvent(II)Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 743
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 745
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/music/ICarMusicClientService;->pressKeyEvent(II)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 747
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 750
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string p1, "pressKeyEvent: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private previous()V
    .locals 1

    const/4 v0, 0x5

    .line 723
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayStatus(I)V

    return-void
.end method

.method private registerCarMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 654
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 657
    iget-object v3, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    if-nez v3, :cond_0

    .line 659
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 660
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->registerCarMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    .line 661
    monitor-exit v0

    return-void

    :cond_0
    if-ne v3, p1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 670
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->startReconnectThread()V

    .line 672
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 673
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 652
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback is null,callback Cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1033
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1035
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->removeCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1037
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "removeCollectItem: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private requestPlay(Z)Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 895
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 897
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->requestPlay(Z)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 899
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 902
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "requestAudiofocus: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 904
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 905
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setCurrentUSB(BZ)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 836
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 838
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/music/ICarMusicClientService;->setCurrentUSB(BZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 840
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 843
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setCurrentUSB: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setPlayMode(I)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 977
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 979
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->setPlayMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 981
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 984
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setPlayMode: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setPlayProgress(I)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 875
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 877
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->setPlayProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 879
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 882
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setPlayProgress: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setPlayStatus(I)V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 763
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 765
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->setPlayStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 767
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 770
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setPlayStatus: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setPlaybackParams(F)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 1280
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1282
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/music/ICarMusicClientService;->setPlaybackParams(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1284
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1287
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setPlaybackParams: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private start(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 792
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 794
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/media/music/ICarMusicClientService;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 796
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 797
    monitor-exit v0

    return v1

    .line 800
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "start: the car music service not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 803
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private startReconnectThread()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    .line 587
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private stopPlaying()Z
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 915
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 917
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0, v1}, Lcom/yftech/car/media/music/ICarMusicClientService;->stopPlaying(Z)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 919
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 922
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "stopPlaying: the car music service not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 925
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private switchPlayMode()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 994
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 995
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 997
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/music/ICarMusicClientService;->switchPlayMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 999
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "switchPlayMode: the car music service not started!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private switchPlayPause()V
    .locals 1

    const/4 v0, 0x3

    .line 715
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->setPlayStatus(I)V

    return-void
.end method

.method private unregisterCarMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 682
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
.method public binderDied()V
    .locals 2

    .line 636
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binder died,reconnect service car_media_music after 1000ms!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 640
    sput-object v1, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mCarMusicService:Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 641
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->mControlCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->startReconnectThread()V

    .line 645
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connecting service car_media_music!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 595
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    .line 597
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 599
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 601
    :goto_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reconnecting service car_media_music!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->connectCarMusicServiceLocked()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 819
    :pswitch_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 816
    :pswitch_1
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :pswitch_2
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
