.class public Lcom/yftech/libgallery/presenter/BrowseImagePresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "BrowseImagePresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/presenter/interfaces/IBrowseImagePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libgallery/view/IBrowseImageFragmentView;",
        ">;",
        "Lcom/yftech/libgallery/presenter/interfaces/IBrowseImagePresenter;"
    }
.end annotation


# instance fields
.field private pictureModel:Lcom/yftech/libgallery/model/PictureModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 16
    new-instance p1, Lcom/yftech/libgallery/model/PictureModel;

    invoke-direct {p1}, Lcom/yftech/libgallery/model/PictureModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    return-void
.end method


# virtual methods
.method public getImageList(Ljava/lang/String;I)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->pictureModel:Lcom/yftech/libgallery/model/PictureModel;

    new-instance v1, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;-><init>(Lcom/yftech/libgallery/presenter/BrowseImagePresenter;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/yftech/libgallery/model/PictureModel;->getImageList(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;)V

    return-void
.end method
