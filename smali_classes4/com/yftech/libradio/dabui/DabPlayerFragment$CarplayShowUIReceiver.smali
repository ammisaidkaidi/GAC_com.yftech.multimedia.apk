.class Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DabPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarplayShowUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;Lcom/yftech/libradio/dabui/DabPlayerFragment$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.carplay.event.show_ui"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    const-string p1, "ui_show"

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    iget-object p2, p2, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2729

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "com.yftech.hicar.show"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.yftech.hicar.show:isShow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    iget-object p2, p2, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x272a

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dabui/DabPlayerFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
