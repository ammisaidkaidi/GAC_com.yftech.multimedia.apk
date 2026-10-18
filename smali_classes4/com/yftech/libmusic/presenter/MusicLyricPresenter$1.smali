.class Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;
.super Ljava/lang/Object;
.source "MusicLyricPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/presenter/MusicLyricPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicLyricPresenter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1$1;-><init>(Lcom/yftech/libmusic/presenter/MusicLyricPresenter$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
