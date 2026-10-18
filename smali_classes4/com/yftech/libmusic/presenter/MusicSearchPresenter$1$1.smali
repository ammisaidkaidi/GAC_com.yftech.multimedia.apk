.class Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;
.super Ljava/lang/Object;
.source "MusicSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    iput-object p3, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicSearchActivityView;

    iget-object v1, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    iget-object v2, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->val$data:Ljava/util/List;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->val$keyWord:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/yftech/libmusic/view/IMusicSearchActivityView;->displayMusicSearchResult(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
