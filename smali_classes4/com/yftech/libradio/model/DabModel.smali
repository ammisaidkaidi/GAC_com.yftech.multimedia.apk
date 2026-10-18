.class public Lcom/yftech/libradio/model/DabModel;
.super Ljava/lang/Object;
.source "DabModel.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IDabModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavors(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 76
    instance-of v0, p1, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lcom/media/common/util/BaseApplication;

    .line 78
    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/model/DabModel$3;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/model/DabModel$3;-><init>(Lcom/yftech/libradio/model/DabModel;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startScan(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lcom/media/common/util/BaseApplication;

    .line 32
    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/model/DabModel$1;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/model/DabModel$1;-><init>(Lcom/yftech/libradio/model/DabModel;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopScan(Lcom/yftech/libmvpmodule/BasePresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/media/common/util/BaseApplication;

    .line 56
    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/model/DabModel$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/model/DabModel$2;-><init>(Lcom/yftech/libradio/model/DabModel;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
