.class Lcom/yftech/libradio/dialog/DabSearchingDialog$3;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
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

    .line 295
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnsembleListChange(I)V
    .locals 2

    .line 309
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnsembleListChange type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$802(Lcom/yftech/libradio/dialog/DabSearchingDialog;Z)Z

    .line 312
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {p0, p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$902(Lcom/yftech/libradio/dialog/DabSearchingDialog;I)I

    return-void
.end method

.method public onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V
    .locals 4

    .line 298
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$702(Lcom/yftech/libradio/dialog/DabSearchingDialog;I)I

    .line 301
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$500(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7617

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$500(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanStatusChange newDabScan: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",oldDabScan: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
