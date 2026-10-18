.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlidingDoorCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

.field public static final enum CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 236
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    const-string v1, "STOP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    .line 237
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    const-string v1, "OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    .line 238
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    const-string v1, "CLOSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    .line 239
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    const/4 v0, 0x4

    .line 235
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 243
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;
    .locals 1

    .line 247
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object p0

    .line 248
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object p0

    .line 249
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object p0

    .line 250
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;
    .locals 1

    .line 235
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;
    .locals 1

    .line 235
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    return-object v0
.end method
