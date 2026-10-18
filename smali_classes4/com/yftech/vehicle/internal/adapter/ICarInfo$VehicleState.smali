.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum AUTO_ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum AUTO_START:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum CUTOFF_PENDING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum ENGINE_SYSTEM_STOP:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum IGNITION_LEVEL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum POWER_TRAIN_RUNNING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum SLEEPING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum STARTING_IN_PROGRESS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 215
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "SLEEPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->SLEEPING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 216
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "CUTOFF_PENDING"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->CUTOFF_PENDING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 218
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "AUTO_ACC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 219
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "IGNITION_LEVEL"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->IGNITION_LEVEL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 220
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "STARTING_IN_PROGRESS"

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->STARTING_IN_PROGRESS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 221
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "POWER_TRAIN_RUNNING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v6, v9}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->POWER_TRAIN_RUNNING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 222
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "AUTO_START"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v8, v10}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_START:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 223
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "ENGINE_SYSTEM_STOP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v9, v11}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->ENGINE_SYSTEM_STOP:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 224
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "UNAVAILABLE"

    const/16 v12, 0xf

    invoke-direct {v0, v1, v10, v12}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    .line 225
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const-string v1, "__UNKNOWN__"

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    const/16 v0, 0xa

    .line 214
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->SLEEPING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->CUTOFF_PENDING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->IGNITION_LEVEL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->STARTING_IN_PROGRESS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->POWER_TRAIN_RUNNING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_START:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->ENGINE_SYSTEM_STOP:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;
    .locals 1

    .line 233
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->SLEEPING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->SLEEPING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 234
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->CUTOFF_PENDING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->CUTOFF_PENDING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 235
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 236
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->IGNITION_LEVEL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->IGNITION_LEVEL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 237
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->STARTING_IN_PROGRESS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->STARTING_IN_PROGRESS:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 238
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->POWER_TRAIN_RUNNING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->POWER_TRAIN_RUNNING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 239
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_START:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->AUTO_START:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 240
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->ENGINE_SYSTEM_STOP:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->ENGINE_SYSTEM_STOP:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 241
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0

    .line 242
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;
    .locals 1

    .line 214
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;
    .locals 1

    .line 214
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    return-object v0
.end method
