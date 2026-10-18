.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLGMControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

.field public static final enum CONTROL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    const-string v1, "CONTROL_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->CONTROL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    .line 80
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    const-string v1, "__UNKNOWN__"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->CONTROL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;
    .locals 1

    .line 88
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->CONTROL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->CONTROL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    return-object p0

    .line 89
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;
    .locals 1

    .line 78
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;
    .locals 1

    .line 78
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;

    return-object v0
.end method
