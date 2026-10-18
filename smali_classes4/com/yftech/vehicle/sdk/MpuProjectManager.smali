.class public Lcom/yftech/vehicle/sdk/MpuProjectManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "MpuProjectManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/project/IProject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpuProjectManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/MpuProjectManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/MpuProjectManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;
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
.method public registerListener(Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public requestTBoxECallState()Z
    .locals 2

    const/4 v0, 0x5

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x26d3

    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x7et
        0x0t
        0x16t
        0x2t
        0x3t
    .end array-data
.end method

.method public setAvmApaCloseByMutleKey()Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object p0

    const-string v0, "MpuProjectManager"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvmApaCloseByMutleKey: cameraNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/yftech/vehicle/sdk/MpuProjectManager$1;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: config is not avm"

    .line 142
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    return v0

    .line 127
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->get()Lcom/yftech/vehicle/sdk/MpuAvmManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setAvmDisplayStateByMpuReq(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)Z

    .line 128
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    .line 129
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->perform360SvmButtonClick()Z

    .line 133
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_2

    .line 134
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setPAAMode(Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;)Z

    .line 135
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->performAPAButtonClick()Z

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v1, :cond_1

    .line 106
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setPAAMode(Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;)Z

    .line 107
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->performAPAButtonClick()Z

    .line 114
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v1, :cond_0

    .line 115
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    .line 116
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->perform360SvmButtonClick()Z

    goto :goto_0

    :cond_0
    const-string p0, "MpuProjectManager"

    const-string v1, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 118
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p0, "MpuProjectManager"

    const-string v1, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 109
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 98
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->get()Lcom/yftech/vehicle/sdk/MpuAvmManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setAvmDisplayStateByMpuReq(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCarFactorySet()Z
    .locals 3

    const/4 v0, 0x5

    .line 80
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    const/16 v1, 0x26d3

    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setCarSeartMemoryInfo(Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;)Z
    .locals 1

    .line 48
    invoke-virtual {p1, p1}, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->parseByte(Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;)[B

    move-result-object p1

    const/16 v0, 0x26d3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setMuteForEcall(Z)Z
    .locals 3

    const/4 v0, 0x5

    .line 55
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/16 p1, 0x26d3

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setPersonalMemoryInfo(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)Z
    .locals 1

    .line 41
    invoke-virtual {p1, p1}, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->parseByte(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)[B

    move-result-object p1

    const/16 v0, 0x26d3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setTouchInfo2Bsv(III)Z
    .locals 3

    const/16 v0, 0x8

    .line 158
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    const/16 p1, 0x26d3

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
