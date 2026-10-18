.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GearPositionA9E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 163
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    .line 165
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "DRIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    .line 167
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "NEUTRAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    .line 169
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "REVERSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    .line 171
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "PARKING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    .line 172
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    const/4 v0, 0x6

    .line 161
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;
    .locals 1

    .line 180
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0

    .line 181
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0

    .line 182
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0

    .line 183
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0

    .line 184
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0

    .line 185
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;
    .locals 1

    .line 161
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;
    .locals 1

    .line 161
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    return-object v0
.end method
