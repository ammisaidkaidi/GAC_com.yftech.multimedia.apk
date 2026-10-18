.class Landroid/net/wifi/RttManager$1;
.super Landroid/net/wifi/rtt/RangingResultCallback;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/RttManager;->startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;

.field final synthetic val$listener:Landroid/net/wifi/RttManager$RttListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/RttManager;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 0

    .line 974
    iput-object p1, p0, Landroid/net/wifi/RttManager$1;->this$0:Landroid/net/wifi/RttManager;

    iput-object p2, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    invoke-direct {p0}, Landroid/net/wifi/rtt/RangingResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangingFailure(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 981
    :goto_0
    iget-object p0, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onRangingResults(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .line 986
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/RttManager$RttResult;

    .line 988
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/RangingResult;

    .line 989
    new-instance v3, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v3}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v3, v0, v1

    .line 990
    aget-object v3, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getStatus()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 991
    aget-object v3, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 992
    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getStatus()I

    move-result v3

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_0

    .line 993
    aget-object v3, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getDistanceMm()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    iput v6, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 994
    aget-object v3, v0, v1

    .line 995
    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getDistanceStdDevMm()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    iput v6, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 996
    aget-object v3, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getRssi()I

    move-result v6

    mul-int/lit8 v6, v6, -0x2

    iput v6, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 997
    aget-object v3, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getRangingTimestampMillis()J

    move-result-wide v6

    mul-long/2addr v6, v4

    iput-wide v6, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 998
    aget-object v3, v0, v1

    .line 999
    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getNumAttemptedMeasurements()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 1000
    aget-object v3, v0, v1

    .line 1001
    invoke-virtual {v2}, Landroid/net/wifi/rtt/RangingResult;->getNumSuccessfulMeasurements()I

    move-result v2

    iput v2, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    goto :goto_1

    .line 1004
    :cond_0
    aget-object v2, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-long/2addr v6, v4

    iput-wide v6, v2, Landroid/net/wifi/RttManager$RttResult;->ts:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    invoke-interface {p0, v0}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    return-void
.end method
