.class public interface abstract Lcom/yftech/libgallery/model/interfaces/IPictureModel;
.super Ljava/lang/Object;
.source "IPictureModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;,
        Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;,
        Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;
    }
.end annotation


# virtual methods
.method public abstract deleteImages(Ljava/util/List;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getGallery(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getImageList(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;",
            ")V"
        }
    .end annotation
.end method
