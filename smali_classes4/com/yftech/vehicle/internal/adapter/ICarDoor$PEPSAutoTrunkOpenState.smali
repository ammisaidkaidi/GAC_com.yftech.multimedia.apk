.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PEPSAutoTrunkOpenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

.field public static final enum SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

.field public static final enum SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    const-string v1, "SATO_ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    const-string v1, "SATO_AND_SOUNDREMINDER_ACTIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->rx:I

    .line 46
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->tx:I

    .line 47
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;
    .locals 1

    .line 51
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object p0

    .line 52
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object p0

    .line 53
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object p0

    .line 54
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;
    .locals 1

    .line 36
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;
    .locals 1

    .line 36
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    return-object v0
.end method
