.class public Landroid/filterpacks/performance/ThroughputFilter;
.super Landroid/filterfw/core/Filter;
.source "ThroughputFilter.java"


# instance fields
.field private mLastTime:J

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPeriod:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "period"
    .end annotation
.end field

.field private mPeriodFrameCount:I

.field private mTotalFrameCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 33
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 39
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 66
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7

    const-string v0, "frame"

    .line 73
    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    const-string v1, "frame"

    .line 74
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 77
    iget v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 78
    iget v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 81
    iget-wide v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 87
    iget-wide v3, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    sub-long v3, v1, v3

    iget v5, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    mul-int/2addr v3, v0

    .line 90
    new-instance v0, Landroid/filterpacks/performance/Throughput;

    iget v4, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    iget v5, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    iget v6, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    invoke-direct {v0, v4, v5, v6, v3}, Landroid/filterpacks/performance/Throughput;-><init>(IIII)V

    .line 94
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget-object v3, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p1, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    const-string/jumbo v0, "throughput"

    .line 96
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 97
    iput-wide v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "frame"

    .line 50
    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->addInputPort(Ljava/lang/String;)V

    .line 53
    const-class v0, Landroid/filterpacks/performance/Throughput;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    const-string v0, "frame"

    const-string v1, "frame"

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "throughput"

    .line 55
    iget-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
