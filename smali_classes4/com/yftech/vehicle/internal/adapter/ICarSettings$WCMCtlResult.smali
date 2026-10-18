.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WCMCtlResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

.field public static final enum DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

.field public static final enum ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

.field public static final enum SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 560
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    .line 561
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    const-string v1, "DISABLED_BY_PEPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    .line 562
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    const-string v1, "SHUTDOWN_BY_SWITCH_CAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    .line 563
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    const/4 v0, 0x4

    .line 559
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 567
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;
    .locals 1

    .line 571
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object p0

    .line 572
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object p0

    .line 573
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object p0

    .line 574
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;
    .locals 1

    .line 559
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;
    .locals 1

    .line 559
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    return-object v0
.end method
