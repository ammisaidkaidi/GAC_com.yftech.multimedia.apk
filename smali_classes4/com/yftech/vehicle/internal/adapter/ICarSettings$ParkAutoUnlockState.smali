.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParkAutoUnlockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 460
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    .line 461
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    .line 462
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    const/4 v0, 0x3

    .line 459
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 467
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->rx:I

    .line 468
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->tx:I

    .line 469
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;
    .locals 1

    .line 473
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-object p0

    .line 474
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-object p0

    .line 475
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;
    .locals 1

    .line 459
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;
    .locals 1

    .line 459
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;

    return-object v0
.end method
