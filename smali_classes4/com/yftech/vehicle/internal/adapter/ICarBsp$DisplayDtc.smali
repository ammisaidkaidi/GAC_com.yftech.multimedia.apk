.class public Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;
.super Ljava/lang/Object;
.source "ICarBsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarBsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayDtc"
.end annotation


# instance fields
.field public IICCommunicationFailure:Z

.field public backLightFault:Z

.field public notReceievdBacklight:Z

.field public notSetBacklightOnOffModule:Z

.field public temperatureExcption:Z

.field public tftFailure:Z

.field public touchPanelFailure:Z

.field public videoSignalConnectFailure:Z

.field public voltageHigh:Z

.field public voltageLow:Z


# direct methods
.method private constructor <init>(ZZZZZZZZZZ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->voltageHigh:Z

    .line 58
    iput-boolean p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->voltageLow:Z

    .line 59
    iput-boolean p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->notReceievdBacklight:Z

    .line 60
    iput-boolean p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->notSetBacklightOnOffModule:Z

    .line 61
    iput-boolean p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->tftFailure:Z

    .line 62
    iput-boolean p6, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->videoSignalConnectFailure:Z

    .line 63
    iput-boolean p7, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->touchPanelFailure:Z

    .line 64
    iput-boolean p8, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->IICCommunicationFailure:Z

    .line 65
    iput-boolean p9, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->temperatureExcption:Z

    .line 66
    iput-boolean p10, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->backLightFault:Z

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;
    .locals 14

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    shr-int/lit8 v0, p0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    shr-int/lit8 v0, p0, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    shr-int/lit8 v0, p0, 0x3

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    shr-int/lit8 v0, p0, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    shr-int/lit8 v0, p0, 0x5

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    move v9, v2

    goto :goto_5

    :cond_5
    move v9, v1

    :goto_5
    shr-int/lit8 v0, p0, 0x6

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move v10, v1

    :goto_6
    shr-int/lit8 v0, p0, 0x7

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    move v11, v2

    goto :goto_7

    :cond_7
    move v11, v1

    :goto_7
    shr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_8

    move v12, v2

    goto :goto_8

    :cond_8
    move v12, v1

    :goto_8
    shr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_9

    move v13, v2

    goto :goto_9

    :cond_9
    move v13, v1

    .line 80
    :goto_9
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;-><init>(ZZZZZZZZZZ)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDtc{voltageHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->voltageHigh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", voltageLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->voltageLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notReceievdBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->notReceievdBacklight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notSetBacklightOnOffModule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->notSetBacklightOnOffModule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tftFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->tftFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoSignalConnectFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->videoSignalConnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", touchPanelFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->touchPanelFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IICCommunicationFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->IICCommunicationFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", temperatureExcption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->temperatureExcption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backLightFault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->backLightFault:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
