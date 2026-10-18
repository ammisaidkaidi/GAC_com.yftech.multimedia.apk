.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleModeBroadcast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

.field public static final enum OTA:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 292
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    .line 293
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    const-string v1, "OTA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->OTA:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    .line 294
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    const/4 v0, 0x3

    .line 291
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->OTA:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 298
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;
    .locals 1

    .line 302
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-object p0

    .line 303
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->OTA:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->OTA:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-object p0

    .line 304
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;
    .locals 1

    .line 291
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;
    .locals 1

    .line 291
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    return-object v0
.end method
