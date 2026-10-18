.class Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;
.super Ljava/lang/Object;
.source "MusicSearchPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->searchMusic(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

.field final synthetic val$keyWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->val$keyWord:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1$1;-><init>(Lcom/yftech/libmusic/presenter/MusicSearchPresenter$1;Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
