.class public Lcom/yftech/libmedia/player/presenter/PlayPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "PlayPresenter.java"

# interfaces
.implements Lcom/yftech/libmedia/player/presenter/interfaces/IPlayPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmedia/player/view/IPlayActivityView;",
        ">;",
        "Lcom/yftech/libmedia/player/presenter/interfaces/IPlayPresenter;"
    }
.end annotation


# instance fields
.field private final videoModel:Lcom/yftech/libmedia/player/model/VideoModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 16
    new-instance p1, Lcom/yftech/libmedia/player/model/VideoModel;

    invoke-direct {p1}, Lcom/yftech/libmedia/player/model/VideoModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->videoModel:Lcom/yftech/libmedia/player/model/VideoModel;

    return-void
.end method


# virtual methods
.method public getVideoPlayList(ILjava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->videoModel:Lcom/yftech/libmedia/player/model/VideoModel;

    new-instance v1, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;-><init>(Lcom/yftech/libmedia/player/presenter/PlayPresenter;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/yftech/libmedia/player/model/VideoModel;->getVideoPlayList(ILjava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;)V

    return-void
.end method
