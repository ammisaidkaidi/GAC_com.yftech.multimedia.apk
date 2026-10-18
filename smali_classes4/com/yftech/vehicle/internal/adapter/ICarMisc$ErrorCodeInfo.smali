.class public Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;
.super Ljava/lang/Object;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCodeInfo"
.end annotation


# instance fields
.field public day:I

.field public dtc_index:I

.field public dtc_state:I

.field public hour:I

.field public minute:I

.field public month:I

.field public motorSpeed:I

.field public odoMeter:I

.field public sec:I

.field public vehicleSpeed:I

.field public voltage:I

.field public year:I


# direct methods
.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->dtc_index:I

    .line 283
    iput p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->dtc_state:I

    .line 284
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->vehicleSpeed:I

    .line 285
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->motorSpeed:I

    .line 286
    iput p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->voltage:I

    .line 287
    iput p6, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->odoMeter:I

    .line 288
    iput p7, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->year:I

    .line 289
    iput p8, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->month:I

    .line 290
    iput p9, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->day:I

    .line 291
    iput p10, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->hour:I

    .line 292
    iput p11, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->minute:I

    .line 293
    iput p12, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->sec:I

    return-void
.end method

.method public static valueOf([B)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;
    .locals 14

    const/4 v0, 0x0

    .line 297
    aget-byte v2, p0, v0

    const/4 v0, 0x1

    .line 298
    aget-byte v3, p0, v0

    const/4 v0, 0x2

    .line 299
    aget-byte v0, p0, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v0

    const/4 v0, 0x4

    .line 300
    aget-byte v0, p0, v0

    shl-int/2addr v0, v1

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v0

    const/4 v0, 0x6

    .line 301
    aget-byte v0, p0, v0

    and-int/lit16 v6, v0, 0xff

    const/4 v0, 0x7

    .line 302
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    aget-byte v7, p0, v1

    shl-int/lit8 v1, v7, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    or-int v7, v0, v1

    const/16 v0, 0xa

    .line 303
    aget-byte v0, p0, v0

    and-int/lit16 v8, v0, 0xff

    const/16 v0, 0xb

    .line 304
    aget-byte v0, p0, v0

    and-int/lit16 v9, v0, 0xff

    const/16 v0, 0xc

    .line 305
    aget-byte v0, p0, v0

    and-int/lit16 v10, v0, 0xff

    const/16 v0, 0xd

    .line 306
    aget-byte v0, p0, v0

    and-int/lit16 v11, v0, 0xff

    const/16 v0, 0xe

    .line 307
    aget-byte v0, p0, v0

    and-int/lit16 v12, v0, 0xff

    const/16 v0, 0xf

    .line 308
    aget-byte p0, p0, v0

    and-int/lit16 v13, p0, 0xff

    .line 309
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;-><init>(IIIIIIIIIIII)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorCodeInfo{dtc_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->dtc_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dtc_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->dtc_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->vehicleSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", motorSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->motorSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", odoMeter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->odoMeter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;->sec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
