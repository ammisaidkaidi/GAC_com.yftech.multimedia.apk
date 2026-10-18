.class public Lcom/yftech/libmusic/presenter/MusicSearchPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicSearchPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicSearchPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicSearchActivityView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicSearchPresenter;"
    }
.end annotation


# instance fields
.field private final musicModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 25
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method


# virtual methods
.method public searchHotMusic(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$2;-><init>(Lcom/yftech/libmusic/presenter/MusicSearchPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getHotMusicByKeyword(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;)V

    return-void
.end method

.method public searchMusic(Ljava/lang/String;I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;-><init>(Lcom/yftech/libmusic/presenter/MusicSearchPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->searchMusic(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V

    return-void
.end method
