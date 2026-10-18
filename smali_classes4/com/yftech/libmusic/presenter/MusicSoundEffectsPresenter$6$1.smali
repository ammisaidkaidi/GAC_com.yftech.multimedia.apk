.class Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;
.super Ljava/lang/Object;
.source "MusicSoundEffectsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;->onComplete([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;

.field final synthetic val$value:[F


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;[F)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;->val$value:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6$1;->val$value:[F

    invoke-interface {v0, p0}, Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;->displayBandMaxValue([F)V

    :cond_0
    return-void
.end method
