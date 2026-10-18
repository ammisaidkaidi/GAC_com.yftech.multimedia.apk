.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecondRowSeatsWelcome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

.field public static final enum RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

.field public static final enum RL_PLUSRR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

.field public static final enum RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1550
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    .line 1552
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const-string v1, "RL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    .line 1554
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const-string v1, "RR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    .line 1556
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const-string v1, "RL_PLUSRR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL_PLUSRR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    .line 1557
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    const/4 v0, 0x5

    .line 1548
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL_PLUSRR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1561
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;
    .locals 1

    .line 1565
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0

    .line 1566
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0

    .line 1567
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0

    .line 1568
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL_PLUSRR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->RL_PLUSRR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0

    .line 1569
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;
    .locals 1

    .line 1548
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;
    .locals 1

    .line 1548
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    return-object v0
.end method
