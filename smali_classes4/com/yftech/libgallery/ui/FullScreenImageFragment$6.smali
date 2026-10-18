.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "FullScreenImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

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

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 448
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 451
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 452
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 453
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
