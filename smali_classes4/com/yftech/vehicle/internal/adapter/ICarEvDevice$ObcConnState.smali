.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObcConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

.field public static final enum CONNECTED_CHARGING_V2V:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

.field public static final enum CONNECTED_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

.field public static final enum DISCONNECTED:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

.field public static final enum HALF_CONNECTED_CHARGING_V2V_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 496
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->DISCONNECTED:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    .line 497
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const-string v1, "HALF_CONNECTED_CHARGING_V2V_V2L"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->HALF_CONNECTED_CHARGING_V2V_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    .line 498
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const-string v1, "CONNECTED_CHARGING_V2V"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_CHARGING_V2V:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    .line 499
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const-string v1, "CONNECTED_V2L"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    .line 500
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    const/4 v0, 0x5

    .line 495
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->DISCONNECTED:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->HALF_CONNECTED_CHARGING_V2V_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_CHARGING_V2V:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 504
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;
    .locals 1

    .line 508
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->DISCONNECTED:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->DISCONNECTED:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0

    .line 509
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->HALF_CONNECTED_CHARGING_V2V_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->HALF_CONNECTED_CHARGING_V2V_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0

    .line 510
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_CHARGING_V2V:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_CHARGING_V2V:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0

    .line 511
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->CONNECTED_V2L:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0

    .line 512
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;
    .locals 1

    .line 495
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;
    .locals 1

    .line 495
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    return-object v0
.end method
