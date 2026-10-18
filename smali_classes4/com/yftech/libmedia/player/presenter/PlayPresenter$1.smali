.class Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;
.super Ljava/lang/Object;
.source "PlayPresenter.java"

# interfaces
.implements Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getVideoPlayList(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/presenter/PlayPresenter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libmedia/player/presenter/PlayPresenter$1$1;-><init>(Lcom/yftech/libmedia/player/presenter/PlayPresenter$1;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
