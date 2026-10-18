.class public Landroid/filterpacks/performance/Throughput;
.super Ljava/lang/Object;
.source "Throughput.java"


# instance fields
.field private final mPeriodFrames:I

.field private final mPeriodTime:I

.field private final mPixels:I

.field private final mTotalFrames:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    .line 32
    iput p2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    .line 33
    iput p3, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    .line 34
    iput p4, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    return-void
.end method


# virtual methods
.method public getFramesPerSecond()F
    .locals 1

    .line 50
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-float v0, v0

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getNanosPerPixel()F
    .locals 4

    .line 54
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-double v0, v0

    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    .line 55
    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getPeriodFrameCount()I
    .locals 0

    .line 42
    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    return p0
.end method

.method public getPeriodTime()I
    .locals 0

    .line 46
    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    return p0
.end method

.method public getTotalFrameCount()I
    .locals 0

    .line 38
    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/filterpacks/performance/Throughput;->getFramesPerSecond()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " FPS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
