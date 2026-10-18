.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

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

    .line 310
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    iget-boolean v0, v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isDisplaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 314
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 315
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothPhoneCallStateChanged:status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 322
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onResume()V

    goto :goto_0

    .line 325
    :cond_1
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onStop()V

    :cond_2
    :goto_0
    return-void
.end method
