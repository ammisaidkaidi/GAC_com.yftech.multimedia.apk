.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
.super Ljava/lang/Enum;
.source "ICarPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum PRE_SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "STANDBY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "SYSTEMON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "SLEEP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "VOLFAULTSTBY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 21
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "TEST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 23
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "TEN_MIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 25
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "PRE_SLEEP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->PRE_SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 26
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const-string v1, "__UNKNOWN__"

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    const/16 v0, 0x8

    .line 11
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->PRE_SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 1

    .line 34
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 35
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 36
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 37
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 38
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEST:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 39
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 40
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->PRE_SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->PRE_SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0

    .line 41
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 1

    .line 11
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 1

    .line 11
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object v0
.end method
