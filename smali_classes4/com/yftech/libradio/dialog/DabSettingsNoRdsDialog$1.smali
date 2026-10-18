.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableAnnounceChange(ZI)V
    .locals 2

    .line 59
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnableAnnounceChange(ZI)V

    .line 60
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

    .line 61
    iget-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;Z)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
