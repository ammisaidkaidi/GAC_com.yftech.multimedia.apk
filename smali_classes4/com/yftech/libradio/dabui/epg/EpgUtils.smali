.class public Lcom/yftech/libradio/dabui/epg/EpgUtils;
.super Ljava/lang/Object;
.source "EpgUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActualTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 118
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    .line 123
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualTime:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    iget-object v1, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/TimeUtils;->fomatTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "programTime is null ---"

    .line 129
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 133
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p0

    :cond_4
    :goto_1
    const-string v1, "locatin time is empty ---"

    .line 124
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object v0

    .line 119
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locations is empty, programme name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string p0, ""

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 86
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    .line 91
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->time:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->time:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/TimeUtils;->fomatTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "programTime is null ---"

    .line 97
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 101
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p0

    :cond_4
    :goto_1
    const-string v1, "locatin time is empty ---"

    .line 92
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object v0

    .line 87
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locations is empty, programme name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string p0, ""

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isProgramPlaying(Ljava/util/Calendar;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 150
    :cond_0
    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    iget-object p1, p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    .line 155
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "location.actualTime is empty -----"

    .line 156
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualDuration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "location.actualDuration is empty -----"

    .line 160
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/epg/TimeUtils;->fomatTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "programTime is null -----"

    .line 166
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_5
    iget-object v1, v1, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->actualDuration:Ljava/lang/String;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/TimeUtils;->formatDuration(Ljava/lang/String;)Ljava/time/Duration;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "duration is null -----"

    .line 171
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    :goto_1
    const-string p0, "location is empty -----"

    .line 151
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return v0
.end method

.method public static sortProgramList(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 33
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgUtils$1;

    invoke-direct {v0}, Lcom/yftech/libradio/dabui/epg/EpgUtils$1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 53
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    .line 57
    invoke-static {p0, v3}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->isProgramPlaying(Ljava/util/Calendar;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v3}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->getActualTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :cond_5
    :goto_1
    return-object p1
.end method
