.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

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

    .line 52
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x280

    .line 39
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 45
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 46
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void
.end method

.method private updateParameters()V
    .locals 11

    .line 125
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit8 v0, v0, 0x5a

    if-nez v0, :cond_3

    .line 126
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v0, v0, 0xb4

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 128
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_2

    move v1, v3

    goto :goto_1

    .line 131
    :cond_0
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 133
    :goto_0
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 134
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    move v10, v2

    move v2, v1

    move v1, v10

    .line 140
    :cond_2
    :goto_1
    new-instance v0, Landroid/filterfw/geometry/Point;

    neg-float v4, v1

    add-float v5, v4, v2

    add-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    neg-float v7, v2

    sub-float v8, v7, v1

    add-float/2addr v8, v3

    mul-float/2addr v8, v6

    invoke-direct {v0, v5, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 142
    new-instance v5, Landroid/filterfw/geometry/Point;

    add-float v8, v1, v2

    add-float/2addr v8, v3

    mul-float/2addr v8, v6

    sub-float v9, v2, v1

    add-float/2addr v9, v3

    mul-float/2addr v9, v6

    invoke-direct {v5, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 144
    new-instance v9, Landroid/filterfw/geometry/Point;

    sub-float/2addr v4, v2

    add-float/2addr v4, v3

    mul-float/2addr v4, v6

    add-float/2addr v7, v1

    add-float/2addr v7, v3

    mul-float/2addr v7, v6

    invoke-direct {v9, v4, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 146
    new-instance v4, Landroid/filterfw/geometry/Point;

    sub-float/2addr v1, v2

    add-float/2addr v1, v3

    mul-float/2addr v1, v6

    invoke-direct {v4, v1, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 148
    new-instance v1, Landroid/filterfw/geometry/Quad;

    invoke-direct {v1, v0, v5, v9, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 149
    iget-object p0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast p0, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {p0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    .line 137
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "degree has to be multiply of 90."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 79
    iget-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 64
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    .line 65
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 67
    iput-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 74
    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void

    .line 71
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

    .line 87
    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/RotateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 91
    iget-object v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    if-eq v2, v3, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    if-eq v2, v3, :cond_3

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 97
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 98
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 99
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 101
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 105
    :cond_3
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 112
    iget-object v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v1, v0, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v0, "image"

    .line 115
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/RotateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 118
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    .line 57
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
