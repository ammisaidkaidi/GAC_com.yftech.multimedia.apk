.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChargState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

.field public static final enum BLANK_MODULE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

.field public static final enum CHARGE_CURRENT_VOLTAGE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 412
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    const-string v1, "CHARGE_CURRENT_VOLTAGE_INTERFACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->CHARGE_CURRENT_VOLTAGE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    .line 413
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    const-string v1, "BLANK_MODULE_INTERFACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->BLANK_MODULE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    .line 414
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    const/4 v0, 0x3

    .line 411
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->CHARGE_CURRENT_VOLTAGE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->BLANK_MODULE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 418
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;
    .locals 1

    .line 422
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->CHARGE_CURRENT_VOLTAGE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->CHARGE_CURRENT_VOLTAGE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-object p0

    .line 423
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->BLANK_MODULE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->BLANK_MODULE_INTERFACE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-object p0

    .line 424
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;
    .locals 1

    .line 411
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;
    .locals 1

    .line 411
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    return-object v0
.end method
