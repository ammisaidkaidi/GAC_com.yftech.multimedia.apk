.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TailDoorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum HOLD:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum TG_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 178
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "FULLY_OPENED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 179
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "FULLY_CLOSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 180
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "OPENING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 181
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "CLOSING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 182
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "HOLD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->HOLD:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 183
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "TG_BRAKE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->TG_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    .line 184
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const-string v1, "__UNKNOWN__"

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const/4 v0, 0x7

    .line 177
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->HOLD:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->TG_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 1

    .line 192
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 193
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 194
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 195
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 196
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->HOLD:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->HOLD:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 197
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->TG_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->TG_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0

    .line 198
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 1

    .line 177
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 1

    .line 177
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object v0
.end method
