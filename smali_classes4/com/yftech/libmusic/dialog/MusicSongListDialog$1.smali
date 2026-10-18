.class Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;
.super Landroid/os/Handler;
.source "MusicSongListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSongListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Landroid/os/Looper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$002(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)Z

    .line 86
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 89
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RC_REFRESH:position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setPlayingIndex(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method
