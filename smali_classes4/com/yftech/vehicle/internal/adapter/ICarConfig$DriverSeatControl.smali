.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriverSeatControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

.field public static final enum EIGHT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

.field public static final enum SIX_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1646
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    .line 1648
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    const-string v1, "EIGHT_CONTROL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->EIGHT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    .line 1650
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    const-string v1, "SIX_CONTROL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->SIX_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    .line 1651
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    const/4 v0, 0x4

    .line 1644
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->EIGHT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->SIX_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1654
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1655
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
    .locals 1

    .line 1659
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object p0

    .line 1660
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->EIGHT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->EIGHT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object p0

    .line 1661
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->SIX_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->SIX_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object p0

    .line 1662
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
    .locals 1

    .line 1644
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
    .locals 1

    .line 1644
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    return-object v0
.end method
