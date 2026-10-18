.class public Lcom/yftech/car/widget/media/manager/MusicManager;
.super Ljava/lang/Object;
.source "MusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;,
        Lcom/yftech/car/widget/media/manager/MusicManager$Constant;,
        Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;,
        Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;,
        Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicManager"

.field private static mInstance:Lcom/yftech/car/widget/media/manager/MusicManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager;->mInstance:Lcom/yftech/car/widget/media/manager/MusicManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/yftech/car/widget/media/manager/MusicManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/manager/MusicManager;->mInstance:Lcom/yftech/car/widget/media/manager/MusicManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/yftech/car/widget/media/manager/MusicManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/manager/MusicManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/manager/MusicManager;->mInstance:Lcom/yftech/car/widget/media/manager/MusicManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/manager/MusicManager;->mInstance:Lcom/yftech/car/widget/media/manager/MusicManager;

    return-object v0
.end method


# virtual methods
.method public addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 279
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method public fastBack(I)Z
    .locals 0

    .line 134
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Z

    move-result p0

    return p0
.end method

.method public fastForward(I)Z
    .locals 0

    .line 124
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Z

    move-result p0

    return p0
.end method

.method public getAudioSession()I
    .locals 0

    .line 407
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getCollectMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPlayDuration()J
    .locals 2

    .line 352
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPlayList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2800(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPlayProgress()I
    .locals 0

    .line 343
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getListTypePosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getMusicType()I
    .locals 0

    .line 311
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPlayListSize()I
    .locals 0

    .line 334
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getPlayMode()I
    .locals 0

    .line 241
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 361
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p0

    return-object p0
.end method

.method public getPlayPosition()I
    .locals 0

    .line 325
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getPlaybackParams()F
    .locals 0

    .line 425
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)F

    move-result p0

    return p0
.end method

.method public getRandomList()[I
    .locals 0

    .line 398
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)[I

    move-result-object p0

    return-object p0
.end method

.method public isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 445
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager;->TAG:Ljava/lang/String;

    const-string p1, "isCollectMusic: mediaFile is null || mediaFile.getData() is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCollectMusic(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 459
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager;->TAG:Ljava/lang/String;

    const-string p1, "isCollectMusic: dataPath is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 462
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDirectoryPlayPath(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 472
    sget-object p0, Lcom/yftech/car/widget/media/manager/MusicManager;->TAG:Ljava/lang/String;

    const-string p1, "isCollectMusic: path is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 475
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPlayList()Z
    .locals 0

    .line 434
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 297
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$2000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public next()V
    .locals 0

    .line 106
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 90
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public play()V
    .locals 0

    .line 82
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public previous()V
    .locals 0

    .line 114
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public registerMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 0

    .line 65
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    return-void
.end method

.method public removeCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 288
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method public requestPlay()Z
    .locals 1

    .line 219
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Z)Z

    move-result p0

    return p0
.end method

.method public requestPlay(Z)Z
    .locals 0

    .line 210
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Z)Z

    move-result p0

    return p0
.end method

.method public setCurrentUSB(BZ)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;BZ)V

    return-void
.end method

.method public setPlayMode(I)V
    .locals 0

    .line 262
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)V

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 0

    .line 198
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;I)V

    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 0

    .line 416
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;F)V

    return-void
.end method

.method public start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z
    .locals 0

    .line 171
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    move-result p0

    return p0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 153
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public stopPlaying()Z
    .locals 0

    .line 228
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public switchPlayMode()V
    .locals 0

    .line 270
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$1700(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public switchPlayPause()V
    .locals 0

    .line 98
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$500(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V

    return-void
.end method

.method public unregisterMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V
    .locals 0

    .line 74
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    return-void
.end method
