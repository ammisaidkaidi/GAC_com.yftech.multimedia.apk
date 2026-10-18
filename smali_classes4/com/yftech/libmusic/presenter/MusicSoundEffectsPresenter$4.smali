.class Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;
.super Ljava/lang/Object;
.source "MusicSoundEffectsPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getBandCurValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([F)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;->this$0:Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4$1;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;[F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
