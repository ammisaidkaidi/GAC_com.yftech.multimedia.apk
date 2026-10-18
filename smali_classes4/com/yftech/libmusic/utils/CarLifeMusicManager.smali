.class public Lcom/yftech/libmusic/utils/CarLifeMusicManager;
.super Ljava/lang/Object;
.source "CarLifeMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager; = null

.field private static final string_unknown:Ljava/lang/String; = "unknown"


# instance fields
.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

.field private mDuration:I

.field private mIsCarLifeConnect:Z

.field private mPlayState:I

.field private mProgress:I

.field private mSinger:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private onCarLifeDataChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private tempInfo:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mPlayState:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mProgress:I

    .line 34
    iput v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mDuration:I

    .line 98
    new-instance v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;-><init>(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 127
    new-instance v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;-><init>(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    invoke-direct {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->tempInfo:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    const-string v0, "CarLifeMusicManager:registerCallback"

    .line 54
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 56
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->registerCarPhoneLinkMediaCallback(Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;Landroid/os/Handler;)V

    const-string v0, "carlife"

    .line 59
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mPlayState:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mPlayState:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->tempInfo:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mSinger:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mSinger:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mProgress:I

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mProgress:I

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mDuration:I

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mDuration:I

    return p1
.end method

.method public static getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;
    .locals 2

    .line 38
    sget-object v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-direct {v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;-><init>()V

    sput-object v1, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    return-object v0
.end method


# virtual methods
.method public getCarLifeConnectionStatus()Z
    .locals 2

    const-string v0, "carlife"

    .line 221
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarLifeConnectionStatus:mIsCarLifeConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 224
    iget-boolean p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mIsCarLifeConnect:Z

    return p0
.end method

.method public getCarLifeMusicDuration()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mDuration:I

    return p0
.end method

.method public getCarLifeMusicInformation()Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;
    .locals 3

    .line 247
    new-instance v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    invoke-direct {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mSinger:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "songInfo:mTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSinger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mSinger:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    .line 251
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mSinger:Ljava/lang/String;

    iput-object p0, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    const-string p0, ""

    .line 252
    iput-object p0, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->album:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "unknown"

    .line 257
    iput-object p0, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    const-string p0, "unknown"

    .line 258
    iput-object p0, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    const-string p0, "unknown"

    .line 259
    iput-object p0, v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->album:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCarLifeMusicPlayStatus()I
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarLifeMusicPlayStatus:mPlayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 237
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mPlayState:I

    return p0
.end method

.method public getCarLifeMusicProgress()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mProgress:I

    return p0
.end method

.method public registerMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "release"

    .line 67
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 70
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;)V

    .line 72
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iput-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    .line 77
    :cond_0
    sput-object v1, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->instance:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    return-void
.end method

.method public setMusicControl(I)V
    .locals 1

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Control CarLife Music:value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->previous()Z

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->next()Z

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->play()Z

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->stop()Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->onCarLifeDataChangedCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
