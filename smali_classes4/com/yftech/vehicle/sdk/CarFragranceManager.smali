.class public Lcom/yftech/vehicle/sdk/CarFragranceManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarFragranceManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarFragrance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarFragranceManager$CarFragranceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarFragranceManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarFragranceManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarFragranceManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarFragranceManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarFragranceManager;->sMe:Lcom/yftech/vehicle/sdk/CarFragranceManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarFragranceManager;->sMe:Lcom/yftech/vehicle/sdk/CarFragranceManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarFragranceManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarFragranceManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarFragranceManager;->sMe:Lcom/yftech/vehicle/sdk/CarFragranceManager;
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
.method public getFragrance1WorkState()Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    const/16 v0, 0x223

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    move-result-object p0

    return-object p0
.end method

.method public getFragrance2WorkState()Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    const/16 v0, 0x224

    .line 79
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    move-result-object p0

    return-object p0
.end method

.method public getFragrance3WorkState()Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    const/16 v0, 0x225

    .line 87
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    move-result-object p0

    return-object p0
.end method

.method public getFragranceTaste1Frag()I
    .locals 1

    const/16 v0, 0x226

    .line 94
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getFragranceTaste1Percent()I
    .locals 1

    const/16 v0, 0x220

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getFragranceTaste2Frag()I
    .locals 1

    const/16 v0, 0x227

    .line 101
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getFragranceTaste2Percent()I
    .locals 1

    const/16 v0, 0x221

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getFragranceTaste3Frag()I
    .locals 1

    const/16 v0, 0x228

    .line 108
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getFragranceTaste3Percent()I
    .locals 1

    const/16 v0, 0x222

    .line 63
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarFragranceManager$CarFragranceListener;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setFRAGRANCE_CONCENTRATION(Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;)Z
    .locals 1

    .line 42
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setFragranceTaste(Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;)Z
    .locals 1

    .line 34
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    const/16 v0, 0x21e

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarFragranceManager$CarFragranceListener;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarFragranceManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
