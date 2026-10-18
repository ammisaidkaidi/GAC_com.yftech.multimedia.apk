.class public Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "Ihu23ProjectManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseCmd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/Ihu23ProjectManager$ProjectIhu23Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ihu23ProjectManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->sMe:Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->sMe:Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->sMe:Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;
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
.method public getChargeInfo()Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;
    .locals 4

    .line 62
    new-instance p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;

    invoke-direct {p0}, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;-><init>()V

    .line 63
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartRemainingDay()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingDay:I

    .line 64
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartRemainingHour()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingHour:I

    .line 65
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartRemainingMin()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingMin:I

    .line 66
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartYear()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    .line 67
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartDay()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartDay:I

    .line 68
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartMon()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMon:I

    .line 69
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartHour()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartHour:I

    .line 70
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStartMin()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMin:I

    .line 71
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStopYear()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    .line 72
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStopDay()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopDay:I

    .line 73
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStopMon()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMon:I

    .line 74
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStopHour()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopHour:I

    .line 75
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getBookChrgStopMin()I

    move-result v0

    iput v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMin:I

    .line 76
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getChargeMode()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;

    move-result-object v0

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;->value:I

    invoke-static {v0}, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    .line 77
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay1()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay1:Z

    .line 78
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay2()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay2:Z

    .line 79
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay3()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay3:Z

    .line 80
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay4()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay4:Z

    .line 81
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay5()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay5:Z

    .line 82
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay6()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay6:Z

    .line 83
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getRepeatBookChrgDay7()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    if-ne v0, v1, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay7:Z

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/Ihu23ProjectManager$ProjectIhu23Listener;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setChargeInfo(Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "Ihu23ProjectManager"

    const-string p1, "setChargeInfo() - info is null "

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 44
    :cond_0
    iget v1, p1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_1

    const-string p0, "Ihu23ProjectManager"

    const-string p1, "setChargeInfo() - info.bookStartYear <2000 "

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 48
    :cond_1
    iget v1, p1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    if-ge v1, v2, :cond_2

    const-string p0, "Ihu23ProjectManager"

    const-string p1, "setChargeInfo() - info.bookStopYear <2000 "

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 52
    :cond_2
    invoke-static {p1}, Lcom/yftech/vehicle/internal/project/Ihu23Project;->formartChargeInfoByteArray(Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;)[B

    move-result-object p1

    const-string v0, "Ihu23ProjectManager"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCU_IHU23 setChargeInfo-> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26d3

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/Ihu23ProjectManager$ProjectIhu23Listener;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/Ihu23ProjectManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
