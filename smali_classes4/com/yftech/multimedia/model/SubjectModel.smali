.class public Lcom/yftech/multimedia/model/SubjectModel;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Lcom/yftech/multimedia/model/interfaces/ISubjectModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/yftech/multimedia/model/SubjectModel$2;

    invoke-direct {p2, p0, p3}, Lcom/yftech/multimedia/model/SubjectModel$2;-><init>(Lcom/yftech/multimedia/model/SubjectModel;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPhotoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/multimedia/model/SubjectModel$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/multimedia/model/SubjectModel$6;-><init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPhotoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/multimedia/model/SubjectModel$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/multimedia/model/SubjectModel$4;-><init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVideoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/yftech/multimedia/model/SubjectModel$1;

    invoke-direct {p2, p0, p3}, Lcom/yftech/multimedia/model/SubjectModel$1;-><init>(Lcom/yftech/multimedia/model/SubjectModel;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVideoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/multimedia/model/SubjectModel$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/multimedia/model/SubjectModel$5;-><init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVideoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/yftech/multimedia/MediaApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/multimedia/model/SubjectModel$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/multimedia/model/SubjectModel$3;-><init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
