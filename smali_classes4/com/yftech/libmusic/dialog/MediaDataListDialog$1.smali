.class Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;
.super Landroid/os/Handler;
.source "MediaDataListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MediaDataListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

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

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->access$002(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Z)Z

    .line 87
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 88
    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    .line 90
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RC_REFRESH:position="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
