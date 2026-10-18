.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VentLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "ERROR"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "OFF"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    const/4 v0, 0x6

    .line 39
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    .line 53
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 54
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 55
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 56
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 57
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 58
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    .line 39
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object v0
.end method
