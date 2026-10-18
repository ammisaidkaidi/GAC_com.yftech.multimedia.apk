.class final Lcom/yftech/libradio/dabui/epg/EpgUtils$1;
.super Ljava/lang/Object;
.source "EpgUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgUtils;->sortProgramList(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I
    .locals 2

    .line 36
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->getTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;

    move-result-object p0

    .line 37
    invoke-static {p2}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->getTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p0, :cond_2

    return p2

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    check-cast p2, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgUtils$1;->compare(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I

    move-result p0

    return p0
.end method
