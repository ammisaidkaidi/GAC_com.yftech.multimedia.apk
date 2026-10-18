.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CupholderHeatCoolMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

.field public static final enum COOL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

.field public static final enum HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 287
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    .line 288
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const-string v1, "HEAT_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    .line 289
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const-string v1, "COOL_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->COOL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    .line 290
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const-string v1, "NO_COMMAND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    .line 291
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    const/4 v0, 0x5

    .line 286
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->COOL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;
    .locals 1

    .line 299
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0

    .line 300
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0

    .line 301
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->COOL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->COOL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0

    .line 302
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0

    .line 303
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;
    .locals 1

    .line 286
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;
    .locals 1

    .line 286
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    return-object v0
.end method
