.class Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;
.super Landroid/os/AsyncTask;
.source "EpgSubsCribedProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSubsCribedProgrammeData"
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

.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->mTime:Ljava/util/Calendar;

    return-void
.end method

.method private filterEpgData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 84
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 88
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    .line 89
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    .line 95
    iget-object v3, v3, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->time:Ljava/lang/String;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/epg/TimeUtils;->fomatTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "programTime is null ---"

    .line 97
    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->mTime:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v3, :cond_3

    const/4 v3, 0x2

    .line 103
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->mTime:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v3, :cond_3

    const/4 v3, 0x5

    .line 104
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->mTime:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    const-string v1, "locations is empty !!!!"

    .line 91
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_3
    const-string p0, "programmeList is empty !!!!"

    .line 85
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p1, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->mTime:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string p0, "time parameter request---"

    .line 49
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object p1

    .line 52
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgProgrammeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->filterEpgData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 59
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;->currentDate:Ljava/util/Calendar;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->sortProgramList(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "subsCribed programmeList is empty---"

    .line 54
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "error ---"

    .line 63
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;->onProgrameGot(Ljava/util/List;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->this$0:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;->onProgrameGot(Ljava/util/List;)V

    :goto_0
    return-void
.end method
