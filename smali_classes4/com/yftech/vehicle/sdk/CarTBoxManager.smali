.class public Lcom/yftech/vehicle/sdk/CarTBoxManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarTBoxManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarTBox;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarTBoxManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarTBoxManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarTBoxManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarTBoxManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarTBoxManager;->sMe:Lcom/yftech/vehicle/sdk/CarTBoxManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarTBoxManager;->sMe:Lcom/yftech/vehicle/sdk/CarTBoxManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarTBoxManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarTBoxManager;->sMe:Lcom/yftech/vehicle/sdk/CarTBoxManager;
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
.method public getMuteRadioOrder()Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;
    .locals 1

    const/16 v0, 0xbe

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneCallState()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
    .locals 1

    const/16 v0, 0x149

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneMode()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;
    .locals 1

    const/16 v0, 0x148

    .line 58
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setPhoneKeyAccept(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;)Z
    .locals 1

    .line 42
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    const/16 v0, 0x146

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPhoneKeyCancel(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;)Z
    .locals 1

    .line 50
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    const/16 v0, 0x147

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPhoneType(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneType;)Z
    .locals 1

    .line 74
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneType;->value:I

    const/16 v0, 0x202

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
