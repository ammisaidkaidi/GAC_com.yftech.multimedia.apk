.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RdsSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsCommonStatusChange(IZ)V
    .locals 2

    .line 84
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStatusChange(IZ)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$200(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;IZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
