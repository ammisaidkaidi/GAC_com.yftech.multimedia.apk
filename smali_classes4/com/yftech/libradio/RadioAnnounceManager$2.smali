.class Lcom/yftech/libradio/RadioAnnounceManager$2;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioAnnounceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioAnnounceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioAnnounceManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioAnnounceManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yftech/libradio/RadioAnnounceManager$2;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsCommonStatusChange(IZ)V
    .locals 1

    .line 106
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStatusChange(IZ)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.yftech.intent.action.rds.trafic.announce.play"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.yftech.multimedia"

    const-string v0, "com.yftech.libradio.receiver.AnnounceReceiver"

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isPlaying"

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager$2;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {p0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$000(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
