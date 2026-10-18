.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FanSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

.field public static final enum HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

.field public static final enum LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 123
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    .line 124
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    .line 125
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    .line 126
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    const/4 v0, 0x4

    .line 122
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->rx:I

    .line 132
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->tx:I

    .line 133
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;
    .locals 1

    .line 137
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object p0

    .line 138
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object p0

    .line 139
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object p0

    .line 140
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;
    .locals 1

    .line 122
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;
    .locals 1

    .line 122
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    return-object v0
.end method
