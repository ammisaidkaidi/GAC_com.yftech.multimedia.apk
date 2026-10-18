.class Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabAnnounceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabAnnounceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateEnableAnnounce(ZI)V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , annotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dismiss()V

    :cond_0
    return-void
.end method
