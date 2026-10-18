.class Lcom/yftech/libradio/dabui/DabPlayerFragment$1;
.super Landroid/os/Handler;
.source "DabPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;Landroid/os/Looper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2729

    if-ne v0, v1, :cond_2

    .line 53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RC_CARPLAY->CarPlay isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAVMDisplaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$000(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCarPlayCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$100(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCarplayDisconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$200(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$000(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$100(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$200(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$300(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$100(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {p1, v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$102(Lcom/yftech/libradio/dabui/DabPlayerFragment;Z)Z

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {p0, v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$202(Lcom/yftech/libradio/dabui/DabPlayerFragment;Z)Z

    goto :goto_0

    .line 67
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x272a

    if-ne v0, v1, :cond_3

    .line 68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RC_CARPLAY->CarPlay isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAVMDisplaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$000(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$000(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 71
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-virtual {p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->access$300(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 73
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    :cond_3
    :goto_0
    return-void
.end method
