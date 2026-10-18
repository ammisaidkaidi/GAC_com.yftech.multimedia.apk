.class Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;
.super Ljava/lang/Object;
.source "PlayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->onComplete(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;

.field final synthetic val$playList:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;ILjava/util/List;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;

    iput p2, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->val$position:I

    iput-object p3, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->val$playList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->this$1:Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmedia/player/view/IPlayActivityView;

    iget v1, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->val$position:I

    iget-object p0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;->val$playList:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/yftech/libmedia/player/view/IPlayActivityView;->displayVideoPlayList(ILjava/util/List;)V

    :cond_0
    return-void
.end method
