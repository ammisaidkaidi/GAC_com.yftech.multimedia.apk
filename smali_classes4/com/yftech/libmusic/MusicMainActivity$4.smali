.class Lcom/yftech/libmusic/MusicMainActivity$4;
.super Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;
.source "MusicMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/MusicMainActivity;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$4;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicDataChange(I)V
    .locals 1

    .line 1012
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMusicDataChange:index="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPhotoDataChange(I)V
    .locals 0

    .line 1024
    invoke-super {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onPhotoDataChange(I)V

    return-void
.end method

.method public onScanStatusChange(IZ)V
    .locals 1

    .line 1004
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanStatusChange:index="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isScanner="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTextDataChange(I)V
    .locals 0

    .line 1029
    invoke-super {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onTextDataChange(I)V

    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUsbStatusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_USB_STATUS_CHANGE"

    .line 995
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "usbIndex"

    .line 996
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isUsbExists"

    .line 997
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 998
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity$4;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onVideoDataChange(I)V
    .locals 0

    .line 1019
    invoke-super {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onVideoDataChange(I)V

    return-void
.end method
