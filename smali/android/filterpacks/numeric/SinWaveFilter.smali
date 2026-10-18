.class public Landroid/filterpacks/numeric/SinWaveFilter;
.super Landroid/filterfw/core/Filter;
.source "SinWaveFilter.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mStepSize:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "stepSize"
    .end annotation
.end field

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const p1, 0x3d4ccccd    # 0.05f

    .line 34
    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    return-void
.end method


# virtual methods
.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 59
    iget v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    const-string/jumbo v0, "value"

    .line 60
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/numeric/SinWaveFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 61
    iget v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 62
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 47
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    const-string/jumbo v0, "value"

    .line 48
    iget-object v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/numeric/SinWaveFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
