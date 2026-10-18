.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AcDisplayPopup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum ACMAX:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum ACST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum AUTO_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum CIRCULATION_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum DRIVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum FDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum ION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum NOT_REQUEST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum ON_OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum PASSENGER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum RDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum SYNC:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum WIND_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum WIND_MODE_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 223
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "SYNC"

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->SYNC:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 224
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "ION"

    const/16 v4, 0xc

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 225
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "ACMAX"

    const/16 v6, 0xb

    const/4 v7, 0x2

    invoke-direct {v0, v1, v7, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACMAX:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 226
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "WIND_MODE_FRONT"

    const/16 v8, 0xa

    const/4 v9, 0x3

    invoke-direct {v0, v1, v9, v8}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_MODE_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 227
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "RDEFROST"

    const/16 v10, 0x9

    const/4 v11, 0x4

    invoke-direct {v0, v1, v11, v10}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->RDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 228
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "FDEFROST"

    const/16 v12, 0x8

    const/4 v13, 0x5

    invoke-direct {v0, v1, v13, v12}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->FDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 229
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "CIRCULATION_MODE"

    const/4 v14, 0x7

    const/4 v15, 0x6

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->CIRCULATION_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 230
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "ACST"

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 231
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "AUTO_FRONT"

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->AUTO_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 232
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "WIND_FRONT"

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 233
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "PASSENGER_TEMPERATURE"

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->PASSENGER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 234
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "DRIVER_TEMPERATURE"

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->DRIVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 235
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "ON_OFF"

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ON_OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 236
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "NOT_REQUEST"

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->NOT_REQUEST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    .line 237
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const-string v1, "__UNKNOWN__"

    const/16 v2, 0xe

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const/16 v0, 0xf

    .line 222
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->SYNC:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACMAX:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_MODE_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->RDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->FDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->CIRCULATION_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v15

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v14

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->AUTO_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->PASSENGER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->DRIVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ON_OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->NOT_REQUEST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;
    .locals 1

    .line 245
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->SYNC:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->SYNC:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 246
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 247
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACMAX:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACMAX:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 248
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_MODE_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_MODE_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 249
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->RDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->RDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 250
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->FDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->FDEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 251
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->CIRCULATION_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->CIRCULATION_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 252
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ACST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 253
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->AUTO_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->AUTO_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 254
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->WIND_FRONT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 255
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->PASSENGER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->PASSENGER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 256
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->DRIVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->DRIVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 257
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ON_OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->ON_OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 258
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->NOT_REQUEST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->NOT_REQUEST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0

    .line 259
    :cond_d
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;
    .locals 1

    .line 222
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;
    .locals 1

    .line 222
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    return-object v0
.end method
