.class Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;
.super Ljava/lang/Object;
.source "VideoListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;Ljava/util/List;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;

    iput-object p2, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmedia/player/view/IVideoListActivityView;

    iget-object p0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/yftech/libmedia/player/view/IVideoListActivityView;->displayVideoList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
