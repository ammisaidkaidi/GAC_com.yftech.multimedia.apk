.class Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;
.super Ljava/lang/Object;
.source "PictureListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/presenter/PictureListPresenter$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/presenter/PictureListPresenter$1;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$1;

    iput-object p2, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/PictureListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1;->this$0:Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/view/IPictureListActivityView;

    iget-object p0, p0, Lcom/yftech/libgallery/presenter/PictureListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/yftech/libgallery/view/IPictureListActivityView;->displayPictureList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
