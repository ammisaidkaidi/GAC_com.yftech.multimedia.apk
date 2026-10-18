.class public interface abstract Lcom/yftech/libmedia/player/model/interfaces/IVideoModel;
.super Ljava/lang/Object;
.source "IVideoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;,
        Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getVideo(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getVideoPlayList(ILjava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;",
            ")V"
        }
    .end annotation
.end method
