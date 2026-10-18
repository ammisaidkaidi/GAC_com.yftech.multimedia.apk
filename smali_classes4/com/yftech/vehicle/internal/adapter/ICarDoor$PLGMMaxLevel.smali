.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLGMMaxLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;
    .locals 1

    .line 103
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    return-object p0

    .line 104
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;
    .locals 1

    .line 93
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;
    .locals 1

    .line 93
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;

    return-object v0
.end method
