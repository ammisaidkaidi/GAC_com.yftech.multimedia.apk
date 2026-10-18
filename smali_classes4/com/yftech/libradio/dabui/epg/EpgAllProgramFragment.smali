.class public Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;
.super Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.source "EpgAllProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;
    }
.end annotation


# instance fields
.field private isStopRequst:Z

.field private mCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->saveDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->isStopRequst:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->recoverDabPlay()V

    return-void
.end method

.method private recoverDabPlay()V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 71
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v4

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDabPlayInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "mDabPlayInfo is null ----"

    .line 75
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private saveDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 83
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 94
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 97
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save success , dabPlayInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "none dabChannelInfo is matched ----,dabPlayInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "dabChannelInfoList is empty ----"

    .line 90
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "dabPlayInfo is null ----"

    .line 104
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method getProgrammeList(Ljava/util/Calendar;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->saveDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->isStopRequst:Z

    .line 54
    new-instance v1, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;-><init>(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;Ljava/util/Calendar;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method getTipsForEmptyContent()Ljava/lang/String;
    .locals 1

    .line 59
    sget v0, Lcom/yftech/libradio/R$string;->dab_epg_none_of_list_tips:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->onStart()V

    .line 38
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->onStop()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->isStopRequst:Z

    .line 45
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->mCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 46
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->recoverDabPlay()V

    return-void
.end method
