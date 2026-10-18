.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;
.super Ljava/lang/Enum;
.source "ICarLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WelLightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

.field public static final enum DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

.field public static final enum MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

.field public static final enum MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

.field public static final enum MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const-string v1, "MODLE1"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const-string v1, "MODEL2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const-string v1, "MODLE3"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    .line 46
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const-string v1, "__UNKNOWN__"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    const/4 v0, 0x5

    .line 41
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->rx:I

    .line 52
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->tx:I

    .line 53
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;
    .locals 1

    .line 57
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0

    .line 58
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0

    .line 59
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0

    .line 60
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0

    .line 61
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;
    .locals 1

    .line 41
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;
    .locals 1

    .line 41
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    return-object v0
.end method
