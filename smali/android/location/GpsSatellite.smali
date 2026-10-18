.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "GpsSatellite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 0

    .line 95
    iget p0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return p0
.end method

.method public getElevation()F
    .locals 0

    .line 85
    iget p0, p0, Landroid/location/GpsSatellite;->mElevation:F

    return p0
.end method

.method public getPrn()I
    .locals 0

    .line 66
    iget p0, p0, Landroid/location/GpsSatellite;->mPrn:I

    return p0
.end method

.method public getSnr()F
    .locals 0

    .line 75
    iget p0, p0, Landroid/location/GpsSatellite;->mSnr:F

    return p0
.end method

.method public hasAlmanac()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    return p0
.end method

.method public hasEphemeris()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    return p0
.end method

.method setStatus(Landroid/location/GpsSatellite;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Landroid/location/GpsSatellite;->mValid:Z

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    .line 51
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 52
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 53
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 54
    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    .line 55
    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    .line 56
    iget p1, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    iput p1, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    :goto_0
    return-void
.end method

.method public usedInFix()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    return p0
.end method
