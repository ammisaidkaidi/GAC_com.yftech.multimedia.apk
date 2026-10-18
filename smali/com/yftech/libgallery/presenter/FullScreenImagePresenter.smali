.class public Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "FullScreenImagePresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/presenter/interfaces/IFullScreenImagePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libgallery/view/IFullScreenImageFragmentView;",
        ">;",
        "Lcom/yftech/libgallery/presenter/interfaces/IFullScreenImagePresenter;"
    }
.end annotation


# instance fields
.field private pictureModel:Lcom/yftech/libgallery/model/PictureModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 22
    new-instance p1, Lcom/yftech/libgallery/model/PictureModel;

    invoke-direct {p1}, Lcom/yftech/libgallery/model/PictureModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    return-void
.end method


# virtual methods
.method public getImagesByIndex(ILjava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    new-instance v1, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;-><init>(Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;)V

    invoke-virtual {v0, p2, p1, p0, v1}, Lcom/yftech/libgallery/model/PictureModel;->getImageList(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;)V

    return-void
.end method
