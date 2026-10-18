.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;
.super Ljava/lang/Enum;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DashBoardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

.field public static final enum MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

.field public static final enum MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

.field public static final enum QNX_SOCKET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

.field public static final enum UNKNOWN:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    .line 54
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    const-string v1, "MCU_CA1105"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    .line 56
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    const-string v1, "QNX_SOCKET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->QNX_SOCKET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    .line 58
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    const-string v1, "MCU_IHU12"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->QNX_SOCKET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;
    .locals 1

    .line 60
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->QNX_SOCKET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->QNX_SOCKET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object p0

    .line 62
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_IHU12:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object p0

    .line 63
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;
    .locals 1

    .line 50
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;
    .locals 1

    .line 50
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-object v0
.end method
