.class public Lcom/yftech/vehicle/sdk/CarSettingsManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarSettingsManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSettingsManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarSettingsManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarSettingsManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarSettingsManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarSettingsManager;->sMe:Lcom/yftech/vehicle/sdk/CarSettingsManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarSettingsManager;->sMe:Lcom/yftech/vehicle/sdk/CarSettingsManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarSettingsManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarSettingsManager;->sMe:Lcom/yftech/vehicle/sdk/CarSettingsManager;
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


# virtual methods
.method public getADASELKStatus()Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;
    .locals 1

    const/16 v0, 0x20e

    .line 843
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    move-result-object p0

    return-object p0
.end method

.method public getADASWarnType()Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;
    .locals 1

    const/16 v0, 0x6c

    .line 171
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    move-result-object p0

    return-object p0
.end method

.method public getAEBOffEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
    .locals 1

    const/16 v0, 0x67

    .line 96
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    move-result-object p0

    return-object p0
.end method

.method public getAVASEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x6d

    .line 187
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAcSmart()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x1a0

    .line 517
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAutoWiperMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;
    .locals 1

    const/16 v0, 0x70

    .line 231
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    move-result-object p0

    return-object p0
.end method

.method public getBSDMDowState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowState;
    .locals 1

    const/16 v0, 0x1c6

    .line 691
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowState;

    move-result-object p0

    return-object p0
.end method

.method public getBSDMLcaState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaState;
    .locals 1

    const/16 v0, 0x1c4

    .line 675
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaState;

    move-result-object p0

    return-object p0
.end method

.method public getBSDMRctaAssistType()Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;
    .locals 1

    const/16 v0, 0x1ca

    .line 723
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    move-result-object p0

    return-object p0
.end method

.method public getBSDMRctaState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;
    .locals 1

    const/16 v0, 0x1c8

    .line 707
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    move-result-object p0

    return-object p0
.end method

.method public getBSDMRcwState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwState;
    .locals 1

    const/16 v0, 0x1cc

    .line 739
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwState;

    move-result-object p0

    return-object p0
.end method

.method public getComfortParkState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;
    .locals 1

    const/16 v0, 0x19e

    .line 532
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    move-result-object p0

    return-object p0
.end method

.method public getCruiseAssistMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;
    .locals 1

    const/16 v0, 0x10f

    .line 324
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    move-result-object p0

    return-object p0
.end method

.method public getDragMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;
    .locals 1

    const/16 v0, 0x14c

    .line 380
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    move-result-object p0

    return-object p0
.end method

.method public getEMSEngWaveStatus()Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;
    .locals 1

    const/16 v0, 0x210

    .line 858
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    move-result-object p0

    return-object p0
.end method

.method public getEPBSystemMsg()Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;
    .locals 1

    const/16 v0, 0x14e

    .line 395
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    move-result-object p0

    return-object p0
.end method

.method public getEPBSystemState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;
    .locals 1

    const/16 v0, 0x14a

    .line 364
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    move-result-object p0

    return-object p0
.end method

.method public getETCEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x6e

    .line 202
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getFCWOffEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
    .locals 1

    const/16 v0, 0x65

    .line 65
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    move-result-object p0

    return-object p0
.end method

.method public getFCWWarningDistance()Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;
    .locals 1

    const/16 v0, 0x66

    .line 80
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    move-result-object p0

    return-object p0
.end method

.method public getFrontCarDistanceDisplayEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x10b

    .line 294
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getHudAngleSt()I
    .locals 1

    const/16 v0, 0x1d4

    .line 798
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getHudBrightnessSt()I
    .locals 1

    const/16 v0, 0x1d0

    .line 770
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getHudHeightSt()I
    .locals 1

    const/16 v0, 0x1d2

    .line 784
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getHudMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;
    .locals 1

    const/16 v0, 0x1d6

    .line 813
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    move-result-object p0

    return-object p0
.end method

.method public getHudOffState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;
    .locals 1

    const/16 v0, 0x1ce

    .line 755
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;

    move-result-object p0

    return-object p0
.end method

.method public getIAccEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x6a

    .line 141
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getIntelligentAvoidEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x10d

    .line 309
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getKeyNotforgetWarningEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x16a

    .line 427
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getLksMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;
    .locals 1

    const/16 v0, 0x64

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    move-result-object p0

    return-object p0
