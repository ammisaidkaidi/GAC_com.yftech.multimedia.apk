.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

.field public static final enum EV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

.field public static final enum HEV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

.field public static final enum TRADITIONAL_CAR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

.field public static final enum TRADITIONAL_CAR_MASTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 326
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const-string v1, "TRADITIONAL_CAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    .line 328
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const-string v1, "EV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->EV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    .line 330
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const-string v1, "HEV"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->HEV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    .line 332
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const-string v1, "TRADITIONAL_CAR_MASTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR_MASTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    .line 333
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    const/4 v0, 0x5

    .line 324
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->EV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->HEV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR_MASTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 337
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;
    .locals 1

    .line 341
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0

    .line 342
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->EV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->EV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0

    .line 343
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->HEV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->HEV:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0

    .line 344
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR_MASTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->TRADITIONAL_CAR_MASTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0

    .line 345
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;
    .locals 1

    .line 324
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;
    .locals 1

    .line 324
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$VehicleType;

    return-object v0
.end method
