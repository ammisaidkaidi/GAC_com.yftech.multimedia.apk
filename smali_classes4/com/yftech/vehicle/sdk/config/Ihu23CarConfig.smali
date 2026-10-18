.class public Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;
.super Ljava/lang/Object;
.source "Ihu23CarConfig.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConfig"

.field private static sMe:Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;


# instance fields
.field private mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

.field private mData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig$1;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig$1;-><init>(Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;)V

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    return-void
.end method

.method private configData()[B
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x270b

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/internal/BaseApiManager;->getSignalDataValue(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    const-string v0, "CarConfig"

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configData() mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "[]"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_2
    iget-object p0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mData:[B

    return-object p0
.end method

.method private configValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I
    .locals 2

    .line 1073
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->configData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1074
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->byteIndex:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->byteIndex:B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1077
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->byteIndex:B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    .line 1078
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->bitSize:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 1079
    iget-byte v1, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->startBit:B

    shl-int/2addr v0, v1

    and-int/2addr p0, v0

    .line 1080
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->startBit:B

    shr-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static declared-synchronized get()Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAirConditionType()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditionType;
    .locals 1

    .line 439
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AIR_CONDITION_TYPE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditionType;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditionType;

    move-result-object v0

    return-object v0
.end method

.method public static getAirConditioningZones()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditioningZones;
    .locals 1

    .line 423
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AIR_CONDITIONING_ZONES:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditioningZones;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$AirConditioningZones;

    move-result-object v0

    return-object v0
.end method

.method public static getApaAlarmDelayedTime()I
    .locals 1

    .line 941
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->APA_ALARM_DELAYED_TIME:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getCameraNumber()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$CameraNumber;
    .locals 1

    .line 447
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CAMERA_NUMBER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$CameraNumber;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$CameraNumber;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigData()[B
    .locals 1

    .line 1090
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    move-result-object v0

    invoke-direct {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->configData()[B

    move-result-object v0

    return-object v0
.end method

.method private static getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I
    .locals 1

    .line 1086
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->configValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result p0

    return p0
.end method

.method public static getDistractedAlarmIntervalTime()I
    .locals 1

    .line 927
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DISTRACTED_ALARM_INTERVAL_TIME:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getDriveType()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$DriveType;
    .locals 1

    .line 47
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DRIVE_TYPE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$DriveType;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$DriveType;

    move-result-object v0

    return-object v0
.end method

.method public static getLaneChangeAssist()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LaneChangeAssist;
    .locals 1

    .line 808
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LANE_CHANGE_ASSIST:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LaneChangeAssist;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LaneChangeAssist;

    move-result-object v0

    return-object v0
.end method

.method public static getLeftRightHandDriveVehicles()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 970
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    move-result-object v0

    return-object v0
.end method

.method public static getLoudspeakerNumber()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerNumber;
    .locals 1

    .line 239
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LOUDSPEAKER_NUMBER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerNumber;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerNumber;

    move-result-object v0

    return-object v0
.end method

.method public static getLoudspeakerSupplier()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 247
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LOUDSPEAKER_SUPPLIER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static getRadarNumber()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RadarNumber;
    .locals 1

    .line 455
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RADAR_NUMBER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RadarNumber;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RadarNumber;

    move-result-object v0

    return-object v0
.end method

.method public static getRearDefrostAndRearviewMirrorHeating()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;
    .locals 1

    .line 431
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    move-result-object v0

    return-object v0
.end method

.method public static getStandardAndHdCameraConfiguration()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$StandardAndHdCameraConfiguration;
    .locals 1

    .line 463
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->STANDARD_AND_HD_CAMERA_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$StandardAndHdCameraConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$StandardAndHdCameraConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getTboxConnectionMode()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;
    .locals 1

    .line 203
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->TBOX_CONNECTION_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    move-result-object v0

    return-object v0
.end method

.method public static getTiredAlarmIntervalTime()I
    .locals 1

    .line 934
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->TIRED_ALARM_INTERVAL_TIME:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getVehiclePlatform()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;
    .locals 1

    .line 55
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->VEHICLE_PLATFORM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    move-result-object v0

    return-object v0
.end method

.method public static getVehicleType()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->VEHICLE_TYPE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    move-result-object v0

    return-object v0
.end method

.method public static getWalAndApu()Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;
    .locals 1

    .line 534
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    move-result-object v0

    return-object v0
.end method

.method public static isACanPresent()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->A_CAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAdaptiveHighBeamPresent()Z
    .locals 1

    .line 470
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ADAPTIVE_HIGH_BEAM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAirConditioningBlindExercisePresent()Z
    .locals 1

    .line 998
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AIR_CONDITIONING_BLIND_EXERCISE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAirConditioningQuickStartPresent()Z
    .locals 1

    .line 1005
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AIR_CONDITIONING_QUICK_START:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAlertModePresent()Z
    .locals 1

    .line 836
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ALERT_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAmbienceLightsControlPresent()Z
    .locals 1

    .line 625
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AMBIENCE_LIGHTS_CONTROL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAntennaPresent()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ANTENNA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isApaVoicePromptButtonPresent()Z
    .locals 1

    .line 885
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->APA_VOICE_PROMPT_BUTTON:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoDeforstPresent()Z
    .locals 1

    .line 394
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTO_DEFORST:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoEmergencyBrakingBrakingPresent()Z
    .locals 1

    .line 744
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTO_EMERGENCY_BRAKING_BRAKING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoModeOfFrsAndRecControlPresent()Z
    .locals 1

    .line 373
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTO_MODE_OF_FRS_AND_REC_CONTROL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoUnlockingPresent()Z
    .locals 1

    .line 555
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTO_UNLOCKING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoWiperPresent()Z
    .locals 1

    .line 604
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTO_WIPER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoholdPresent()Z
    .locals 1

    .line 1061
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AUTOHOLD:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvasPresent()Z
    .locals 1

    .line 261
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AVAS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvasSwitchPresent()Z
    .locals 1

    .line 268
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->AVAS_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBCallSwitchPresent()Z
    .locals 1

    .line 210
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->B_CALL_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBCanPresent()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->B_CAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBcmPresent()Z
    .locals 1

    .line 97
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->BCM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBsdPresent()Z
    .locals 1

    .line 765
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->BSD:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCallBackPresent()Z
    .locals 1

    .line 224
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CALL_BACK:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChargingInsulationPresent()Z
    .locals 1

    .line 296
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CHARGING_INSULATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChargingModePresent()Z
    .locals 1

    .line 723
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CHARGING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChargingThresholdPresent()Z
    .locals 1

    .line 408
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CHARGING_THRESHOLD:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCloseWindowWhileLockPresent()Z
    .locals 1

    .line 484
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLOSE_WINDOW_WHILE_LOCK:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterBackLightPresent()Z
    .locals 1

    .line 709
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_BACK_LIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterDefaultSettingPresent()Z
    .locals 1

    .line 695
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_DEFAULT_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterFuelConsumptionUnitPresent()Z
    .locals 1

    .line 702
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_FUEL_CONSUMPTION_UNIT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterLanguageSettingPresent()Z
    .locals 1

    .line 653
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_LANGUAGE_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterMileageResetPresent()Z
    .locals 1

    .line 660
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_MILEAGE_RESET:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterPressureUnitPresent()Z
    .locals 1

    .line 681
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_PRESSURE_UNIT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterSpeedUnitPresent()Z
    .locals 1

    .line 667
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_SPEED_UNIT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterTemperatureUnitPresent()Z
    .locals 1

    .line 674
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_TEMPERATURE_UNIT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterVolumeSettingPresent()Z
    .locals 1

    .line 646
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CLUSTER_VOLUME_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isComfortCurvePresent()Z
    .locals 1

    .line 380
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->COMFORT_CURVE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isControlHighBeamAssistantPresent()Z
    .locals 1

    .line 477
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CONTROL_HIGH_BEAM_ASSISTANT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isControlSmartWelcomeLightPresent()Z
    .locals 1

    .line 498
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CONTROL_SMART_WELCOME_LIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCreepModePresent()Z
    .locals 1

    .line 338
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->CREEP_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDomeLightInDoorGearPositionPresent()Z
    .locals 1

    .line 491
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DOME_LIGHT_IN_DOOR_GEAR_POSITION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDoorOpenWarningPresent()Z
    .locals 1

    .line 772
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DOOR_OPEN_WARNING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverAssistanceWarningPresent()Z
    .locals 1

    .line 920
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DRIVER_ASSISTANCE_WARNING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverStateOfAlertPresent()Z
    .locals 1

    .line 815
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DRIVER_STATE_OF_ALERT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDrivingModePresent()Z
    .locals 1

    .line 366
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->DRIVING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isECallSwitchPresent()Z
    .locals 1

    .line 217
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->E_CALL_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEboosterModePresent()Z
    .locals 1

    .line 962
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EBOOSTER_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEcoPlusModePresent()Z
    .locals 1

    .line 324
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isElectroDischargePresent()Z
    .locals 1

    .line 317
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ELECTRO_DISCHARGE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmergencyLaneKeepingAssistPresent()Z
    .locals 1

    .line 843
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EMERGENCY_LANE_KEEPING_ASSIST:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmergencySteeringModePresent()Z
    .locals 1

    .line 822
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EMERGENCY_STEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyConsumptionPresent()Z
    .locals 1

    .line 345
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ENERGY_CONSUMPTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyRecoveryModePresent()Z
    .locals 1

    .line 310
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ENERGY_RECOVERY_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEpedalModePresent()Z
    .locals 1

    .line 331
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EPEDAL_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEspOffSwitchPresent()Z
    .locals 1

    .line 948
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ESP_OFF_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEtcSettingPresent()Z
    .locals 1

    .line 590
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ETC_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEvaporatorSelfDryingPresent()Z
    .locals 1

    .line 991
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EVAPORATOR_SELF_DRYING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExtAmplifiersPresent()Z
    .locals 1

    .line 254
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EXT_AMPLIFIERS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent()Z
    .locals 1

    .line 562
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExteriorRearviewMirrorDipPresent()Z
    .locals 1

    .line 569
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->EXTERIOR_REARVIEW_MIRROR_DIP:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFanSpeedOfAutoModePresent()Z
    .locals 1

    .line 401
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FAN_SPEED_OF_AUTO_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFcpPresent()Z
    .locals 1

    .line 132
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FCP:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFlSpeakerPresent()Z
    .locals 1

    .line 167
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FL_SPEAKER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isForwardCollisionWarningDistancePresent()Z
    .locals 1

    .line 892
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FORWARD_COLLISION_WARNING_DISTANCE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrSpeakerPresent()Z
    .locals 1

    .line 174
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FR_SPEAKER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCollisionWarningPresent()Z
    .locals 1

    .line 751
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FRONT_COLLISION_WARNING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCrossTrafficAlertModePresent()Z
    .locals 1

    .line 878
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FRONT_CROSS_TRAFFIC_ALERT_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCrossTrafficAlertPresent()Z
    .locals 1

    .line 871
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FRONT_CROSS_TRAFFIC_ALERT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontDistanceDisplayPresent()Z
    .locals 1

    .line 1047
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->FRONT_DISTANCE_DISPLAY:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGpsPresent()Z
    .locals 1

    .line 76
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->GPS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGwmPresent()Z
    .locals 1

    .line 125
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->GWM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHdcSwitchPresent()Z
    .locals 1

    .line 955
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HDC_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHealthChargeSettingPresent()Z
    .locals 1

    .line 359
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HEALTH_CHARGE_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHeatPumpAirConditioningPresent()Z
    .locals 1

    .line 415
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HEAT_PUMP_AIR_CONDITIONING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHiddenDoorHandlePresent()Z
    .locals 1

    .line 282
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HIDDEN_DOOR_HANDLE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHospitalityLampSignalsPresent()Z
    .locals 1

    .line 1012
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HOSPITALITY_LAMP_SIGNALS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHvacPresent()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->HVAC:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIalPresent()Z
    .locals 1

    .line 632
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->IAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIbcmPresent()Z
    .locals 1

    .line 160
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->IBCM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIcmPresent()Z
    .locals 1

    .line 111
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ICM:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIfcCruisemodePresent()Z
    .locals 1

    .line 758
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->IFC_CRUISEMODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIndicatedLaneChangePresent()Z
    .locals 1

    .line 899
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->INDICATED_LANE_CHANGE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIndicatedLaneChangingPresent()Z
    .locals 1

    .line 1040
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->INDICATED_LANE_CHANGING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentCollisionAvoidancePresent()Z
    .locals 1

    .line 1054
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->INTELLIGENT_COLLISION_AVOIDANCE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentInsulationNotificationPresent()Z
    .locals 1

    .line 303
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->INTELLIGENT_INSULATION_NOTIFICATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentSpeedLimitControlPresent()Z
    .locals 1

    .line 913
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->INTELLIGENT_SPEED_LIMIT_CONTROL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isKeyIdentificationPresent()Z
    .locals 1

    .line 505
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->KEY_IDENTIFICATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneAssistPresent()Z
    .locals 1

    .line 737
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LANE_ASSIST:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneAuxiliarySwitchPresent()Z
    .locals 1

    .line 730
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LANE_AUXILIARY_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneChangeDriverConfirmationPresent()Z
    .locals 1

    .line 1026
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LANE_CHANGE_DRIVER_CONFIRMATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneChangeStylePresent()Z
    .locals 1

    .line 1033
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LANE_CHANGE_STYLE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLcaCardPresent()Z
    .locals 1

    .line 800
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LCA_CARD:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLightTurnedOffDelayPresent()Z
    .locals 1

    .line 618
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LIGHT_TURNED_OFF_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLockAndUnlockWhistleNotePresent()Z
    .locals 1

    .line 611
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->LOCK_AND_UNLOCK_WHISTLE_NOTE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMicPresent()Z
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->MIC:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMonsterModeSwitchPresent()Z
    .locals 1

    .line 352
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->MONSTER_MODE_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNfcPresent()Z
    .locals 1

    .line 526
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->NFC:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOverspeedAlarmOfTsrPresent()Z
    .locals 1

    .line 906
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->OVERSPEED_ALARM_OF_TSR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOverspeedWarningPresent()Z
    .locals 1

    .line 779
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->OVERSPEED_WARNING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPasPresent()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->PAS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPcsPresent()Z
    .locals 1

    .line 139
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->PCS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlgmfunccfgPresent()Z
    .locals 1

    .line 519
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->PLGMFUNCCFG:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQualitySensorPresent()Z
    .locals 1

    .line 387
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->QUALITY_SENSOR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRaebPresent()Z
    .locals 1

    .line 829
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RAEB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRainstormModePresent()Z
    .locals 1

    .line 639
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearApproachingWarningPresent()Z
    .locals 1

    .line 864
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REAR_APPROACHING_WARNING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearCrossTrafficAlertModePresent()Z
    .locals 1

    .line 857
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REAR_CROSS_TRAFFIC_ALERT_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearCrossTrafficAlertPresent()Z
    .locals 1

    .line 850
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REAR_CROSS_TRAFFIC_ALERT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearSeatBeltNotificationPresent()Z
    .locals 1

    .line 688
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REAR_SEAT_BELT_NOTIFICATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearviewMirrorAdjustmentPresent()Z
    .locals 1

    .line 576
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REARVIEW_MIRROR_ADJUSTMENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRemoteUnlockPresent()Z
    .locals 1

    .line 541
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->REMOTE_UNLOCK:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRestartVehicleCommunicationModulePresent()Z
    .locals 1

    .line 231
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RESTART_VEHICLE_COMMUNICATION_MODULE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRlSpeakerPresent()Z
    .locals 1

    .line 181
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RL_SPEAKER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRrSpeakerPresent()Z
    .locals 1

    .line 188
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->RR_SPEAKER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmartTailgatePresent()Z
    .locals 1

    .line 512
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->SMART_TAILGATE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpeedLimtedSignRecognitionPresent()Z
    .locals 1

    .line 786
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->SPEED_LIMTED_SIGN_RECOGNITION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpeedLockPresent()Z
    .locals 1

    .line 548
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->SPEED_LOCK:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringModePresent()Z
    .locals 1

    .line 793
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->STEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelKeyPresent()Z
    .locals 1

    .line 195
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->STEERING_WHEEL_KEY:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelSteeringHandForcePresent()Z
    .locals 1

    .line 583
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->STEERING_WHEEL_STEERING_HAND_FORCE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStorageBoxAutomaticallyFlipDownPresent()Z
    .locals 1

    .line 275
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTboxPresent()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->TBOX:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTemporaryParkingLampSignalsPresent()Z
    .locals 1

    .line 1019
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->TEMPORARY_PARKING_LAMP_SIGNALS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTimeInClusterPresent()Z
    .locals 1

    .line 716
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->TIME_IN_CLUSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUltravioletRayPresent()Z
    .locals 1

    .line 977
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->ULTRAVIOLET_RAY:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnlockVentilationPresent()Z
    .locals 1

    .line 984
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->UNLOCK_VENTILATION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVcuPresent()Z
    .locals 1

    .line 153
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->VCU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWinterLongDistancePresent()Z
    .locals 1

    .line 289
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->WINTER_LONG_DISTANCE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWiperMaintanencePresent()Z
    .locals 1

    .line 597
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;->WIPER_MAINTANENCE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setConfigData([B)Z
    .locals 2

    .line 1094
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/vehicle/sdk/config/Ihu23CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x270b

    invoke-virtual {v0, v1, p0}, Lcom/yftech/vehicle/internal/BaseApiManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method
