.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MrrAccMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum ACTIVE_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum BRAKE_ONLY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum OVER_RIDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum STAND_WAIT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 445
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 447
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "PASSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 449
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "STANDBY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 451
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "ACTIVE_CONTROL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->ACTIVE_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 453
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "BRAKE_ONLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->BRAKE_ONLY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 455
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "OVER_RIDE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OVER_RIDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 457
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "STAND_WAIT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STAND_WAIT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 459
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "FAILURE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    .line 460
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const-string v1, "__UNKNOWN__"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    const/16 v0, 0x9

    .line 443
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->ACTIVE_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->BRAKE_ONLY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OVER_RIDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STAND_WAIT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 464
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;
    .locals 1

    .line 468
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 469
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 470
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 471
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->ACTIVE_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->ACTIVE_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 472
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->BRAKE_ONLY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->BRAKE_ONLY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 473
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OVER_RIDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->OVER_RIDE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 474
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STAND_WAIT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->STAND_WAIT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 475
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0

    .line 476
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;
    .locals 1

    .line 443
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;
    .locals 1

    .line 443
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;

    return-object v0
.end method
