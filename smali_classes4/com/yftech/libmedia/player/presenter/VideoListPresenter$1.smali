.class Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;
.super Ljava/lang/Object;
.source "VideoListPresenter.java"

# interfaces
.implements Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getVideoListData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/presenter/VideoListPresenter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

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
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;->this$0:Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1$1;-><init>(Lcom/yftech/libmedia/player/presenter/VideoListPresenter$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
