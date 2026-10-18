.class Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->onComplete([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

.field final synthetic val$thumbData:[B


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;[B)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->val$thumbData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;

    iget-object v1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->this$1:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;

    iget-object v1, v1, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->val$path:Ljava/lang/String;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;->val$thumbData:[B

    invoke-interface {v0, v1, p0}, Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;->displayThumbDataByPath(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
