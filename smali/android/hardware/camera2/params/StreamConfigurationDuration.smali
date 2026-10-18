.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final mDurationNs:J

.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const-string/jumbo p1, "width must be positive"

    .line 58
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const-string p1, "height must be positive"

    .line 59
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const-string p1, "durationNs must be non-negative"

    .line 60
    invoke-static {p4, p5, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

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

    .line 128
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    if-eqz v2, :cond_3

    .line 129
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 130
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    iget-wide p0, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 109
    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 91
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 2

    .line 100
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 0

    .line 82
    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 143
    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    long-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    const/16 p0, 0x20

    ushr-long/2addr v1, p0

    long-to-int p0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method
