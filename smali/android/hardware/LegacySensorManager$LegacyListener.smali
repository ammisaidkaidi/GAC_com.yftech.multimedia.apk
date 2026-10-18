.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 207
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 210
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 213
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x80

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8

    const/4 p0, 0x0

    .line 289
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 290
    aget v2, p2, v1

    const/4 v3, 0x2

    .line 291
    aget v4, p2, v3

    const/16 v5, 0x80

    const/16 v6, 0x8

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-float v0, v0

    neg-float v2, v2

    neg-float v4, v4

    goto :goto_0

    :cond_0
    :pswitch_1
    neg-float v4, v4

    goto :goto_0

    :cond_1
    neg-float v0, v0

    neg-float v2, v2

    .line 308
    :goto_0
    aput v0, p2, p0

    .line 309
    aput v2, p2, v1

    .line 310
    aput v4, p2, v3

    const/4 v7, 0x3

    .line 311
    aput v0, p2, v7

    const/4 v7, 0x4

    .line 312
    aput v2, p2, v7

    const/4 v7, 0x5

    .line 313
    aput v4, p2, v7

    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :cond_2
    :pswitch_2
    const/high16 v7, 0x43870000    # 270.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    const/16 v7, 0x5a

    goto :goto_1

    :cond_3
    const/16 v7, -0x10e

    :goto_1
    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 326
    aput v0, p2, p0

    .line 327
    aput v4, p2, v1

    .line 328
    aput v2, p2, v3

    goto :goto_2

    :cond_4
    :pswitch_3
    neg-float v2, v2

    .line 320
    aput v2, p2, p0

    .line 321
    aput v0, p2, v1

    .line 322
    aput v4, p2, v3

    :cond_5
    :goto_2
    and-int/2addr p3, v3

    if-eqz p3, :cond_9

    .line 333
    aget p3, p2, p0

    .line 334
    aget v0, p2, v1

    .line 335
    aget v2, p2, v3

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_6

    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :cond_6
    :pswitch_4
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float v4, p3, p1

    if-ltz v4, :cond_7

    sub-float/2addr p3, p1

    goto :goto_3

    :cond_7
    add-float/2addr p3, p1

    .line 346
    :goto_3
    aput p3, p2, p0

    neg-float p0, v0

    .line 347
    aput p0, p2, v1

    neg-float p0, v2

    .line 348
    aput p0, p2, v3

    goto :goto_4

    :cond_8
    :pswitch_5
    neg-float p1, p3

    .line 340
    aput p1, p2, p0

    neg-float p0, v0

    .line 341
    aput p0, p2, v1

    .line 342
    aput v2, p2, v3

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method hasSensors()Z
    .locals 0

    .line 241
    iget p0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 251
    :try_start_0
    iget-object p0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 259
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 260
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 261
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 262
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v0, v4

    .line 263
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 264
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v4

    .line 265
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 267
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 270
    :cond_0
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget p1, v0, v2

    invoke-virtual {v1, v4, v5, p1}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result p1

    aput p1, v0, v2

    .line 272
    iget-object p0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p0, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p0, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method registerSensor(I)Z
    .locals 3

    .line 218
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 221
    :cond_0
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 222
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_1

    .line 223
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method unregisterSensor(I)Z
    .locals 3

    .line 230
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 234
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
