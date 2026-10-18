.class Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RadioSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarplayShowUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.carplay.event.show_ui"

    .line 383
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ui_show"

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 388
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "com.yftech.hicar.show"

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_HICAR_SHOW_STATE isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 394
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
