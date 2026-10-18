.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSWOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum CUSHION_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum CUSHION_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum STEERING_WHEEL_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum STEERING_WHEEL_IN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum STEERING_WHEEL_OUT:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum STEERING_WHEEL_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "SLIDE_FORWARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "SLIDE_BACKWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "CUSHION_RISE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "CUSHION_DOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 97
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "BACKREST_FORWARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "BACKREST_BACKWARD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 101
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "TILT_RISE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 103
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "TILT_DOWN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 105
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "STEERING_WHEEL_UP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 107
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "STEERING_WHEEL_DOWN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 109
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "STEERING_WHEEL_OUT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_OUT:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "STEERING_WHEEL_IN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_IN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 113
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "CUSHION_FORWARD"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 115
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "CUSHION_BACKWARD"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 116
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const-string v1, "__UNKNOWN__"

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const/16 v0, 0xf

    .line 87
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_OUT:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_IN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    aput-object v1, v0, v14

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;
    .locals 1

    .line 124
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 125
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 126
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 127
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 128
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 129
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 130
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 131
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 132
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 133
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 134
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_OUT:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_OUT:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 135
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_IN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->STEERING_WHEEL_IN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 136
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 137
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0

    .line 138
    :cond_d
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;
    .locals 1

    .line 87
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;
    .locals 1

    .line 87
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object v0
.end method
