.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComfortCurveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field public static final enum FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field public static final enum SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 171
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    const-string v1, "SOFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    .line 172
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    .line 173
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    const-string v1, "FAST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    .line 174
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    const/4 v0, 0x4

    .line 170
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->rx:I

    .line 180
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->tx:I

    .line 181
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;
    .locals 1

    .line 185
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object p0

    .line 186
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object p0

    .line 187
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object p0

    .line 188
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;
    .locals 1

    .line 170
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;
    .locals 1

    .line 170
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    return-object v0
.end method
