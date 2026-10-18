.class Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;
.super Ljava/lang/Object;
.source "PictureListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/presenter/PictureListPresenter$2;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$2;

.field final synthetic val$isSuccessful:Z


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/presenter/PictureListPresenter$2;Z)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$2;

    iput-boolean p2, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;->val$isSuccessful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$2;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$2;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/view/IPictureListActivityView;

    iget-boolean p0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$2$1;->val$isSuccessful:Z

    invoke-interface {v0, p0}, Lcom/yftech/libgallery/view/IPictureListActivityView;->displayPictureDeleteResult(Z)V

    :cond_0
    return-void
.end method
