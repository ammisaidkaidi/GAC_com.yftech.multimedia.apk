.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeatVentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

.field public static final enum HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

.field public static final enum VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    const-string v1, "VENT_MODE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    const-string v1, "HEAT_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;
    .locals 1

    .line 77
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object p0

    .line 78
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object p0

    .line 79
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object p0

    .line 80
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;
    .locals 1

    .line 65
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    return-object v0
.end method
