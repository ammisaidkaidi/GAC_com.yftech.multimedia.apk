.class Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 574
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->access$3700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied: com.yf.media.scanner killing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4200(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4300(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4400(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Z

    :goto_0
    return-void
.end method
