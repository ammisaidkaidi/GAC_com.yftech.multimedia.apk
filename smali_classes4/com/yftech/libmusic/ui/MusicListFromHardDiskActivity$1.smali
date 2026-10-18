.class Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$1;
.super Landroid/os/Handler;
.source "MusicListFromHardDiskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 87
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RC_REFRESH:position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p0, v0, :cond_2

    .line 95
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-nez p0, :cond_1

    .line 98
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->next()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->previous()V

    :cond_2
    :goto_0
    return-void
.end method
