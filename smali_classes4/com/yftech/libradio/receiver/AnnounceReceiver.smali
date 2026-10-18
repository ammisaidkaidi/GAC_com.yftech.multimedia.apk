.class public Lcom/yftech/libradio/receiver/AnnounceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnnounceReceiver.java"


# static fields
.field public static final ACTION_DAB_ANNOUNCE:Ljava/lang/String; = "com.yftech.intent.action.dab.announce.play"

.field public static final ACTION_EPG_EVENT:Ljava/lang/String; = "com.yftech.intent.action.dab.epg.play.event"

.field public static final ACTION_RDS_ANNOUNCE:Ljava/lang/String; = "com.yftech.intent.action.rds.trafic.announce.play"


# instance fields
.field private dabAnnounceDialog:Lcom/yftech/libradio/dialog/DabAnnounceDialog;

.field private epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

.field private rdsAnnounceDialog:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processEpgEvent(Ljava/lang/String;JI)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    .line 70
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabEnsemble()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 71
    array-length v5, v4

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 75
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,ensembleId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    if-eqz v8, :cond_6

    .line 77
    invoke-virtual {v8}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getEnsembleId()I

    move-result v9

    if-ne v9, v3, :cond_6

    .line 78
    invoke-virtual {v8}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getList()[Lcom/yftech/car/media/radio/dab/entity/DabProperties;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 79
    array-length v10, v9

    if-nez v10, :cond_1

    goto :goto_2

    .line 82
    :cond_1
    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    if-nez v12, :cond_2

    .line 83
    invoke-virtual {v12}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getServiceId()J

    move-result-wide v13

    cmp-long v13, v13, v1

    if-nez v13, :cond_5

    .line 84
    :cond_2
    iget-object v13, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-virtual {v13}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_3

    return-void

    .line 87
    :cond_3
    iget-object v13, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    if-nez v13, :cond_4

    .line 88
    new-instance v13, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-static {}, Lcom/media/common/util/BaseApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    .line 90
    :cond_4
    iget-object v15, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-virtual {v8}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getFrequency()J

    move-result-wide v17

    invoke-virtual {v8}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getEnsembleId()I

    move-result v19

    invoke-virtual {v12}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getServiceId()J

    move-result-wide v20

    move-object/from16 v16, p1

    invoke-virtual/range {v15 .. v21}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->setParams(Ljava/lang/String;JIJ)V

    .line 91
    iget-object v12, v0, Lcom/yftech/libradio/receiver/AnnounceReceiver;->epgReminderDialog:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-virtual {v12}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->show()V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string v0, "dabEnsembles has none data"

    .line 72
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "com.yftech.intent.action.dab.epg.play.event"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 38
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "epg_programme_name"

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "epg_service_id"

    const-wide/16 v3, 0x0

    .line 42
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "epg_ensemble_id"

    .line 43
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 44
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/yftech/libradio/receiver/AnnounceReceiver;->processEpgEvent(Ljava/lang/String;JI)V

    :cond_2
    const-string p0, "com.yftech.intent.action.dab.announce.play"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 47
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string p0, "isPlaying"

    .line 50
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string p1, "annotype"

    .line 51
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play announcement\uff0cisPlaying: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play announcement\uff0cannotype: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/yftech/libradio/DabAnnounceManager;->getInstance()Lcom/yftech/libradio/DabAnnounceManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/yftech/libradio/DabAnnounceManager;->setAnnouncePlaying(Z)V

    .line 55
    invoke-static {}, Lcom/yftech/libradio/DabAnnounceManager;->getInstance()Lcom/yftech/libradio/DabAnnounceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/DabAnnounceManager;->setAnnotype(I)V

    :cond_4
    return-void
.end method
