.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerFlowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum ENGINE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum EV:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum HEV_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum HEV_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum IDLE_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum RANGE_EXTEND_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum RANGE_EXTEND_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum RANGE_EXTEND_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum REGENERATION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum VEHICLE_INITIAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum VEHICLE_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "VEHICLE_INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_INITIAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "VEHICLE_STANDBY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "IDLE_CHARGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->IDLE_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "EV"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->EV:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "RANGE_EXTEND_MODE1"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "RANGE_EXTEND_MODE2"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 20
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "ENGINE_MODE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->ENGINE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 21
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "HEV_MODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 22
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "REGENERATION_MODE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->REGENERATION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 23
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "RANGE_EXTEND_MODE3"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 24
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "HEV_MODE2"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    .line 25
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    const/16 v0, 0xc

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_INITIAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->IDLE_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->EV:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->ENGINE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->REGENERATION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_INITIAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_INITIAL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->VEHICLE_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 35
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->IDLE_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->IDLE_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 36
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->EV:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->EV:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 37
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 38
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 39
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->ENGINE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->ENGINE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 40
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 41
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->REGENERATION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->REGENERATION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 42
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->RANGE_EXTEND_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 43
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->HEV_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0

    .line 44
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    return-object v0
.end method
