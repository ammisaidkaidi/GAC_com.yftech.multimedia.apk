.class Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;Ljava/util/List;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$1$1;->val$data:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;->displayMusicFiles(Ljava/util/List;)V

    :cond_0
    return-void
.end method
