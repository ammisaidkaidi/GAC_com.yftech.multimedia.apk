.class Lcom/yftech/libmusic/MusicMainActivity$5;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
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
.field private addrees:Ljava/lang/String;

.field final synthetic this$0:Lcom/yftech/libmusic/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/MusicMainActivity;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    const/4 p1, 0x0

    .line 1035
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->addrees:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothAvrcpConnectStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->addrees:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 1047
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->addrees:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->addrees:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1051
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->addrees:Ljava/lang/String;

    .line 1054
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_BLUETOOTH_STATUS_CHANGE"

    .line 1055
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    .line 1056
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "deviceName"

    if-eqz p1, :cond_3

    .line 1057
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity$5;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
