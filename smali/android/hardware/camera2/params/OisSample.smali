.class public final Landroid/hardware/camera2/params/OisSample;
.super Ljava/lang/Object;
.source "OisSample.java"


# instance fields
.field private final mTimestampNs:J

.field private final mXShift:F

.field private final mYShift:F


# direct methods
.method public constructor <init>(JFF)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    const-string/jumbo p1, "xShift must be finite"

    .line 55
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    const-string/jumbo p1, "yShift must be finite"

    .line 56
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 102
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/OisSample;

    if-eqz v2, :cond_3

    .line 103
    check-cast p1, Landroid/hardware/camera2/params/OisSample;

    .line 104
    iget-wide v2, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget v3, p1, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    iget p1, p1, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 68
    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    return-wide v0
.end method

.method public getXshift()F
    .locals 0

    .line 77
    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    return p0
.end method

.method public getYshift()F
    .locals 0

    .line 86
    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return p0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    .line 116
    new-array v1, v0, [F

    iget-wide v2, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    long-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    const/4 v2, 0x3

    .line 117
    new-array v2, v2, [F

    iget v4, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    aput v4, v2, v3

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    aput p0, v2, v0

    int-to-float p0, v1

    const/4 v0, 0x2

    aput p0, v2, v0

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "OisSample{timestamp:%d, shift_x:%f, shift_y:%f}"

    const/4 v1, 0x3

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    .line 131
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 130
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
