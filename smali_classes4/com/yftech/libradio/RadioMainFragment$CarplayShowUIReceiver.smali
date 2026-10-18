.class Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarplayShowUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 1111
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/libradio/RadioMainFragment$1;)V
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.carplay.event.show_ui"

    .line 1116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    const-string p1, "ui_show"

    const/4 v0, 0x1

    .line 1117
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1120
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1121
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/CarRadioManager;->stop()I

    .line 1124
    :cond_0
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/RadioMainFragment;->access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1127
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.yftech.hicar.show"

    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 1129
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.yftech.hicar.show:isShow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1131
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/RadioMainFragment;->access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1134
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
