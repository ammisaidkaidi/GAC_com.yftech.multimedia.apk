.class public Lcom/yftech/vehicle/sdk/CarDriveManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarDriveManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarDrive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDriveManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarDriveManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarDriveManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarDriveManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarDriveManager;->sMe:Lcom/yftech/vehicle/sdk/CarDriveManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarDriveManager;->sMe:Lcom/yftech/vehicle/sdk/CarDriveManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDriveManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarDriveManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDriveManager;->sMe:Lcom/yftech/vehicle/sdk/CarDriveManager;
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
.method public getAssistParaSwitchReqState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x1bc

    .line 82
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAutoHold()Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;
    .locals 1

    const/16 v0, 0x11f

    .line 209
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    move-result-object p0

    return-object p0
.end method

.method public getAvdcMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;
    .locals 1

    const/16 v0, 0xde

    .line 161
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;

    move-result-object p0

    return-object p0
.end method

.method public getBcsVdcOffState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;
    .locals 1

    const/16 v0, 0x195

    .line 224
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    move-result-object p0

    return-object p0
.end method

.method public getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 1

    const/16 v0, 0xb3

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    return-object p0
.end method

.method public getDriveModeHev()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;
    .locals 1

    const/16 v0, 0x196

    .line 232
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    move-result-object p0

    return-object p0
.end method

.method public getDriveSystemMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;
    .locals 1

    const/16 v0, 0x105

    .line 201
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    move-result-object p0

    return-object p0
.end method

.method public getEMSEngineWaveSwitchState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;
    .locals 1

    const/16 v0, 0xb5

    .line 90
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    move-result-object p0

    return-object p0
.end method

.method public getEPSStyle()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;
    .locals 1

    const/16 v0, 0xb4

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    move-result-object p0

    return-object p0
.end method

.method public getEpsModeState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;
    .locals 1

    const/16 v0, 0x123

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    move-result-object p0

    return-object p0
.end method

.method public getEspState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;
    .locals 1

    const/16 v0, 0xd7

    .line 129
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    move-result-object p0

    return-object p0
.end method

.method public getEspStyle()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;
    .locals 1

    const/16 v0, 0x122

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    move-result-object p0

    return-object p0
.end method

.method public getGasPedalLevel()Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;
    .locals 1

    const/16 v0, 0xe0

    .line 177
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    move-result-object p0

    return-object p0
.end method

.method public getHdcState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;
    .locals 1

    const/16 v0, 0xd9

    .line 145
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    move-result-object p0

    return-object p0
.end method

.method public getMemoryDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;
    .locals 1

    const/16 v0, 0xcf

    .line 105
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    move-result-object p0

    return-object p0
.end method

.method public getMemoryDriveModeA9E()Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;
    .locals 1

    const/16 v0, 0x1a6

    .line 113
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    move-result-object p0

    return-object p0
.end method

.method public getMrrAccMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;
    .locals 1

    const/16 v0, 0x1a5

    .line 240
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    move-result-object p0

    return-object p0
.end method

.method public getTcuDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;
    .locals 1

    const/16 v0, 0x104

    .line 193
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    move-result-object p0

    return-object p0
.end method

.method public performAutoHoldButtonClick()Z
    .locals 2

    const/16 v0, 0x120

    const/4 v1, 0x1

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAvdcMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;)Z
    .locals 1

    .line 169
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;->value:I

    const/16 v0, 0xdf

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Z
    .locals 1

    .line 42
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    const/16 v0, 0x47

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setEMSEngineWaveEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x49

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setEPSStyle(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)Z
    .locals 1

    .line 58
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;->value:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setEspState(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;)Z
    .locals 1

    .line 137
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->value:I

    const/16 v0, 0xd8

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setGasPedalLevel(Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;)Z
    .locals 1

    .line 185
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    const/16 v0, 0xe1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHdcState(Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;)Z
    .locals 1

    .line 153
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->value:I

    const/16 v0, 0xda

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setMemoryDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z
    .locals 1

    .line 121
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->value:I

    const/16 v0, 0xd0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
