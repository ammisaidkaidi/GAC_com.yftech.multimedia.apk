.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioInfo"
.end annotation


# static fields
.field public static final AM1:B = 0x3t

.field public static final AM2:B = 0x4t

.field public static final AM3:B = 0x5t

.field public static final FM1:B = 0x0t

.field public static final FM2:B = 0x1t

.field public static final FM3:B = 0x2t

.field public static final SCAN_MODE_AST:B = 0x2t

.field public static final SCAN_MODE_NORMAL:B = 0x1t

.field public static final SCAN_MODE_SCAN:B = 0x3t


# instance fields
.field public isPrefebIndex:Z

.field public mBandType:B

.field public mFrequency:I

.field public mPrefebIndex:B

.field public scanMode:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IBZBI)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    .line 175
    iput-byte p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    .line 176
    iput-boolean p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->isPrefebIndex:Z

    .line 177
    iput-byte p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mPrefebIndex:B

    .line 178
    iput p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    return-void
.end method

.method public constructor <init>(IBZBIB)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    .line 183
    iput-byte p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    .line 184
    iput-boolean p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->isPrefebIndex:Z

    .line 185
    iput-byte p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mPrefebIndex:B

    .line 186
    iput p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    .line 187
    iput-byte p6, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->scanMode:B

    return-void
.end method


# virtual methods
.method public isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 163
    :cond_0
    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    iget-byte v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    if-ne v1, v2, :cond_2

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;)V
    .locals 1

    .line 166
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    .line 167
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    return-void
.end method

.method public toBytes()[B
    .locals 0

    const/4 p0, 0x0

    .line 192
    new-array p0, p0, [B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioInfo{mBandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPrefebIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->isPrefebIndex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPrefebIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mPrefebIndex:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
