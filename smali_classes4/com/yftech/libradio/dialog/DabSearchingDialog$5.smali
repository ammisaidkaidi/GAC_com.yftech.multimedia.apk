.class Lcom/yftech/libradio/dialog/DabSearchingDialog$5;
.super Landroid/content/BroadcastReceiver;
.source "DabSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$5;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.yftech.avmservice.SHOW_STATE"

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.yftech.avmservice.SHOW_STATE:isShow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$5;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    .line 375
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$5;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    :cond_0
    return-void
.end method
