.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

.field public static final enum CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 131
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    .line 132
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    const-string v1, "OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    .line 133
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    const/4 v0, 0x3

    .line 130
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    .line 141
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-object p0

    .line 142
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-object p0

    .line 143
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    .line 130
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;
    .locals 1

    .line 130
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    return-object v0
.end method
