.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;
.super Ljava/lang/Object;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSourceEnableInfo"
.end annotation


# static fields
.field public static final STATE_DISABLE:B = 0x0t

.field public static final STATE_ENABLE:B = 0x1t


# instance fields
.field public mBtState:B

.field public mCarLifeState:B

.field public mCarPlayState:B

.field public mUsb1State:B

.field public mUsb2State:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1255
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb1State:B

    .line 1256
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb2State:B

    .line 1257
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarLifeState:B

    .line 1258
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarPlayState:B

    .line 1259
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mBtState:B

    return-void
.end method


# virtual methods
.method public getDataArray()[B
    .locals 3

    const/4 v0, 0x5

    .line 1262
    new-array v0, v0, [B

    .line 1263
    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb1State:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1264
    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarLifeState:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1265
    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarPlayState:B

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1266
    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mBtState:B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1267
    iget-byte p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb2State:B

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSourceEnableInfo{mUsb1State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb1State:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mUsb2State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mUsb2State:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCarLifeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarLifeState:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCarPlayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mCarPlayState:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBtState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AudioSourceEnableInfo;->mBtState:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
