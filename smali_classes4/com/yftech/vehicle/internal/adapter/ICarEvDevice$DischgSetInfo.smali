.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DischgSetInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

.field public static final enum LOWER_OIL_SET_ENGINE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

.field public static final enum LOWER_THAN_SET_DISCHARGE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

.field public static final enum NO_INFORMATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

.field public static final enum SET_SUCCEED_DISCHARGE_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 472
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const-string v1, "NO_INFORMATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->NO_INFORMATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    .line 473
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const-string v1, "SET_SUCCEED_DISCHARGE_ALLOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->SET_SUCCEED_DISCHARGE_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    .line 474
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const-string v1, "LOWER_THAN_SET_DISCHARGE_NOT_ALLOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_THAN_SET_DISCHARGE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    .line 475
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const-string v1, "LOWER_OIL_SET_ENGINE_NOT_ALLOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_OIL_SET_ENGINE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    .line 476
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    const/4 v0, 0x5

    .line 471
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->NO_INFORMATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->SET_SUCCEED_DISCHARGE_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_THAN_SET_DISCHARGE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_OIL_SET_ENGINE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 480
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;
    .locals 1

    .line 484
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->NO_INFORMATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->NO_INFORMATION:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0

    .line 485
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->SET_SUCCEED_DISCHARGE_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->SET_SUCCEED_DISCHARGE_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0

    .line 486
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_THAN_SET_DISCHARGE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_THAN_SET_DISCHARGE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0

    .line 487
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_OIL_SET_ENGINE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->LOWER_OIL_SET_ENGINE_NOT_ALLOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0

    .line 488
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;
    .locals 1

    .line 471
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;
    .locals 1

    .line 471
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    return-object v0
.end method