.end method

.method public getLksState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
    .locals 1

    const/16 v0, 0x63

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    move-result-object p0

    return-object p0
.end method

.method public getOSRMAutoFoldEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x6b

    .line 156
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getOSRMRAngleCmd()Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;
    .locals 1

    const/16 v0, 0x1a9

    .line 561
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    move-result-object p0

    return-object p0
.end method

.method public getOSRMRAngleHorizontalFL()I
    .locals 1

    const/16 v0, 0x1ad

    .line 591
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getOSRMRAngleHorizontalFR()I
    .locals 1

    const/16 v0, 0x1af

    .line 605
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getOSRMRAngleVerticalFL()I
    .locals 1

    const/16 v0, 0x1ac

    .line 584
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getOSRMRAngleVerticalFR()I
    .locals 1

    const/16 v0, 0x1ae

    .line 598
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getParkAutoUnlock()Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;
    .locals 1

    const/16 v0, 0x150

    .line 411
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerKeepRemindConf()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x177

    .line 480
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerKeepRemindReq()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x176

    .line 472
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerKeepReq()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x172

    .line 442
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerKeepReqVd()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x174

    .line 457
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerOffReqVd()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x179

    .line 495
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRLSPABUttonState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x22f

    .line 903
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRLSeatWelcome()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x21c

    .line 873
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRRSPABUttonState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x230

    .line 911
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRRSeatWelcome()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x21a

    .line 888
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRainstormMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$RainstormMode;
    .locals 1

    const/16 v0, 0x71

    .line 247
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RainstormMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RainstormMode;

    move-result-object p0

    return-object p0
.end method

.method public getRearviewMirrorCmdForReverse()Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;
    .locals 1

    const/16 v0, 0x136

    .line 340
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;

    move-result-object p0

    return-object p0
.end method

.method public getRearviewMirrorStateL()Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
    .locals 1

    const/16 v0, 0xfc

    .line 278
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    move-result-object p0

    return-object p0
.end method

.method public getRearviewMirrorStateR()Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
    .locals 1

    const/16 v0, 0xfd

    .line 286
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    move-result-object p0

    return-object p0
.end method

.method public getSeatNapModePositionState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x233

    .line 934
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getStpOnBrkToRelParkBrkIndOnState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;
    .locals 1

    const/16 v0, 0x14f

    .line 403
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    move-result-object p0

    return-object p0
.end method

.method public getTSRAudioWarningEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x69

    .line 126
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getTSREnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x68

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWCLCMWorkMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkMode;
    .locals 1

    const/16 v0, 0x1c2

    .line 659
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkMode;

    move-result-object p0

    return-object p0
.end method

.method public getWCMCtlChargingState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlChargingState;
    .locals 1

    const/16 v0, 0x203

    .line 643
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlChargingState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlChargingState;

    move-result-object p0

    return-object p0
.end method

.method public getWCMCtlFailureState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;
    .locals 1

    const/16 v0, 0x204

    .line 651
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    move-result-object p0

    return-object p0
.end method

.method public getWCMCtlResult()Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;
    .locals 1

    const/16 v0, 0x1c0

    .line 627
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    move-result-object p0

    return-object p0
.end method

