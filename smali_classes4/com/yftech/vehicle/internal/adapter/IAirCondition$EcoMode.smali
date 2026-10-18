.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EcoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

.field public static final enum COMFORT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

.field public static final enum ECONOMY:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

.field public static final enum VENT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 196
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const-string v1, "COMFORT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->COMFORT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    .line 197
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const-string v1, "ECONOMY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->ECONOMY:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    .line 198
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const-string v1, "VENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->VENT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    .line 199
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const-string v1, "INVALID"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    .line 200
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    const/4 v0, 0x5

    .line 195
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->COMFORT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->ECONOMY:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->VENT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 205
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->rx:I

    .line 206
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->tx:I

    .line 207
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;
    .locals 1

    .line 211
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->COMFORT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->COMFORT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0

    .line 212
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->ECONOMY:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->ECONOMY:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0

    .line 213
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->VENT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->VENT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0

    .line 214
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0

    .line 215
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;
    .locals 1

    .line 195
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;
    .locals 1

    .line 195
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    return-object v0
.end method
