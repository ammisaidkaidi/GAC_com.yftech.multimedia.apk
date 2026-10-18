.class Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;
.super Ljava/lang/Object;
.source "MusicSoundEffectsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;

    iput p2, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;->this$1:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;

    iget-object v0, v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;

    iget p0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1$1;->val$type:I

    invoke-interface {v0, p0}, Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;->displayEQType(I)V

    :cond_0
    return-void
.end method
