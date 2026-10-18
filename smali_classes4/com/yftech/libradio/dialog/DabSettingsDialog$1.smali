.class Lcom/yftech/libradio/dialog/DabSettingsDialog$1;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableAnnounceChange(ZI)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnableAnnounceChange(ZI)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableAnnounceChange,isNoOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,annotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$300(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$1;Z)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEnableSerFollow(IZ)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnableSerFollow(IZ)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableSerFollow,type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$300(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
