.class Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;
.super Landroid/os/AsyncTask;
.source "EpgAllProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAllProgrammeData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mTime:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->mTime:Ljava/util/Calendar;

    return-void
.end method

.method private getProgrammesByFileName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "fileName is request ---"

    .line 195
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object p0

    .line 198
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getNameEpgData(Ljava/lang/String;)Lcom/yftech/car/media/radio/dab/entity/EpgData;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EpgData;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 204
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/dab/entity/epg/Schedule;

    .line 206
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/epg/Schedule;->getProgrammes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 211
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    .line 212
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    const-string v0, "programmes is empty ---"

    .line 208
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object p0

    :cond_6
    :goto_3
    const-string p1, "scheduleList is empty ---"

    .line 201
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 p1, 0x0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->mTime:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string p0, "time parameter request---"

    .line 122
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object p1

    .line 126
    :cond_0
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDataDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 130
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    .line 131
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->isEpg()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 134
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set setFreq to epg, Frequency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,serviceId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v5

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    goto :goto_0

    :cond_3
    const-string v0, "there are none dab channels ----"

    .line 142
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/16 v0, 0x1e

    .line 146
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgDataNameList()Ljava/util/List;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    if-lez v0, :cond_7

    .line 148
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->access$100(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x7d0

    .line 152
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 153
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgDataNameList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_c

    .line 156
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 160
    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMdd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 161
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->mTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 165
    invoke-direct {p0, v3}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->getProgrammesByFileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 166
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 169
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->currentDate:Ljava/util/Calendar;

    invoke-static {p0, v2}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->sortProgramList(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1

    :cond_c
    :goto_4
    const-string p0, "epgNameList is empty---"

    .line 157
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "error ---"

    .line 177
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->onProgrameGot(Ljava/util/List;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->onProgrameGot(Ljava/util/List;)V

    .line 190
    :goto_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$UpdateAllProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->access$200(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)V

    return-void
.end method
