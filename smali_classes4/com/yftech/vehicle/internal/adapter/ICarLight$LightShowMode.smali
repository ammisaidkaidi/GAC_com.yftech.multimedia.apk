.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;
.super Ljava/lang/Enum;
.source "ICarLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

.field public static final enum MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

.field public static final enum MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

.field public static final enum MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const-string v1, "MODLE1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const-string v1, "MODEL2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const-string v1, "MODLE3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    const/4 v0, 0x5

    .line 90
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->rx:I

    .line 101
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->tx:I

    .line 102
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;
    .locals 1

    .line 106
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0

    .line 107
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0

    .line 108
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODEL2:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0

    .line 109
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->MODLE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0

    .line 110
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;
    .locals 1

    .line 90
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    return-object v0
.end method
