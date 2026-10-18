.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADASWarnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

.field public static final enum BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

.field public static final enum SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

.field public static final enum SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    const-string v1, "SOUND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    .line 90
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    const-string v1, "SEAT_VIBRATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    const-string v1, "BOTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    const/4 v0, 0x4

    .line 88
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->rx:I

    .line 98
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->tx:I

    .line 99
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;
    .locals 1

    .line 103
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object p0

    .line 104
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object p0

    .line 105
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object p0

    .line 106
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;
    .locals 1

    .line 88
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;
    .locals 1

    .line 88
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    return-object v0
.end method
