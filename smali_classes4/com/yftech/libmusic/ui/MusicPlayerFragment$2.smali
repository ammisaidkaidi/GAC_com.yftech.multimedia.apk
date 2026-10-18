.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayProgress()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/ui/MusicLyricFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/ui/MusicLyricFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/ui/MusicLyricFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setMusicProgress(IZ)V

    .line 188
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
