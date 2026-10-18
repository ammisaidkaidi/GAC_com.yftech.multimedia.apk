.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoHoldState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

.field public static final enum STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 347
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    .line 349
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    .line 351
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const-string v1, "STANDBY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    .line 353
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    .line 354
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    const/4 v0, 0x5

    .line 345
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 358
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;
    .locals 1

    .line 362
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0

    .line 363
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0

    .line 364
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0

    .line 365
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0

    .line 366
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;
    .locals 1

    .line 345
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;
    .locals 1

    .line 345
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;

    return-object v0
.end method
