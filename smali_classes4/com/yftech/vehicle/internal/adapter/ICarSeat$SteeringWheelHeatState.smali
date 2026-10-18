.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SteeringWheelHeatState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

.field public static final enum HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

.field public static final enum PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 200
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    .line 201
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    const-string v1, "HEATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    .line 202
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    const-string v1, "PRESERVATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    .line 203
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    const/4 v0, 0x4

    .line 199
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;
    .locals 1

    .line 211
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object p0

    .line 212
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object p0

    .line 213
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object p0

    .line 214
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;
    .locals 1

    .line 199
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;
    .locals 1

    .line 199
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SteeringWheelHeatState;

    return-object v0
.end method
