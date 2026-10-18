.class public final Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mInput:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const-string/jumbo p1, "width must be positive"

    .line 63
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const-string p1, "height must be positive"

    .line 64
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 65
    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 149
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_3

    .line 150
    check-cast p1, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 151
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean p1, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public final getFormat()I
    .locals 0

    .line 77
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 96
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 2

    .line 105
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 0

    .line 87
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 164
    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    const/4 v1, 0x3

    aput p0, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public isInput()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return p0
.end method

.method public isOutput()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
