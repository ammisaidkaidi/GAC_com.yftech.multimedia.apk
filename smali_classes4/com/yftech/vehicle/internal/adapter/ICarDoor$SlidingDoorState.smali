.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlidingDoorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field public static final enum FULL_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field public static final enum FULL_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field public static final enum HALF_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field public static final enum LATCH_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 282
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const-string v1, "FULL_LATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    .line 283
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const-string v1, "HALF_LATCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->HALF_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    .line 284
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const-string v1, "LATCH_OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->LATCH_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    .line 285
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const-string v1, "FULL_OPEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    .line 286
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    const/4 v0, 0x5

    .line 281
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->HALF_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->LATCH_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 1

    .line 294
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0

    .line 295
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->HALF_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->HALF_LATCH:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0

    .line 296
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->LATCH_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->LATCH_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0

    .line 297
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->FULL_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0

    .line 298
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 1

    .line 281
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 1

    .line 281
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object v0
.end method
