.class public Lcom/yftech/libmusic/model/MusicModel;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel;


# instance fields
.field private final tempKeyWords:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u6709"

    const-string v1, "\u6709\u6ca1\u6709"

    const-string v2, "\u6709\u4f55\u4e0d\u53ef"

    const-string v3, "\u4e00\u8def\u4e0a\u6709\u4f60"

    const-string v4, "\u6709\u90a3\u548c\u4e00\u77ac\u95f4"

    const-string v5, "\u6709\u4f55\u4e0d\u53ef"

    .line 40
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/model/MusicModel;->tempKeyWords:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/yftech/libmusic/model/MusicModel;->getLyricFromFileExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLyricFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 426
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 430
    array-length v0, p1

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v5, p1, v3

    .line 431
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/yftech/libmusic/model/MusicModel;->getLyricFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 439
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lrc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 443
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 446
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object v1, v4

    :cond_4
    :goto_3
    return-object v1
.end method

.method private getLyricFromFileExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 461
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 465
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    .line 466
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 468
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lrc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v0

    .line 475
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getBandCurValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandCurValue()[F

    move-result-object p0

    if-eqz p2, :cond_0

    .line 322
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;->onComplete([F)V

    :cond_0
    return-void
.end method

.method public getBandMaxValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation

    .line 328
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMaxValue()[F

    move-result-object p0

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBandMaxValue Result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 332
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;->onComplete([F)V

    :cond_0
    return-void
.end method

.method public getBandMinValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMinValue()[F

    move-result-object p0

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBandMinValue Result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 343
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;->onComplete([F)V

    :cond_0
    return-void
.end method

.method public getCurrentPlayList(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;",
            ")V"
        }
    .end annotation

    .line 146
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 153
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 156
    new-instance v4, Lcom/yftech/libmusic/bean/MediaFileItem;

    invoke-direct {v4, v3}, Lcom/yftech/libmusic/bean/MediaFileItem;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 157
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yftech/libmusic/bean/MediaFileItem;->setTitle(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yftech/libmusic/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/yftech/libmusic/bean/MediaFileItem;->setDuration(J)V

    .line 161
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 170
    invoke-interface {p2, v1, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;->onComplete(ILjava/util/List;)V

    :cond_2
    return-void
.end method

.method public getEQType(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;",
            ")V"
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 287
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQEnable(Z)Z

    .line 308
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getEQType()I

    move-result p0

    if-eqz p2, :cond_1

    .line 310
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;->onComplete(I)V

    :cond_1
    return-void
.end method

.method public getHotMusicByKeyword(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;",
            ")V"
        }
    .end annotation

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel;->tempKeyWords:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p3, p2}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 230
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 231
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 232
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmusic/model/MusicModel$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libmusic/model/MusicModel$3;-><init>(Lcom/yftech/libmusic/model/MusicModel;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getMusic(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object p0

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFolder;

    if-eqz p2, :cond_0

    .line 88
    new-instance v0, Lcom/yftech/libmusic/bean/MusicListItem;

    invoke-direct {v0}, Lcom/yftech/libmusic/bean/MusicListItem;-><init>()V

    .line 89
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/bean/MusicListItem;->setDir(Z)V

    .line 91
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/bean/MusicListItem;->setTitle(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/bean/MusicListItem;->setFoloder(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 98
    new-instance v3, Lcom/yftech/libmusic/bean/MusicListItem;

    invoke-direct {v3, v2}, Lcom/yftech/libmusic/bean/MusicListItem;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/bean/MusicListItem;->setData(Ljava/util/List;)V

    .line 104
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p0

    if-eqz p3, :cond_4

    .line 112
    invoke-interface {p3, p0, p1}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public getMusicFiles(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 49
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 50
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 51
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmusic/model/MusicModel$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libmusic/model/MusicModel$1;-><init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getPlayListSize(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayListSize()I

    move-result p0

    if-eqz p2, :cond_0

    .line 138
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public getPlayPosition(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;",
            ")V"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayPosition()I

    move-result p0

    if-eqz p2, :cond_0

    .line 180
    invoke-interface {p2, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public getThumbDataByPath(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;",
            ")V"
        }
    .end annotation

    .line 383
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 387
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 388
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 389
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmusic/model/MusicModel$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libmusic/model/MusicModel$4;-><init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public searchMusic(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-virtual {p3}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 188
    invoke-virtual {p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p3

    .line 190
    instance-of v0, p3, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 191
    check-cast p3, Lcom/media/common/util/BaseApplication;

    .line 192
    invoke-virtual {p3}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lcom/yftech/libmusic/model/MusicModel$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/yftech/libmusic/model/MusicModel$2;-><init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;ILcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setBandValue([FLcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 366
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 369
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQEnable(Z)Z

    .line 372
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setBandValue([F)Z

    move-result p0

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EQ Band Value Setting Result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 376
    invoke-interface {p3, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;->onComplete(Z)V

    :cond_1
    return-void
.end method

.method public setDTSType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isDTSEnable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 410
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSEnable(Z)Z

    .line 413
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSType(I)Z

    move-result p0

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DTS Value Setting Result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 418
    invoke-interface {p3, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;->onComplete(Z)V

    :cond_1
    return-void
.end method

.method public setEQType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 349
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 352
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQEnable(Z)Z

    .line 355
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQType(I)Z

    move-result p0

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EQType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Setting Result:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 359
    invoke-interface {p3, p0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;->onComplete(Z)V

    :cond_1
    return-void
.end method
