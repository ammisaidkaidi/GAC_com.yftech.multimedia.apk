.class public Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicPlayerPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicPlayerPresenter;"
    }
.end annotation


# instance fields
.field private musicModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 23
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method


# virtual methods
.method public getLyricFromFile(Ljava/lang/String;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$2;-><init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;)V

    invoke-virtual {p1, p2, p0, v0}, Lcom/yftech/libmusic/model/MusicModel;->getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V

    return-void
.end method

.method public getMusicFiles(Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;-><init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getMusicFiles(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V

    return-void
.end method

.method public getThumbDataByPath(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;-><init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getThumbDataByPath(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V

    return-void
.end method
