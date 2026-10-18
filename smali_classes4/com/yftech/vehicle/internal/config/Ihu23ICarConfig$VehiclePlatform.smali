.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehiclePlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

.field public static final enum A29_Y:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 376
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->NONE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    .line 378
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    const-string v1, "A29_Y"

    const/4 v3, 0x1

    const/16 v4, 0x4d

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->A29_Y:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    .line 379
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    const/4 v0, 0x3

    .line 374
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->NONE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->A29_Y:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;
    .locals 1

    .line 387
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->NONE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->NONE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-object p0

    .line 388
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->A29_Y:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->A29_Y:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-object p0

    .line 389
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;
    .locals 1

    .line 374
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;
    .locals 1

    .line 374
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehiclePlatform;

    return-object v0
.end method
