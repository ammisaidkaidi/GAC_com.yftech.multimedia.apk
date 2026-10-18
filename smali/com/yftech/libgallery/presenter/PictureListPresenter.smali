.class public Lcom/yftech/libgallery/presenter/PictureListPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "PictureListPresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/presenter/interfaces/IPictureListPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libgallery/view/IPictureListActivityView;",
        ">;",
        "Lcom/yftech/libgallery/presenter/interfaces/IPictureListPresenter;"
    }
.end annotation


# instance fields
.field private final pictureModel:Lcom/yftech/libgallery/model/PictureModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 25
    new-instance p1, Lcom/yftech/libgallery/model/PictureModel;

    invoke-direct {p1}, Lcom/yftech/libgallery/model/PictureModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    return-void
.end method


# virtual methods
.method public deletePicture(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    new-instance v1, Lcom/yftech/libgallery/presenter/PictureListPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter$2;-><init>(Lcom/yftech/libgallery/presenter/PictureListPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libgallery/model/PictureModel;->deleteImages(Ljava/util/List;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V

    return-void
.end method

.method public getPictureDataAfterDeleting(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    new-instance v1, Lcom/yftech/libgallery/presenter/PictureListPresenter$3;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter$3;-><init>(Lcom/yftech/libgallery/presenter/PictureListPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libgallery/model/PictureModel;->getGallery(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V

    return-void
.end method

.method public getPictureListData(I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    new-instance v1, Lcom/yftech/libgallery/presenter/PictureListPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter$1;-><init>(Lcom/yftech/libgallery/presenter/PictureListPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libgallery/model/PictureModel;->getGallery(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V

    return-void
.end method
