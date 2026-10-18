.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 651
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause:isClickTheSame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCarPlayDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 664
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v0, "TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
