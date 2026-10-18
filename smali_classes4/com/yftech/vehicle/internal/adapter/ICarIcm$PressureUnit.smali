.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PressureUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

.field public static final enum BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

.field public static final enum K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

.field public static final enum PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 74
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    const-string v1, "K_PA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    .line 75
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    const-string v1, "BAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    .line 76
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    const-string v1, "PSI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    .line 77
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    const/4 v0, 0x4

    .line 73
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->rx:I

    .line 83
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->tx:I

    .line 84
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;
    .locals 1

    .line 88
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object p0

    .line 89
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object p0

    .line 90
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object p0

    .line 91
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;
    .locals 1

    .line 73
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;
    .locals 1

    .line 73
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    return-object v0
.end method
