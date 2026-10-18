.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TcuDriveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum HIGH_ALTITUDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum OFF_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum TIPTRONIC:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum WUSP:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 255
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 257
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "SPORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 259
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "WINTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 261
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "UPSLOPE_ONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 263
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "HOT_ONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 265
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "UPSLOPE_TWO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 267
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "HOT_TWO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 269
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "WUSP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WUSP:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 271
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "CRUISE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 273
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "TIPTRONIC"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->TIPTRONIC:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 275
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "ECO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 277
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "HIGH_ALTITUDE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HIGH_ALTITUDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 279
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "SPORT_PLUS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 281
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "OFF_ROAD"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->OFF_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 282
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const-string v1, "__UNKNOWN__"

    const/16 v15, 0xe

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/16 v0, 0xf

    .line 253
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WUSP:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->TIPTRONIC:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HIGH_ALTITUDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->OFF_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v1, v0, v15

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 286
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;
    .locals 1

    .line 290
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 291
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 292
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 293
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 294
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 295
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 296
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 297
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WUSP:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->WUSP:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 298
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 299
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->TIPTRONIC:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->TIPTRONIC:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 300
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 301
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HIGH_ALTITUDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HIGH_ALTITUDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 302
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 303
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->OFF_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->OFF_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0

    .line 304
    :cond_d
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;
    .locals 1

    .line 253
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;
    .locals 1

    .line 253
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    return-object v0
.end method
