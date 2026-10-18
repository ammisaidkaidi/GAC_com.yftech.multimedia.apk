.class public Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;
.super Ljava/lang/Object;
.source "Ihu23HostConfig.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "HostConfig"

.field private static sMe:Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;


# instance fields
.field private mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

.field private mData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig$1;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig$1;-><init>(Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;)V

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    return-void
.end method

.method private configData()[B
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x26d7

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/internal/BaseApiManager;->getSignalDataValue(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

    const-string v0, "HostConfig"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configData() mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

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

    .line 256
    :cond_2
    iget-object p0, p0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mData:[B

    return-object p0
.end method

.method private configValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I
    .locals 2

    .line 260
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->configData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 261
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->byteIndex:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->byteIndex:B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 264
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->byteIndex:B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    .line 265
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->bitSize:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 266
    iget-byte v1, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->startBit:B

    shl-int/2addr v0, v1

    and-int/2addr p0, v0

    .line 267
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->startBit:B

    shr-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static declared-synchronized get()Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->sMe:Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;
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

.method private static getConfigData()[B
    .locals 1

    .line 277
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    move-result-object v0

    invoke-direct {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->configData()[B

    move-result-object v0

    return-object v0
.end method

.method private static getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I
    .locals 1

    .line 273
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->configValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result p0

    return p0
.end method

.method public static getEngineeringMode()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$EngineeringMode;
    .locals 1

    .line 224
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$EngineeringMode;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$EngineeringMode;

    move-result-object v0

    return-object v0
.end method

.method public static getHvacDisplayTime()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$HvacDisplayTime;
    .locals 1

    .line 150
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$HvacDisplayTime;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$HvacDisplayTime;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceSound()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;
    .locals 1

    .line 195
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    move-result-object v0

    return-object v0
.end method

.method public static getKeytone()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Keytone;
    .locals 1

    .line 187
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Keytone;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Keytone;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;
    .locals 1

    .line 38
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaVolumeDelay()I
    .locals 1

    .line 165
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getNumberOfScreen()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$NumberOfScreen;
    .locals 1

    .line 46
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$NumberOfScreen;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$NumberOfScreen;

    move-result-object v0

    return-object v0
.end method

.method public static getRadarVolumeAdjustment()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;
    .locals 1

    .line 134
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioConfiguration()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioConfiguration;
    .locals 1

    .line 126
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioFrequency()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioFrequency;
    .locals 1

    .line 158
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioFrequency;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioFrequency;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindingMaintenanceCycle()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingMaintenanceCycle;
    .locals 1

    .line 232
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingMaintenanceCycle;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingMaintenanceCycle;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindingResetCycle()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingResetCycle;
    .locals 1

    .line 240
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingResetCycle;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RemindingResetCycle;

    move-result-object v0

    return-object v0
.end method

.method public static getRepeatSetting()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;
    .locals 1

    .line 248
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSwitchDelay()I
    .locals 1

    .line 172
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getSdvcCurveConfiguration()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;
    .locals 1

    .line 142
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getUsb()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Usb;
    .locals 1

    .line 111
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Usb;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Usb;

    move-result-object v0

    return-object v0
.end method

.method public static getWifi()Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;
    .locals 1

    .line 75
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    move-result-object v0

    return-object v0
.end method

.method public static isAuxPresent()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 82
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 60
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 53
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 89
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 118
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 202
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 67
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 103
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 179
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 209
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 216
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->getConfigValue(Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;)I

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

    .line 281
    invoke-static {}, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->get()Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/vehicle/sdk/config/Ihu23HostConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x26d7

    invoke-virtual {v0, v1, p0}, Lcom/yftech/vehicle/internal/BaseApiManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method
