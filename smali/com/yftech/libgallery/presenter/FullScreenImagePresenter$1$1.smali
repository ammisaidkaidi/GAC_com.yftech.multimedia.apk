.class Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;
.super Ljava/lang/Object;
.source "FullScreenImagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;->onComplete(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;ILjava/util/List;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;

    iput p2, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->val$position:I

    iput-object p3, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;->this$0:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->this$1:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;

    iget-object v0, v0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1;->this$0:Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    invoke-virtual {v0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/view/IFullScreenImageFragmentView;

    iget v1, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->val$position:I

    iget-object p0, p0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter$1$1;->val$data:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/yftech/libgallery/view/IFullScreenImageFragmentView;->displayImages(ILjava/util/List;)V

    :cond_0
    return-void
.end method
