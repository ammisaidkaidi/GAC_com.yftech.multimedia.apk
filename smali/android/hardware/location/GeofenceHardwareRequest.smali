.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mSourceTechnologies:I

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 35
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    const/16 v0, 0x7530

    .line 36
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    const/4 v0, 0x7

    .line 37
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    const/16 v0, 0x1388

    .line 39
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 8

    .line 58
    new-instance v7, Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-direct {v7}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 59
    invoke-direct/range {v0 .. v6}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    return-object v7
.end method

.method private setCircularGeofence(DDD)V
    .locals 0

    .line 43
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    .line 44
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    .line 45
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .locals 0

    .line 177
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 135
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 142
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 0

    .line 156
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return p0
.end method

.method public getNotificationResponsiveness()I
    .locals 0

    .line 170
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return p0
.end method

.method public getRadius()D
    .locals 2

    .line 149
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method public getSourceTechnologies()I
    .locals 0

    .line 184
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return p0
.end method

.method getType()I
    .locals 0

    .line 188
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return p0
.end method

.method public getUnknownTimer()I
    .locals 0

    .line 163
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return p0
.end method

.method public setLastTransition(I)V
    .locals 0

    .line 71
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return-void
.end method

.method public setMonitorTransitions(I)V
    .locals 0

    .line 92
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .locals 0

    .line 106
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return-void
.end method

.method public setSourceTechnologies(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x1f

    if-eqz p1, :cond_0

    .line 128
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one valid source technology must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUnknownTimer(I)V
    .locals 0

    .line 82
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return-void
.end method
