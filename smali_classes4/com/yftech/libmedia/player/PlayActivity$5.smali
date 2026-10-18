.class Lcom/yftech/libmedia/player/PlayActivity$5;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$5;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 368
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 369
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged\uff1astate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$5;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    iget-boolean v0, v0, Lcom/yftech/libmedia/player/PlayActivity;->isDisplaying:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$5;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onPause()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$5;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    iget-boolean p1, p1, Lcom/yftech/libmedia/player/PlayActivity;->isDisplaying:Z

    if-eqz p1, :cond_1

    .line 381
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$5;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
