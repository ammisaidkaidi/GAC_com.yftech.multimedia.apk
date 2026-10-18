.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnergyModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

.field public static final enum ELECTICITY_CONSERVATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

.field public static final enum ELECTICITY_DRIVE_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

.field public static final enum INTELLIGENT_HYBRID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 346
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    .line 347
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const-string v1, "INTELLIGENT_HYBRID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->INTELLIGENT_HYBRID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    .line 348
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const-string v1, "ELECTICITY_DRIVE_FIRST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_DRIVE_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    .line 349
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const-string v1, "ELECTICITY_CONSERVATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_CONSERVATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    .line 350
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    const/4 v0, 0x5

    .line 345
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->INTELLIGENT_HYBRID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_DRIVE_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_CONSERVATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 354
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;
    .locals 1

    .line 358
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0

    .line 359
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->INTELLIGENT_HYBRID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->INTELLIGENT_HYBRID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0

    .line 360
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_DRIVE_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_DRIVE_FIRST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0

    .line 361
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_CONSERVATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->ELECTICITY_CONSERVATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0

    .line 362
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;
    .locals 1

    .line 345
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;
    .locals 1

    .line 345
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    return-object v0
.end method
