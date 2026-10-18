.class public Lcom/yftech/libmedia/player/presenter/VideoListPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "VideoListPresenter.java"

# interfaces
.implements Lcom/yftech/libmedia/player/presenter/interfaces/IVideoListPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmedia/player/view/IVideoListActivityView;",
        ">;",
        "Lcom/yftech/libmedia/player/presenter/interfaces/IVideoListPresenter;"
    }
.end annotation


# instance fields
.field private final videoModel:Lcom/yftech/libmedia/player/model/VideoModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 26
    new-instance p1, Lcom/yftech/libmedia/player/model/VideoModel;

    invoke-direct {p1}, Lcom/yftech/libmedia/player/model/VideoModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->videoModel:Lcom/yftech/libmedia/player/model/VideoModel;

    return-void
.end method


# virtual methods
.method public getVideoListData(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->videoModel:Lcom/yftech/libmedia/player/model/VideoModel;

    new-instance v1, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;-><init>(Lcom/yftech/libmedia/player/presenter/VideoListPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmedia/player/model/VideoModel;->getVideo(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V

    return-void
.end method
