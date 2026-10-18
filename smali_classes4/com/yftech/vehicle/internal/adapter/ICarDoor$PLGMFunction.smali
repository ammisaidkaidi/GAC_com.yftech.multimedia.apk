.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLGMFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

.field public static final enum DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

.field public static final enum ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

.field public static final enum FUNCTION_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 109
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    const-string v1, "FUNCTION_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->FUNCTION_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    .line 110
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    const-string v1, "ENABLE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    .line 111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    .line 112
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    const/4 v0, 0x4

    .line 108
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->FUNCTION_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;
    .locals 1

    .line 120
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->FUNCTION_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->FUNCTION_1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object p0

    .line 121
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object p0

    .line 122
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object p0

    .line 123
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;
    .locals 1

    .line 108
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;
    .locals 1

    .line 108
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;

    return-object v0
.end method
