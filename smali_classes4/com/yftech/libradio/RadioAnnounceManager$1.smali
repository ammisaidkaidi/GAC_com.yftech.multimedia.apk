.class Lcom/yftech/libradio/RadioAnnounceManager$1;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
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

    .line 45
    iput-object p1, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationTimeSchedule(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)V
    .locals 9

    .line 59
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onLocationTimeSchedule(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)V

    if-nez p1, :cond_0

    const-string p0, "programme is null"

    .line 61
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " programmeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,programmeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {v0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$100(Lcom/yftech/libradio/RadioAnnounceManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {v0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$100(Lcom/yftech/libradio/RadioAnnounceManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yftech/libradio/RadioAnnounceManager;->access$102(Lcom/yftech/libradio/RadioAnnounceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {v0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$200(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/RadioAnnounceManager$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioAnnounceManager$1$1;-><init>(Lcom/yftech/libradio/RadioAnnounceManager$1;)V

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    iget-object v0, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    .line 85
    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->getServiceId()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_4

    .line 86
    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->getServiceId()J

    move-result-wide v4

    .line 88
    :cond_4
    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->getEnsembleId()I

    move-result v7

    if-lez v7, :cond_3

    .line 89
    invoke-virtual {v6}, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->getEnsembleId()I

    move-result v1

    goto :goto_0

    :cond_5
    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.yftech.intent.action.dab.epg.play.event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.yftech.multimedia"

    const-string v3, "com.yftech.libradio.receiver.AnnounceReceiver"

    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "epg_programme_name"

    .line 95
    iget-object p1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "epg_service_id"

    .line 96
    invoke-virtual {v0, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "epg_ensemble_id"

    .line 97
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {p0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$000(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string p0, "locations is request"

    .line 79
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateEnableAnnounce(ZI)V
    .locals 3

    .line 48
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onUpdateEnableAnnounce(ZI)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateEnableAnnounce isNoOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,annotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.intent.action.dab.announce.play"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yftech.multimedia"

    const-string v2, "com.yftech.libradio.receiver.AnnounceReceiver"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isPlaying"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "annotype"

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-static {p0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$000(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
