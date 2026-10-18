.class public interface abstract Lcom/yftech/multimedia/model/interfaces/ISubjectModel;
.super Ljava/lang/Object;
.source "ISubjectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;,
        Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;,
        Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;,
        Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getPhotoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
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
.end method

.method public abstract getPhotoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V
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
.end method

.method public abstract getPhotoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
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
.end method

.method public abstract getVideoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
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
.end method

.method public abstract getVideoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V
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
.end method

.method public abstract getVideoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
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
.end method
