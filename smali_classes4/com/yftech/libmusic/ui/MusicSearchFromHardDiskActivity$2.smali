.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "MusicSearchFromHardDiskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged:isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    iget-boolean p1, p1, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isDisplaying:Z

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged:hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/media/common/util/SoftHideKeyBoardUtil;->isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
