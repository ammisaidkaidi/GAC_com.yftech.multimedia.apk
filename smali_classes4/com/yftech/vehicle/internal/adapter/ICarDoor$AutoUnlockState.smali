.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoUnlockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

.field public static final enum NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 151
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    .line 152
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    .line 153
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const-string v1, "NOT_USED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    .line 154
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const-string v1, "NO_COMMAND"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    .line 155
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    const/4 v0, 0x5

    .line 150
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->rx:I

    .line 161
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->tx:I

    .line 162
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;
    .locals 1

    .line 166
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0

    .line 167
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0

    .line 168
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0

    .line 169
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0

    .line 170
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;
    .locals 1

    .line 150
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;
    .locals 1

    .line 150
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    return-object v0
.end method
