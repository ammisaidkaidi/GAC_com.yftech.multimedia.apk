.class public Lcom/yftech/libmusic/presenter/MusicListPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicListPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicListPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicListActivityView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicListPresenter;"
    }
.end annotation


# instance fields
.field private final videoModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 25
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter;->videoModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method


# virtual methods
.method public getMusicListData(I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter;->videoModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicListPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicListPresenter$1;-><init>(Lcom/yftech/libmusic/presenter/MusicListPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getMusic(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;)V

    return-void
.end method
