.class public Lcom/yftech/vehicle/sdk/CarDeviceManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarDeviceManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarDeviceManager$CarDeviceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDeviceManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarDeviceManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarDeviceManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarDeviceManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarDeviceManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarDeviceManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDeviceManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarDeviceManager;
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
.method public getBSVDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x214

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getPASBackParkDisplayState()Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;
    .locals 1

    const/16 v0, 0x209

    .line 88
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x198

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderRecordState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x199

    .line 42
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public perform360SvmButtonClick()Z
    .locals 2

    const/16 v0, 0x134

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performAPAButtonClick()Z
    .locals 2

    const/16 v0, 0x206

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performBSVButtonClick()Z
    .locals 2

    const/16 v0, 0x217

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarDeviceManager$CarDeviceListener;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setBSVDisplaySwitch(Z)Z
    .locals 1

    const/16 v0, 0x212

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setBsvFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$BsvFunctionCmd;)Z
    .locals 1

    .line 103
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$BsvFunctionCmd;->value:I

    const/16 v0, 0x213

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPAAMode(Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;)Z
    .locals 1

    .line 73
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    const/16 v0, 0x205

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRecorderEnterCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$RecorderEnterCmd;)Z
    .locals 1

    .line 50
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$RecorderEnterCmd;->value:I

    const/16 v0, 0x19a

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z
    .locals 1

    .line 58
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    const/16 v0, 0x19b

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarDeviceManager$CarDeviceListener;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
