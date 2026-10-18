.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtInfo"
.end annotation


# static fields
.field public static final PHONE_SOURCE_TYPE_BCALL:B = 0x5t

.field public static final PHONE_SOURCE_TYPE_BT:B = 0x0t

.field public static final PHONE_SOURCE_TYPE_CARLIFE:B = 0x1t

.field public static final PHONE_SOURCE_TYPE_CARPLAY:B = 0x2t

.field public static final PHONE_SOURCE_TYPE_ECALL:B = 0x4t

.field public static final PHONE_SOURCE_TYPE_HICAR:B = 0x3t

.field public static final STATUS_CALL_ONLINE:B = 0x4t

.field public static final STATUS_CALL_ONLINE_TIME:B = 0x7t

.field public static final STATUS_CONNECTED:B = 0x1t

.field public static final STATUS_ENDING_CALL:B = 0x5t

.field public static final STATUS_INCOMING_CALL:B = 0x2t

.field public static final STATUS_MISS_CALL:B = 0x6t

.field public static final STATUS_NOT_CONNECT:B = 0x0t

.field public static final STATUS_OUTGOING_CALL:B = 0x3t

.field public static final STATUS_UNKNOW:B = -0x1t


# instance fields
.field public mBtCallNumber:Ljava/lang/String;

.field public mBtName:Ljava/lang/String;

.field public mBtStatus:B

.field public mIsMute:Z

.field public mPhoneSourceType:B

.field public talkTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 266
    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    const-string v0, ""

    .line 246
    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    const-string v0, ""

    .line 248
    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    const/4 v0, 0x0

    .line 251
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    .line 253
    iput v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    return-void
.end method


# virtual methods
.method public isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)V
    .locals 0

    .line 262
    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    return-void
.end method

.method public toBytes()[B
    .locals 0

    const/4 p0, 0x0

    .line 270
    new-array p0, p0, [B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtInfo{mBtStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mIsMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBtName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBtCallNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", talkTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
