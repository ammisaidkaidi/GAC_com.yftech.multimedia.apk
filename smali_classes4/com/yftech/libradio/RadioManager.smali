.class public Lcom/yftech/libradio/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/RadioManager$Holder;
    }
.end annotation


# instance fields
.field private carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private dataAm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field

.field private dataFm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private radioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioManager;->initialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/RadioManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/libradio/RadioManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/libradio/RadioManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/yftech/libradio/RadioManager$Holder;->INSTANCE:Lcom/yftech/libradio/RadioManager;

    return-object v0
.end method


# virtual methods
.method public getRadioData(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/yftech/libradio/RadioManager;->dataFm:Ljava/util/List;

    return-object p0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/RadioManager;->dataAm:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 34
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/libradio/RadioManager;->initialized:Z

    if-nez v0, :cond_0

    const-string v0, "init"

    .line 35
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioManager;->initialized:Z

    .line 37
    new-instance v0, Lcom/yftech/libradio/RadioManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioManager$1;-><init>(Lcom/yftech/libradio/RadioManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioManager;->radioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 44
    iget-object v0, p0, Lcom/yftech/libradio/RadioManager;->radioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 45
    new-instance v0, Lcom/yftech/libradio/RadioManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioManager$2;-><init>(Lcom/yftech/libradio/RadioManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioManager;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 52
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioManager;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 54
    sget-object v0, Lcom/yftech/libradio/RadioAnnounceManager;->ins:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/libradio/RadioAnnounceManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method

.method public setRadioData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 73
    iput-object p1, p0, Lcom/yftech/libradio/RadioManager;->dataFm:Ljava/util/List;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/yftech/libradio/RadioManager;->dataAm:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public declared-synchronized unInit()V
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/libradio/RadioManager;->initialized:Z

    if-eqz v0, :cond_0

    const-string v0, "unInit"

    .line 60
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioManager;->initialized:Z

    .line 62
    iget-object v0, p0, Lcom/yftech/libradio/RadioManager;->radioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 63
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioManager;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 64
    sget-object v0, Lcom/yftech/libradio/RadioAnnounceManager;->ins:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioAnnounceManager;->uninit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    throw v0
.end method
