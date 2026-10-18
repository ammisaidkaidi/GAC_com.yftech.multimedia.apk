.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .locals 0

    .line 39
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    .line 40
    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result p1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    return-void
.end method

.method public setBytesPerSample(I)V
    .locals 0

    .line 48
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensionCount(I)V
    .locals 0

    .line 82
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    return-void
.end method

.method public setDimensions(I)V
    .locals 2

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 60
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 68
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(III)V
    .locals 2

    const/4 v0, 0x3

    .line 73
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 77
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions([I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 93
    :cond_0
    iget-object p0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0

    .line 86
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    return-void
.end method

.method public setTarget(I)V
    .locals 0

    .line 44
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    return-void
.end method
