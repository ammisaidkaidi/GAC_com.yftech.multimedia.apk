.class public Lcom/yftech/vehicle/sdk/HostConfig;
.super Ljava/lang/Object;
.source "HostConfig.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IHostConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "HostConfig"

.field private static sMe:Lcom/yftech/vehicle/sdk/HostConfig;


# instance fields
.field private mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

.field private mData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Lcom/yftech/vehicle/sdk/HostConfig$1;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/HostConfig$1;-><init>(Lcom/yftech/vehicle/sdk/HostConfig;)V

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    return-void
.end method

.method private configData()[B
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x26d7

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/internal/BaseApiManager;->getSignalDataValue(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

    const-string v0, "HostConfig"

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configData() mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

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

    .line 380
    :cond_2
    iget-object p0, p0, Lcom/yftech/vehicle/sdk/HostConfig;->mData:[B

    return-object p0
.end method

.method private configValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I
    .locals 2

    .line 384
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/HostConfig;->configData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 385
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->byteIndex:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->byteIndex:B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 388
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->byteIndex:B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    .line 389
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->bitSize:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 390
    iget-byte v1, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->startBit:B

    shl-int/2addr v0, v1

    and-int/2addr p0, v0

    .line 391
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->startBit:B

    shr-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static declared-synchronized get()Lcom/yftech/vehicle/sdk/HostConfig;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/HostConfig;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/HostConfig;->sMe:Lcom/yftech/vehicle/sdk/HostConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/HostConfig;->sMe:Lcom/yftech/vehicle/sdk/HostConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/HostConfig;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/HostConfig;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/HostConfig;->sMe:Lcom/yftech/vehicle/sdk/HostConfig;
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

.method public static getCarMode()Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;
    .locals 1

    .line 55
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CAR_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigData()[B
    .locals 1

    .line 401
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->get()Lcom/yftech/vehicle/sdk/HostConfig;

    move-result-object v0

    invoke-direct {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->configData()[B

    move-result-object v0

    return-object v0
.end method

.method private static getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I
    .locals 1

    .line 397
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->get()Lcom/yftech/vehicle/sdk/HostConfig;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/HostConfig;->configValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result p0

    return p0
.end method

.method public static getEngineeringMode()Lcom/yftech/vehicle/internal/adapter/IHostConfig$EngineeringMode;
    .locals 1

    .line 340
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$EngineeringMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$EngineeringMode;

    move-result-object v0

    return-object v0
.end method

.method public static getExpressMessage()Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;
    .locals 1

    .line 258
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EXPRESS_MESSAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    move-result-object v0

    return-object v0
.end method

.method public static getHvacDisplayTime()Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;
    .locals 1

    .line 197
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceSound()Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;
    .locals 1

    .line 290
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    move-result-object v0

    return-object v0
.end method

.method public static getKeytone()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;
    .locals 1

    .line 282
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    move-result-object v0

    return-object v0
.end method

.method public static getLeftRightHandDriveVehicles()Lcom/yftech/vehicle/internal/adapter/IHostConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 372
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$LeftRightHandDriveVehicles;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$LeftRightHandDriveVehicles;

    move-result-object v0

    return-object v0
.end method

.method public static getMapPreferences()Lcom/yftech/vehicle/internal/adapter/IHostConfig$MapPreferences;
    .locals 1

    .line 266
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MAP_PREFERENCES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$MapPreferences;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$MapPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaVolumeDelay()Lcom/yftech/vehicle/internal/adapter/IHostConfig$MediaVolumeDelay;
    .locals 1

    .line 213
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$MediaVolumeDelay;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$MediaVolumeDelay;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageNotification()Lcom/yftech/vehicle/internal/adapter/IHostConfig$MessageNotification;
    .locals 1

    .line 250
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MESSAGE_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$MessageNotification;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$MessageNotification;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigationSignalMode()Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;
    .locals 1

    .line 274
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NAVIGATION_SIGNAL_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfScreen()Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;
    .locals 1

    .line 47
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    move-result-object v0

    return-object v0
.end method

.method public static getRadarVolumeAdjustment()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadarVolumeAdjustment;
    .locals 1

    .line 181
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadarVolumeAdjustment;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadarVolumeAdjustment;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;
    .locals 1

    .line 149
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioDABAndRDSConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;
    .locals 1

    .line 173
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioFrequency()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;
    .locals 1

    .line 205
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindingMaintenanceCycle()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;
    .locals 1

    .line 348
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindingResetCycle()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingResetCycle;
    .locals 1

    .line 356
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingResetCycle;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingResetCycle;

    move-result-object v0

    return-object v0
.end method

.method public static getRepeatSetting()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RepeatSetting;
    .locals 1

    .line 364
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RepeatSetting;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RepeatSetting;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSwitchDelay()Lcom/yftech/vehicle/internal/adapter/IHostConfig$ScreenSwitchDelay;
    .locals 1

    .line 221
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ScreenSwitchDelay;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$ScreenSwitchDelay;

    move-result-object v0

    return-object v0
.end method

.method public static getSdvcCurveConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$SdvcCurveConfiguration;
    .locals 1

    .line 189
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$SdvcCurveConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$SdvcCurveConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getUsb()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;
    .locals 1

    .line 134
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;

    move-result-object v0

    return-object v0
.end method

.method public static getWifi()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Wifi;
    .locals 1

    .line 98
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Wifi;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Wifi;

    move-result-object v0

    return-object v0
.end method

.method public static isAutoParkingBackgroundPushPresent()Z
    .locals 1

    .line 242
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUTO_PARKING_BACKGROUND_PUSH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAuxPresent()Z
    .locals 1

    .line 119
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBtPresent()Z
    .locals 1

    .line 105
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCarlifePresent()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCarplayPresent()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCellularNetworkPresent()Z
    .locals 1

    .line 112
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEasyConnectPresent()Z
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EASY_CONNECT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEthernetNetPresent()Z
    .locals 1

    .line 141
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFaceIdPresent()Z
    .locals 1

    .line 297
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHicarPresent()Z
    .locals 1

    .line 76
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HICAR:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIphoneDefaultConnectingPresent()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIpodPresent()Z
    .locals 1

    .line 126
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRadarSwitchPresent()Z
    .locals 1

    .line 228
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRadioDABPresent()Z
    .locals 1

    .line 157
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRadioRDSPresent()Z
    .locals 1

    .line 165
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSceneSwitchPresent()Z
    .locals 1

    .line 311
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCENE_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreensaverPresent()Z
    .locals 1

    .line 325
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShiftSoundPresent()Z
    .locals 1

    .line 304
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SHIFT_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTrafficDisplayPresent()Z
    .locals 1

    .line 318
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->TRAFFIC_DISPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUserManualPresent()Z
    .locals 1

    .line 332
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWallpaperPresent()Z
    .locals 1

    .line 235
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WALLPAPER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setConfigData([B)Z
    .locals 2

    .line 405
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->get()Lcom/yftech/vehicle/sdk/HostConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/vehicle/sdk/HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x26d7

    invoke-virtual {v0, v1, p0}, Lcom/yftech/vehicle/internal/BaseApiManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method