.method public isDoorHandleElectricHideEnabled()Z
    .locals 1

    const/16 v0, 0x1a7

    .line 546
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDriverEasyEntryAndExitEnabled()Z
    .locals 1

    const/16 v0, 0x1be

    .line 612
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrontWiperServicePositionEnabled()Z
    .locals 1

    const/16 v0, 0x6f

    .line 216
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWCMCtlErrorStateEnabled()Z
    .locals 1

    const/16 v0, 0x208

    .line 835
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWCMCtlPromptStateEnabled()Z
    .locals 1

    const/16 v0, 0x207

    .line 828
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performFrontWiperServicePositionButtonClick()Z
    .locals 2

    const/16 v0, 0x2c

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setADASELKEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x20f

    .line 850
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setADASWarnType(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)Z
    .locals 1

    .line 179
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->value:I

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAEBOffEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x24

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAVASEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x2a

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAcSmartEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1a1

    .line 524
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAutoWiperMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z
    .locals 1

    .line 239
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->value:I

    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setBSDMDowCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowCtl;)Z
    .locals 1

    .line 699
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowCtl;->value:I

    const/16 v0, 0x1c7

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setBSDMLcaCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;)Z
    .locals 1

    .line 683
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->value:I

    const/16 v0, 0x1c5

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setBSDMRctaAssistType(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;)Z
    .locals 1

    .line 731
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    const/16 v0, 0x1cb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setBSDMRctaCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;)Z
    .locals 1

    .line 715
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->value:I

    const/16 v0, 0x1c9

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setBSDMRcwCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;)Z
    .locals 1

    .line 747
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->value:I

    const/16 v0, 0x1cd

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setComfortParkStateEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1a2

    .line 539
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setCruiseAssistMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)Z
    .locals 1

    .line 332
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;->value:I

    const/16 v0, 0x110

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDoorHandleElectricHideEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1a8

    .line 553
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setDragModeEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x14d

    .line 387
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setDriverEasyEntryAndExitEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1bf

    .line 619
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setEMSEngWaveEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x211

    .line 865
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setEPBSystemSetState(Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;)Z
    .locals 1

    .line 372
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->value:I

    const/16 v0, 0x14b

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setETCEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x2b

    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setFCWOffEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x22

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setFCWWarningDistance(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)Z
    .locals 1

    .line 88
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->value:I

    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setFrontCarDistanceDisplayEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x10c

    .line 301
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHudAngleSt(I)Z
    .locals 1

    const/16 v0, 0x1d5

    .line 805
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHudBrightnessSt(I)Z
    .locals 1

    const/16 v0, 0x1d1

    .line 777
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHudHeightSt(I)Z
    .locals 1

    const/16 v0, 0x1d3

    .line 791
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHudMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;)Z
    .locals 1

    .line 821
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->value:I

    const/16 v0, 0x1d7

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHudOffState(Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;)Z
    .locals 1

    .line 763
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;->value:I

    const/16 v0, 0x1cf

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setIAccEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x27

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setIntelligentAvoidEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x10e

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setKeyNotforgetWarningEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x16b

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setLdwLkaEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x20

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setLksMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z
    .locals 1

    .line 57
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setOSRMAutoFoldEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x28

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setOSRMRAngleCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z
    .locals 1

    .line 569
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->value:I

    const/16 v0, 0x1aa

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setOSRMRAngleSaveCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;)Z
    .locals 1

    .line 577
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;->value:I

    const/16 v0, 0x1ab

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setParkAutoUnlock(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;)Z
    .locals 1

    .line 419
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->value:I

    const/16 v0, 0x151

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPowerKeepRemindConfEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x178

    .line 487
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPowerKeepReqEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x173

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPowerKeepReqVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x175

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPowerOffReqSwitch(Z)Z
    .locals 1

    const/16 v0, 0x17b

    .line 509
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPowerOffReqVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x17a

    .line 502
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setRLSeatWelcomeEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x21d

    .line 880
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setRRSeatWelcomeEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x21b

    .line 895
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setRainstormMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;)Z
    .locals 1

    .line 255
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRearviewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z
    .locals 1

    .line 263
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    const/16 v0, 0xfb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRearviewMirrorCmdForReverse(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;)Z
    .locals 1

    .line 348
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;->value:I

    const/16 v0, 0x137

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRearviewMirrorCmdVdSwitch(Z)Z
    .locals 1

    const/16 v0, 0x135

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setRearviewMirrorSettingCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorSettingCmd;)Z
    .locals 1

    .line 356
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorSettingCmd;->value:I

    const/16 v0, 0x138

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSCMNapSettingSave(Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;)Z
    .locals 1

    .line 926
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    const/16 v0, 0x232

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSCMNapSettingSwitch(Z)Z
    .locals 1

    const/16 v0, 0x231

    .line 918
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTSRAudioWarningEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x26

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTSREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x25

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWCLCMWorkModeCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;)Z
    .locals 1

    .line 667
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->value:I

    const/16 v0, 0x1c3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWCMCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;)Z
    .locals 1

    .line 635
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;->value:I

    const/16 v0, 0x1c1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
