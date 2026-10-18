.class public Lcom/yftech/libgallery/model/PictureModel;
.super Ljava/lang/Object;
.source "PictureModel.java"

# interfaces
.implements Lcom/yftech/libgallery/model/interfaces/IPictureModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteImages(Ljava/util/List;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V
    .locals 1
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

    .line 142
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 146
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 147
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 148
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libgallery/model/PictureModel$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libgallery/model/PictureModel$2;-><init>(Lcom/yftech/libgallery/model/PictureModel;Ljava/util/List;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getGallery(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V
    .locals 1
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
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libgallery/model/PictureModel$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libgallery/model/PictureModel$1;-><init>(Lcom/yftech/libgallery/model/PictureModel;ILcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getImageList(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;)V
    .locals 2
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

    .line 123
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getData(I)Ljava/util/List;

    move-result-object p0

    const/4 p2, -0x1

    if-eqz p0, :cond_1

    .line 126
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x0

    .line 127
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 128
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p4, p2, p0}, Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;->onComplete(ILjava/util/List;)V

    return-void
.end method
