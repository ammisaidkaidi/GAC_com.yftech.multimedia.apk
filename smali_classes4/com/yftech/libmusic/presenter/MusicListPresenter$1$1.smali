.class Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;
.super Ljava/lang/Object;
.source "MusicListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicListPresenter$1;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicListPresenter$1;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicListPresenter$1;Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicListPresenter$1;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    iput-object p3, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicListPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicListActivityView;

    iget-object v1, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->val$playingMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicListPresenter$1$1;->val$list:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/yftech/libmusic/view/IMusicListActivityView;->displayMusicList(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V

    :cond_0
    return-void
.end method
