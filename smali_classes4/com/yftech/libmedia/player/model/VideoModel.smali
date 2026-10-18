.class public Lcom/yftech/libmedia/player/model/VideoModel;
.super Ljava/lang/Object;
.source "VideoModel.java"

# interfaces
.implements Lcom/yftech/libmedia/player/model/interfaces/IVideoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideo(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V
    .locals 1
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

    .line 39
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 43
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 44
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 45
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmedia/player/model/VideoModel$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libmedia/player/model/VideoModel$1;-><init>(Lcom/yftech/libmedia/player/model/VideoModel;ILcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getVideoPlayList(ILjava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;)V
    .locals 0
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

    .line 132
    invoke-static {}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getInstance()Lcom/yftech/libmedia/player/utils/MyVideoDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getData(I)Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Target Video:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 137
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 138
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 140
    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 148
    :goto_1
    invoke-interface {p4, p1, p0}, Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;->onComplete(ILjava/util/List;)V

    return-void
.end method
