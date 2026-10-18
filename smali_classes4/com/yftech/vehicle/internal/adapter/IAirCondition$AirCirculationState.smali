.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirCirculationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum AUTO_INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum AUTO_OUT_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 77
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "INNER_AIR_CIRCULATION"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    .line 78
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "OUTSIDE_AIR_CIRCULATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    .line 79
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "AUTO_INNER_AIR_CIRCULATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    .line 80
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "AUTO_OUT_AIR_CIRCULATION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_OUT_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    .line 82
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    const/4 v0, 0x6

    .line 76
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_OUT_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0

    .line 91
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0

    .line 92
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0

    .line 93
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0

    .line 94
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_OUT_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->AUTO_OUT_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0

    .line 95
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;
    .locals 1

    .line 76
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;
    .locals 1

    .line 76
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    return-object v0
.end method
