.class Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RdsAnnounceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RdsAnnounceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;->this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsCommonStatusChange(IZ)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStatusChange(IZ)V

    .line 95
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

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 97
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;->this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->dismiss()V

    :cond_0
    return-void
.end method
