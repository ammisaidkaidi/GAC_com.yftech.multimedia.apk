.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GearPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum CONFIRMED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum DS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_EIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_FIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_FOUR:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_NINE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_SEVEN:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_SIX:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_THIRD:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum GEAR_TOW:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum L:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum NOT_AVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 87
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_FIRST"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_TOW"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_TOW:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_THIRD"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_THIRD:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_FOUR"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FOUR:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_FIVE"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 97
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_SIX"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SIX:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_SEVEN"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SEVEN:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 101
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_EIGHT"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_EIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 103
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "GEAR_NINE"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_NINE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 105
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "SPORT"

    const/16 v11, 0xb

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 107
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "PARKING"

    const/16 v12, 0xc

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v12}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 109
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "REVERSE"

    const/16 v13, 0xd

    invoke-direct {v0, v1, v11, v13}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "NEUTRAL"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v12, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 113
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "DRIVE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v13, v15}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 115
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "MANUAL_MODE"

    const/16 v13, 0x10

    invoke-direct {v0, v1, v14, v13}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 117
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "L"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->L:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 119
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "DS"

    const/16 v14, 0x12

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 121
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "CONFIRMED"

    const/16 v14, 0x11

    const/16 v13, 0x13

    invoke-direct {v0, v1, v14, v13}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->CONFIRMED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 123
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "BRAKE"

    const/16 v13, 0x12

    const/16 v14, 0x14

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 125
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "NOT_AVAILABLE"

    const/16 v13, 0x13

    const/16 v14, 0x15

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NOT_AVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 126
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0x14

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v0, 0x15

    .line 85
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/4 v13, 0x0

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_TOW:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_THIRD:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FOUR:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SIX:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SEVEN:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_EIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_NINE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->L:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    aput-object v1, v0, v15

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->CONFIRMED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NOT_AVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 1

    .line 134
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 135
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_TOW:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_TOW:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 136
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_THIRD:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_THIRD:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 137
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FOUR:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FOUR:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 138
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_FIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 139
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SIX:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SIX:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 140
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SEVEN:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_SEVEN:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 141
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_EIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_EIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 142
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_NINE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->GEAR_NINE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 143
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 144
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 145
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 146
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 147
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 148
    :cond_d
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 149
    :cond_e
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->L:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_f

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->L:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 150
    :cond_f
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_10

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->DS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 151
    :cond_10
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->CONFIRMED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_11

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->CONFIRMED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 152
    :cond_11
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_12

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 153
    :cond_12
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NOT_AVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->value:I

    if-ne p0, v0, :cond_13

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NOT_AVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0

    .line 154
    :cond_13
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 1

    .line 85
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 1

    .line 85
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object v0
.end method
