.class Lcom/yftech/libgallery/presenter/PictureListPresenter$3;
.super Ljava/lang/Object;
.source "PictureListPresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/presenter/PictureListPresenter;->getPictureDataAfterDeleting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/presenter/PictureListPresenter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$3;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$3;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$3;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libgallery/presenter/PictureListPresenter$3$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libgallery/presenter/PictureListPresenter$3$1;-><init>(Lcom/yftech/libgallery/presenter/PictureListPresenter$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
