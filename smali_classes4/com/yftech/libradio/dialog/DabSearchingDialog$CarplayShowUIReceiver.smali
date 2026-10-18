.class Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DabSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarplayShowUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;Lcom/yftech/libradio/dialog/DabSearchingDialog$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.carplay.event.show_ui"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ui_show"

    const/4 v0, 0x1

    .line 344
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    .line 349
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "com.yftech.hicar.show"

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() ACTION_HICAR_SHOW_STATE isShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    .line 356
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
