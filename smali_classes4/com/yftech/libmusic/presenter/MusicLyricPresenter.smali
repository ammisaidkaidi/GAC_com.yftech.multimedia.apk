.class public Lcom/yftech/libmusic/presenter/MusicLyricPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicLyricPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicLyricPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicLyricFragmentView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicLyricPresenter;"
    }
.end annotation


# instance fields
.field private musicModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 17
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method


# virtual methods
.method public getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;-><init>(Lcom/yftech/libmusic/presenter/MusicLyricPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V

    return-void
.end method
