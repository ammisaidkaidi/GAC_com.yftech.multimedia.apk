.class Lcom/yftech/multimedia/MainActivity$3;
.super Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/multimedia/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/MainActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-direct {p0}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteError(II)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-static {p1}, Lcom/yftech/multimedia/MainActivity;->access$000(Lcom/yftech/multimedia/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 228
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 229
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-static {p0}, Lcom/yftech/multimedia/MainActivity;->access$000(Lcom/yftech/multimedia/MainActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeleteSuccess(I)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-static {p1}, Lcom/yftech/multimedia/MainActivity;->access$000(Lcom/yftech/multimedia/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    .line 220
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 221
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-static {p0}, Lcom/yftech/multimedia/MainActivity;->access$000(Lcom/yftech/multimedia/MainActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMusicDataChange(I)V
    .locals 0

    return-void
.end method

.method public onPhotoDataChange(I)V
    .locals 0

    return-void
.end method

.method public onScanStatusChange(IZ)V
    .locals 0

    return-void
.end method

.method public onTextDataChange(I)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onTextDataChange(I)V

    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUsbStatusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbExists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_USB_STATUS_CHANGE_IN_PHOTO_AND_VIDEO"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "usbIndex"

    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isUsbExists"

    .line 183
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity$3;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onVideoDataChange(I)V
    .locals 0

    return-void
.end method
