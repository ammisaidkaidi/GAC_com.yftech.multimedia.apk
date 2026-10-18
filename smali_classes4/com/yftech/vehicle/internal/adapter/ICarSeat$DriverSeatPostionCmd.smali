.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriverSeatPostionCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

.field public static final enum RECALL:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

.field public static final enum SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 330
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    .line 331
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    const-string v1, "RECALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    .line 332
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    const/4 v0, 0x3

    .line 329
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;
    .locals 1

    .line 340
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-object p0

    .line 341
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-object p0

    .line 342
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;
    .locals 1

    .line 329
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;
    .locals 1

    .line 329
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;

    return-object v0
.end method
