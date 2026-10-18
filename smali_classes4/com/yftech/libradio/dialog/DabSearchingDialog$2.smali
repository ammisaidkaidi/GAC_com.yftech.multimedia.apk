.class Lcom/yftech/libradio/dialog/DabSearchingDialog$2;
.super Ljava/lang/Object;
.source "DabSearchingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 82
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$100(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Z

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TryScanSaveRunnable() isScanStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tryScanSaveCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v2}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$200(Lcom/yftech/libradio/dialog/DabSearchingDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$200(Lcom/yftech/libradio/dialog/DabSearchingDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$208(Lcom/yftech/libradio/dialog/DabSearchingDialog;)I

    const-string v0, "TryScanSaveRunnable() scanSave()"

    .line 89
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$300(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    .line 91
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$500(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$400(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
