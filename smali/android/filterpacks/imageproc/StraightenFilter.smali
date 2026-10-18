.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 39
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/16 p1, 0x280

    .line 42
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 48
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 49
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void
.end method

.method private updateParameters()V
    .locals 9

    .line 116
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 117
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 119
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    .line 121
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    :goto_0
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 123
    new-instance v2, Landroid/filterfw/geometry/Point;

    neg-float v3, v0

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    neg-float v5, v1

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    invoke-direct {v2, v4, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 126
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    invoke-direct {v4, v6, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 129
    new-instance v6, Landroid/filterfw/geometry/Point;

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v3, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    invoke-direct {v6, v3, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 132
    new-instance v3, Landroid/filterfw/geometry/Point;

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v5, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v1, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v0, v7

    add-float/2addr v1, v0

    invoke-direct {v3, v5, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 135
    iget v0, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v4, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 136
    iget v1, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, v4, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 138
    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 141
    iget v5, v2, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v5, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget v7, v2, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v2, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 142
    iget v5, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v5, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget v7, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v4, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 143
    iget v5, v6, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v5, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget v7, v6, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v6, v5, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 144
    iget v5, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v5, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget v7, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v0, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    add-float/2addr v0, v1

    invoke-virtual {v3, v5, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 146
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0, v2, v4, v6, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 147
    iget-object p0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast p0, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {p0, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Max angle is out of range (0-180)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 80
    iget-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 66
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    .line 67
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 68
    iput-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 75
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Filter Sharpen does not support frames of target "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    const-string v0, "image"

    .line 88
    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 92
    iget-object v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v2, v3, :cond_1

    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v2, v3, :cond_3

    .line 98
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 99
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 100
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 106
    iget-object v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v1, v0, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v0, "image"

    .line 109
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    .line 59
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
