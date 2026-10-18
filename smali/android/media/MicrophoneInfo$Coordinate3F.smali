.class public final Landroid/media/MicrophoneInfo$Coordinate3F;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate3F"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    .line 382
    iput p2, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    .line 383
    iput p3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 396
    :cond_0
    instance-of v1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 399
    :cond_1
    check-cast p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 400
    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iget v3, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iget v3, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    iget p0, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    iget p1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, p0, v5

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
