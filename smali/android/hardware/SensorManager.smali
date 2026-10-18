.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final sTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 86
    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static getAltitude(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fc85b95c0000000L    # 0.19029495120048523

    .line 1533
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x472d2a00    # 44330.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1572
    array-length v2, v0

    const/16 v3, 0xa

    const/16 v4, 0x10

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ne v2, v11, :cond_0

    .line 1573
    aget v2, v0, v14

    .line 1574
    aget v16, v0, v13

    .line 1575
    aget v17, v0, v12

    .line 1576
    aget v18, v0, v6

    .line 1577
    aget v19, v0, v10

    .line 1578
    aget v20, v0, v9

    .line 1579
    aget v21, v0, v8

    .line 1580
    aget v22, v0, v5

    .line 1581
    aget v0, v0, v7

    goto :goto_0

    .line 1582
    :cond_0
    array-length v2, v0

    if-ne v2, v4, :cond_1

    .line 1583
    aget v2, v0, v14

    .line 1584
    aget v16, v0, v13

    .line 1585
    aget v17, v0, v12

    .line 1586
    aget v18, v0, v10

    .line 1587
    aget v19, v0, v9

    .line 1588
    aget v20, v0, v8

    .line 1589
    aget v21, v0, v7

    .line 1590
    aget v22, v0, v11

    .line 1591
    aget v0, v0, v3

    goto :goto_0

    :cond_1
    move v0, v15

    move v2, v0

    move/from16 v16, v2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    .line 1594
    :goto_0
    array-length v3, v1

    if-ne v3, v11, :cond_2

    .line 1595
    aget v15, v1, v14

    .line 1596
    aget v3, v1, v13

    .line 1597
    aget v4, v1, v12

    .line 1598
    aget v6, v1, v6

    .line 1599
    aget v10, v1, v10

    .line 1600
    aget v9, v1, v9

    .line 1601
    aget v8, v1, v8

    .line 1602
    aget v5, v1, v5

    .line 1603
    aget v1, v1, v7

    move v7, v8

    move v8, v9

    move v9, v5

    move v5, v6

    move v6, v10

    goto :goto_1

    .line 1604
    :cond_2
    array-length v3, v1

    if-ne v3, v4, :cond_3

    .line 1605
    aget v15, v1, v14

    .line 1606
    aget v3, v1, v13

    .line 1607
    aget v4, v1, v12

    .line 1608
    aget v5, v1, v10

    .line 1609
    aget v6, v1, v9

    .line 1610
    aget v8, v1, v8

    .line 1611
    aget v7, v1, v7

    .line 1612
    aget v9, v1, v11

    const/16 v10, 0xa

    .line 1613
    aget v1, v1, v10

    goto :goto_1

    :cond_3
    move v1, v15

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_1
    mul-float v15, v15, v16

    mul-float v5, v5, v19

    add-float/2addr v15, v5

    mul-float v7, v7, v22

    add-float v5, v15, v7

    mul-float v3, v3, v16

    mul-float v6, v6, v19

    add-float/2addr v3, v6

    mul-float v9, v9, v22

    add-float/2addr v3, v9

    mul-float/2addr v2, v4

    mul-float v18, v18, v8

    add-float v2, v2, v18

    mul-float v21, v21, v1

    add-float v2, v2, v21

    mul-float v16, v16, v4

    mul-float v19, v19, v8

    add-float v16, v16, v19

    mul-float v22, v22, v1

    add-float v6, v16, v22

    mul-float v4, v4, v17

    mul-float v8, v8, v20

    add-float/2addr v4, v8

    mul-float/2addr v1, v0

    add-float/2addr v4, v1

    float-to-double v0, v5

    float-to-double v7, v3

    .line 1625
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v14

    neg-float v0, v6

    float-to-double v0, v0

    .line 1626
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v13

    neg-float v0, v2

    float-to-double v0, v0

    float-to-double v2, v4

    .line 1627
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v12

    return-void
.end method

.method private static getDelay(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p0, 0x30d40

    goto :goto_0

    :pswitch_1
    const p0, 0x1046b

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x4e20

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4

    .line 1268
    array-length v0, p0

    const/4 v1, 0x5

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1269
    aget v0, p0, v1

    float-to-double v0, v0

    const/4 v2, 0x4

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const/4 v0, 0x6

    .line 1271
    aget v0, p0, v0

    float-to-double v2, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .line 1876
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1877
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_0

    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    .line 1878
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1882
    :cond_0
    iget-object p0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1883
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getOrientation([F[F)[F
    .locals 10

    .line 1489
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    .line 1490
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    const/4 v0, 0x7

    .line 1491
    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    const/4 v0, 0x6

    .line 1492
    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    goto :goto_0

    .line 1494
    :cond_0
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 1495
    aget v0, p0, v4

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    .line 1496
    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget p0, p0, v3

    float-to-double v3, p0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    :goto_0
    return-object p1
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 7

    .line 1714
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_0

    .line 1715
    aget v0, p1, v1

    aput v0, p0, v4

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1717
    aget v5, p1, v4

    aget v6, p1, v4

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v3

    aget v6, p1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aput v0, p0, v4

    .line 1718
    aget v0, p0, v4

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    aget v0, p0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    :cond_1
    aput v5, p0, v4

    .line 1720
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v3

    .line 1721
    aget v0, p1, v3

    aput v0, p0, v2

    .line 1722
    aget p1, p1, v2

    aput p1, p0, v1

    return-void
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x0

    .line 1183
    aget v5, p2, v4

    const/4 v6, 0x1

    .line 1184
    aget v7, p2, v6

    const/4 v8, 0x2

    .line 1185
    aget v2, p2, v8

    mul-float v9, v5, v5

    mul-float v10, v7, v7

    add-float/2addr v9, v10

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    const v10, 0x3f765d4b

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    return v4

    .line 1195
    :cond_0
    aget v10, p3, v4

    .line 1196
    aget v11, p3, v6

    .line 1197
    aget v3, p3, v8

    mul-float v12, v11, v2

    mul-float v13, v3, v7

    sub-float/2addr v12, v13

    mul-float v13, v3, v5

    mul-float v14, v10, v2

    sub-float/2addr v13, v14

    mul-float v14, v10, v7

    mul-float v15, v11, v5

    sub-float/2addr v14, v15

    mul-float v15, v12, v12

    mul-float v16, v13, v13

    add-float v15, v15, v16

    mul-float v16, v14, v14

    add-float v15, v15, v16

    move/from16 v17, v7

    float-to-double v6, v15

    .line 1201
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    return v4

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    mul-float/2addr v12, v6

    mul-float/2addr v13, v6

    mul-float/2addr v14, v6

    float-to-double v8, v9

    .line 1212
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float v8, v17, v6

    mul-float/2addr v2, v6

    mul-float v6, v8, v14

    mul-float v9, v2, v13

    sub-float/2addr v6, v9

    mul-float v9, v2, v12

    mul-float v15, v5, v14

    sub-float/2addr v9, v15

    mul-float v15, v5, v13

    mul-float v16, v8, v12

    sub-float v15, v15, v16

    const/16 v16, 0xb

    const/16 v17, 0xa

    const/16 v18, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v22, 0x4

    const/16 v23, 0x3

    const/16 v7, 0x9

    const/16 v24, 0x0

    if-eqz v0, :cond_3

    move/from16 v25, v3

    .line 1220
    array-length v3, v0

    if-ne v3, v7, :cond_2

    .line 1221
    aput v12, v0, v4

    const/4 v3, 0x1

    aput v13, v0, v3

    const/4 v3, 0x2

    aput v14, v0, v3

    .line 1222
    aput v6, v0, v23

    aput v9, v0, v22

    aput v15, v0, v21

    .line 1223
    aput v5, v0, v20

    aput v8, v0, v19

    aput v2, v0, v18

    goto :goto_0

    .line 1224
    :cond_2
    array-length v3, v0

    const/16 v7, 0x10

    if-ne v3, v7, :cond_4

    .line 1225
    aput v12, v0, v4

    const/4 v3, 0x1

    aput v13, v0, v3

    const/4 v3, 0x2

    aput v14, v0, v3

    aput v24, v0, v23

    .line 1226
    aput v6, v0, v22

    aput v9, v0, v21

    aput v15, v0, v20

    aput v24, v0, v19

    .line 1227
    aput v5, v0, v18

    const/16 v3, 0x9

    aput v8, v0, v3

    aput v2, v0, v17

    aput v24, v0, v16

    const/16 v3, 0xc

    .line 1228
    aput v24, v0, v3

    const/16 v3, 0xd

    aput v24, v0, v3

    const/16 v3, 0xe

    aput v24, v0, v3

    const/16 v3, 0xf

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v0, v3

    goto :goto_0

    :cond_3
    move/from16 v25, v3

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    mul-float v0, v10, v10

    mul-float v3, v11, v11

    add-float/2addr v0, v3

    mul-float v3, v25, v25

    add-float/2addr v0, v3

    float-to-double v12, v0

    .line 1235
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v7, v3, v0

    mul-float/2addr v6, v10

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    mul-float v3, v25, v15

    add-float/2addr v6, v3

    mul-float/2addr v6, v7

    mul-float/2addr v10, v5

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    mul-float v3, v25, v2

    add-float/2addr v10, v3

    mul-float/2addr v10, v7

    .line 1238
    array-length v0, v1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1239
    aput v0, v1, v4

    const/4 v0, 0x1

    aput v24, v1, v0

    const/4 v0, 0x2

    aput v24, v1, v0

    .line 1240
    aput v24, v1, v23

    aput v6, v1, v22

    aput v10, v1, v21

    .line 1241
    aput v24, v1, v20

    neg-float v0, v10

    aput v0, v1, v19

    aput v6, v1, v18

    goto :goto_1

    .line 1242
    :cond_5
    array-length v0, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1243
    aput v0, v1, v4

    const/4 v0, 0x1

    aput v24, v1, v0

    const/4 v0, 0x2

    aput v24, v1, v0

    .line 1244
    aput v24, v1, v22

    aput v6, v1, v21

    aput v10, v1, v20

    .line 1245
    aput v24, v1, v18

    neg-float v0, v10

    const/16 v2, 0x9

    aput v0, v1, v2

    aput v6, v1, v17

    const/16 v0, 0xc

    const/16 v2, 0xd

    const/16 v3, 0xe

    .line 1246
    aput v24, v1, v3

    aput v24, v1, v2

    aput v24, v1, v0

    aput v24, v1, v16

    aput v24, v1, v19

    aput v24, v1, v23

    const/16 v0, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1247
    aput v2, v1, v0

    :cond_6
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1653
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 1654
    aget v5, v1, v4

    const/4 v6, 0x2

    .line 1655
    aget v7, v1, v6

    .line 1657
    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-lt v8, v10, :cond_0

    .line 1658
    aget v1, v1, v9

    goto :goto_0

    :cond_0
    mul-float v1, v3, v3

    sub-float v1, v12, v1

    mul-float v8, v5, v5

    sub-float/2addr v1, v8

    mul-float v8, v7, v7

    sub-float/2addr v1, v8

    cmpl-float v8, v1, v11

    if-lez v8, :cond_1

    float-to-double v13, v1

    .line 1661
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v1, v13

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v13, v3, v8

    mul-float/2addr v3, v13

    mul-float v14, v5, v8

    mul-float v15, v14, v5

    mul-float/2addr v8, v7

    mul-float v16, v8, v7

    mul-float/2addr v5, v13

    mul-float/2addr v8, v1

    mul-float v17, v13, v7

    mul-float v18, v14, v1

    mul-float/2addr v14, v7

    mul-float/2addr v13, v1

    .line 1674
    array-length v1, v0

    const/16 v7, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v11, 0x9

    if-ne v1, v11, :cond_2

    sub-float v1, v12, v15

    sub-float v1, v1, v16

    .line 1675
    aput v1, v0, v2

    sub-float v1, v5, v8

    .line 1676
    aput v1, v0, v4

    add-float v1, v17, v18

    .line 1677
    aput v1, v0, v6

    add-float/2addr v5, v8

    .line 1679
    aput v5, v0, v9

    sub-float/2addr v12, v3

    sub-float v1, v12, v16

    .line 1680
    aput v1, v0, v10

    sub-float v1, v14, v13

    .line 1681
    aput v1, v0, v21

    sub-float v17, v17, v18

    .line 1683
    aput v17, v0, v20

    add-float/2addr v14, v13

    .line 1684
    aput v14, v0, v19

    sub-float/2addr v12, v15

    .line 1685
    aput v12, v0, v7

    goto :goto_1

    .line 1686
    :cond_2
    array-length v1, v0

    const/16 v11, 0x10

    if-ne v1, v11, :cond_3

    sub-float v1, v12, v15

    sub-float v1, v1, v16

    .line 1687
    aput v1, v0, v2

    sub-float v1, v5, v8

    .line 1688
    aput v1, v0, v4

    add-float v1, v17, v18

    .line 1689
    aput v1, v0, v6

    const/4 v1, 0x0

    .line 1690
    aput v1, v0, v9

    add-float/2addr v5, v8

    .line 1692
    aput v5, v0, v10

    sub-float v2, v12, v3

    sub-float v3, v2, v16

    .line 1693
    aput v3, v0, v21

    sub-float v3, v14, v13

    .line 1694
    aput v3, v0, v20

    .line 1695
    aput v1, v0, v19

    sub-float v17, v17, v18

    .line 1697
    aput v17, v0, v7

    add-float/2addr v14, v13

    const/16 v3, 0x9

    .line 1698
    aput v14, v0, v3

    const/16 v3, 0xa

    sub-float/2addr v2, v15

    .line 1699
    aput v2, v0, v3

    const/16 v2, 0xb

    .line 1700
    aput v1, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xe

    .line 1702
    aput v1, v0, v4

    aput v1, v0, v3

    aput v1, v0, v2

    const/16 v1, 0xf

    .line 1703
    aput v12, v0, v1

    :cond_3
    :goto_1
    return-void
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 2

    if-ne p0, p3, :cond_2

    .line 1352
    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    .line 1353
    monitor-enter v0

    .line 1355
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1356
    array-length p0, p3

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 1358
    aget p2, v0, p1

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1362
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1364
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result p0

    return p0
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1379
    array-length v4, v3

    .line 1380
    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_0

    return v6

    :cond_0
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_13

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1

    goto/16 :goto_a

    :cond_1
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_12

    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_2

    goto/16 :goto_9

    :cond_2
    if-ne v5, v7, :cond_3

    return v6

    :cond_3
    xor-int v8, v1, v2

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    sub-int/2addr v7, v9

    and-int/lit8 v10, v8, 0x3

    sub-int/2addr v10, v9

    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    .line 1404
    rem-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x2

    .line 1405
    rem-int/2addr v13, v12

    xor-int/2addr v11, v5

    xor-int/2addr v13, v7

    or-int/2addr v11, v13

    if-eqz v11, :cond_4

    xor-int/lit16 v8, v8, 0x80

    :cond_4
    const/16 v11, 0x80

    if-lt v1, v11, :cond_5

    move v1, v9

    goto :goto_0

    :cond_5
    move v1, v6

    :goto_0
    if-lt v2, v11, :cond_6

    move v2, v9

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    if-lt v8, v11, :cond_7

    move v8, v9

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    const/16 v11, 0x10

    if-ne v4, v11, :cond_8

    const/4 v13, 0x4

    goto :goto_3

    :cond_8
    move v13, v12

    :goto_3
    move v14, v6

    :goto_4
    if-ge v14, v12, :cond_10

    mul-int v15, v14, v13

    :goto_5
    if-ge v6, v12, :cond_f

    if-ne v5, v6, :cond_a

    add-int v16, v15, v6

    if-eqz v1, :cond_9

    add-int/lit8 v17, v15, 0x0

    .line 1419
    aget v9, v0, v17

    neg-float v9, v9

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v15, 0x0

    aget v9, v0, v9

    :goto_6
    aput v9, v3, v16

    :cond_a
    if-ne v7, v6, :cond_c

    add-int v9, v15, v6

    if-eqz v2, :cond_b

    add-int/lit8 v16, v15, 0x1

    .line 1420
    aget v12, v0, v16

    neg-float v12, v12

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v15, 0x1

    aget v12, v0, v12

    :goto_7
    aput v12, v3, v9

    :cond_c
    if-ne v10, v6, :cond_e

    add-int v9, v15, v6

    if-eqz v8, :cond_d

    add-int/lit8 v12, v15, 0x2

    .line 1421
    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v15, 0x2

    aget v12, v0, v12

    :goto_8
    aput v12, v3, v9

    :cond_e
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto :goto_5

    :cond_f
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto :goto_4

    :cond_10
    if-ne v4, v11, :cond_11

    const/4 v0, 0x7

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 1425
    aput v6, v3, v5

    aput v6, v3, v4

    aput v6, v3, v2

    aput v6, v3, v1

    aput v6, v3, v0

    const/4 v0, 0x3

    aput v6, v3, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1426
    aput v1, v3, v0

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_12
    :goto_9
    move v0, v6

    return v0

    :cond_13
    :goto_a
    move v0, v6

    return v0
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1777
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result p0

    return p0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public configureDirectChannel(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result p0

    return p0
.end method

.method protected abstract configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p0

    return-object p0
.end method

.method public createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p0

    return-object p0
.end method

.method protected abstract createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    .line 940
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    return-void
.end method

.method protected abstract destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    .line 881
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 2

    .line 490
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 503
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 504
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-ne v1, p1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 1

    .line 536
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 537
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    .line 538
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDynamicSensorList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 461
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 465
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 466
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 420
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 428
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 429
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 433
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 434
    iget-object p0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 436
    :cond_3
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSensors()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result p0

    return p0
.end method

.method public initDataInjection(Z)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1810
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result p0

    return p0
.end method

.method protected abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_5

    .line 1848
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    const/16 v0, 0x17

    .line 1854
    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 1855
    array-length v1, p2

    if-ne v1, v0, :cond_2

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1

    const/4 v0, 0x3

    if-gt p3, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 1866
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result p0

    return p0

    .line 1864
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative or zero sensor timestamp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1861
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid sensor accuracy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1856
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Wrong number of values for sensor "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1852
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sensor data cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1849
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sensor does not support data injection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1846
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sensor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public isDynamicSensorDiscoverySupported()Z
    .locals 1

    const/16 v0, 0x20

    .line 1034
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 1035
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 991
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1010
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 728
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7

    .line 785
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 786
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7

    .line 851
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    .line 852
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7

    .line 820
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 821
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 563
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p0

    return p0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 0

    .line 1745
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 0

    .line 1910
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p0

    return p0
.end method

.method protected abstract setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    .line 1024
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method protected abstract unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    .line 606
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
