.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerFragment.java"


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

    .line 259
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "value"

    const/4 v0, -0x1

    .line 265
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    move-result-object p0

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicDuration()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicDurationChanged(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 270
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    move-result-object p0

    const/16 p1, -0x64

    invoke-interface {p0, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicDurationChanged(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 273
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 276
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_3
    :goto_0
    return-void
.end method
