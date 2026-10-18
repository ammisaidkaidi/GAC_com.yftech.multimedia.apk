.class Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;
.super Ljava/lang/Object;
.source "BrowseImagePresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->getImageList(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/presenter/BrowseImagePresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/presenter/BrowseImagePresenter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;->this$0:Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;->this$0:Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;->this$0:Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1$1;-><init>(Lcom/yftech/libgallery/presenter/BrowseImagePresenter$1;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
