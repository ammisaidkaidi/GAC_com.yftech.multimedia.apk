.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WCLCMWorkModeCtl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 622
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    .line 623
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    .line 624
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    const/4 v0, 0x3

    .line 621
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 627
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 628
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;
    .locals 1

    .line 632
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-object p0

    .line 633
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-object p0

    .line 634
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;
    .locals 1

    .line 621
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;
    .locals 1

    .line 621
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;

    return-object v0
.end method
