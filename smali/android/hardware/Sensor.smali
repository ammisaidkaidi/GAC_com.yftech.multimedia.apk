.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    .line 770
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 2

    .line 862
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 866
    :cond_0
    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    .line 867
    sget-object p1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length p1, p1

    if-lt p0, p1, :cond_1

    const/16 p0, 0x10

    return p0

    .line 874
    :cond_1
    sget-object p1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget p0, p1, p0

    return p0
.end method

.method private setType(I)Z
    .locals 2

    .line 1131
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 1132
    iget p1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const-string p1, "android.sensor.accelerometer_uncalibrated"

    .line 1218
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_1
    const-string p1, "android.sensor.low_latency_offbody_detect"

    .line 1215
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_2
    const-string p1, "android.sensor.pick_up_gesture"

    .line 1173
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_3
    const-string p1, "android.sensor.glance_gesture"

    .line 1146
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_4
    const-string p1, "android.sensor.wake_gesture"

    .line 1200
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_5
    const-string p1, "android.sensor.tilt_detector"

    .line 1197
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_6
    const-string p1, "android.sensor.heart_rate"

    .line 1158
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_7
    const-string p1, "android.sensor.geomagnetic_rotation_vector"

    .line 1143
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_8
    const-string p1, "android.sensor.step_counter"

    .line 1191
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_9
    const-string p1, "android.sensor.step_detector"

    .line 1194
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_a
    const-string p1, "android.sensor.significant_motion"

    .line 1188
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_b
    const-string p1, "android.sensor.gyroscope_uncalibrated"

    .line 1155
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_c
    const-string p1, "android.sensor.game_rotation_vector"

    .line 1140
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_d
    const-string p1, "android.sensor.magnetic_field_uncalibrated"

    .line 1170
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_e
    const-string p1, "android.sensor.ambient_temperature"

    .line 1137
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_f
    const-string p1, "android.sensor.relative_humidity"

    .line 1182
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_10
    const-string p1, "android.sensor.rotation_vector"

    .line 1185
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_11
    const-string p1, "android.sensor.linear_acceleration"

    .line 1164
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_12
    const-string p1, "android.sensor.gravity"

    .line 1149
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_13
    const-string p1, "android.sensor.proximity"

    .line 1179
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_14
    const-string p1, "android.sensor.temperature"

    .line 1206
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_15
    const-string p1, "android.sensor.pressure"

    .line 1176
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_16
    const-string p1, "android.sensor.light"

    .line 1161
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_17
    const-string p1, "android.sensor.gyroscope"

    .line 1152
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_18
    const-string p1, "android.sensor.orientation"

    .line 1203
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_19
    const-string p1, "android.sensor.magnetic_field"

    .line 1167
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_1a
    const-string p1, "android.sensor.accelerometer"

    .line 1134
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :cond_0
    const-string p1, "android.sensor.dynamic_sensor_meta"

    .line 1212
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :cond_1
    const-string p1, "android.sensor.device_orientation"

    .line 1209
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .locals 0

    long-to-int p1, p1

    .line 1237
    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 0

    .line 973
    iget p0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return p0
.end method

.method public getFifoReservedEventCount()I
    .locals 0

    .line 963
    iget p0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return p0
.end method

.method public getHandle()I
    .locals 0

    .line 1018
    iget p0, p0, Landroid/hardware/Sensor;->mHandle:I

    return p0
.end method

.method public getHighestDirectReportRateLevel()I
    .locals 1

    .line 835
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x380

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public getId()I
    .locals 0

    .line 1005
    iget p0, p0, Landroid/hardware/Sensor;->mId:I

    return p0
.end method

.method public getMaxDelay()I
    .locals 0

    .line 1031
    iget p0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return p0
.end method

.method public getMaximumRange()F
    .locals 0

    .line 932
    iget p0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return p0
.end method

.method public getMinDelay()I
    .locals 0

    .line 955
    iget p0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 904
    iget-object p0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPower()F
    .locals 0

    .line 946
    iget p0, p0, Landroid/hardware/Sensor;->mPower:F

    return p0
.end method

.method public getReportingMode()I
    .locals 0

    .line 820
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0xe

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 0

    .line 1013
    iget-object p0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getResolution()F
    .locals 0

    .line 939
    iget p0, p0, Landroid/hardware/Sensor;->mResolution:F

    return p0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 0

    .line 980
    iget-object p0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 918
    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    return p0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 996
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    .line 911
    iget-object p0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 925
    iget p0, p0, Landroid/hardware/Sensor;->mVersion:I

    return p0
.end method

.method public isAdditionalInfoSupported()Z
    .locals 0

    .line 1092
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDataInjectionSupported()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1106
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    shr-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 853
    :pswitch_0
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 851
    :pswitch_1
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDynamicSensor()Z
    .locals 0

    .line 1082
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWakeUpSensor()Z
    .locals 1

    .line 1072
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setRange(FF)V
    .locals 0

    .line 1110
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1111
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
