.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
.source "MusicSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 225
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setBlueToothEnable(Z)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setBlueToothEnable(Z)V

    .line 229
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getTypeBySelection()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
