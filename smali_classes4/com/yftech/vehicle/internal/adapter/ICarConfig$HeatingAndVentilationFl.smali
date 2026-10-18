.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeatingAndVentilationFl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

.field public static final enum HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

.field public static final enum VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

.field public static final enum VENTILATION_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1438
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    .line 1440
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const-string v1, "VENTILATION_HEATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    .line 1442
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const-string v1, "VENTILATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    .line 1444
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const-string v1, "HEATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    .line 1445
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    const/4 v0, 0x5

    .line 1436
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1449
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;
    .locals 1

    .line 1453
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0

    .line 1454
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0

    .line 1455
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0

    .line 1456
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0

    .line 1457
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;
    .locals 1

    .line 1436
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;
    .locals 1

    .line 1436
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    return-object v0
.end method
