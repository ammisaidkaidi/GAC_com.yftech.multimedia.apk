.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSRMRAngleCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

.field public static final enum BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

.field public static final enum LEFT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

.field public static final enum RIGHT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 509
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    .line 510
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const-string v1, "LEFT_MIRROR_DIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->LEFT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    .line 511
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const-string v1, "RIGHT_MIRROR_DIP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->RIGHT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    .line 512
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const-string v1, "BOTH_MIRROR_DIP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    .line 513
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    const/4 v0, 0x5

    .line 508
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->LEFT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->RIGHT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 517
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 518
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->rx:I

    .line 519
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->tx:I

    .line 520
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;
    .locals 1

    .line 524
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0

    .line 525
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->LEFT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->LEFT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0

    .line 526
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->RIGHT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->RIGHT_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0

    .line 527
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0

    .line 528
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;
    .locals 1

    .line 508
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;
    .locals 1

    .line 508
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    return-object v0
.end method
