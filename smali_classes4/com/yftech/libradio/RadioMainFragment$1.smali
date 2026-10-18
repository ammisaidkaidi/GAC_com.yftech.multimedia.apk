.class Lcom/yftech/libradio/RadioMainFragment$1;
.super Landroid/os/Handler;
.source "RadioMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioMainFragment;Landroid/os/Looper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p1, "MSG_UPDATE_SCALE_UI_FM"

    .line 129
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-static {v0, v2, v1, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$000(Lcom/yftech/libradio/RadioMainFragment;IIZ)V

    .line 132
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto/16 :goto_0

    .line 133
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string p1, "MSG_UPDATE_SCALE_UI_AM"

    .line 134
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$000(Lcom/yftech/libradio/RadioMainFragment;IIZ)V

    .line 137
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto/16 :goto_0

    .line 138
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 140
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RC_CARPLAY->CarPlay isShow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAVMDisplaying="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v2}, Lcom/yftech/libradio/RadioMainFragment;->access$200(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCarPlayCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v2}, Lcom/yftech/libradio/RadioMainFragment;->access$300(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCarplayDisconnected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v2}, Lcom/yftech/libradio/RadioMainFragment;->access$400(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$200(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$300(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$400(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$300(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 150
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$302(Lcom/yftech/libradio/RadioMainFragment;Z)Z

    .line 152
    :cond_3
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$402(Lcom/yftech/libradio/RadioMainFragment;Z)Z

    goto :goto_0

    .line 153
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 154
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RC_CARPLAY->CarPlay isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAVMDisplaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v1}, Lcom/yftech/libradio/RadioMainFragment;->access$200(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$200(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 157
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    .line 158
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$1;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->isHidden()Z

    move-result p0

    if-nez p0, :cond_5

    .line 159
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    :cond_5
    :goto_0
    return-void
.end method
