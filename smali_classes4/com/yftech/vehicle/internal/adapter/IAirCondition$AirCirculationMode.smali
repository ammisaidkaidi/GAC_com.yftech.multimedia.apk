.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirCirculationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

.field public static final enum AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

.field public static final enum MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 148
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    .line 149
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    const-string v1, "MANUAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    .line 150
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    const/4 v0, 0x3

    .line 147
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->rx:I

    .line 156
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->tx:I

    .line 157
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;
    .locals 1

    .line 161
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-object p0

    .line 162
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-object p0

    .line 163
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;
    .locals 1

    .line 147
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;
    .locals 1

    .line 147
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    return-object v0
.end method
