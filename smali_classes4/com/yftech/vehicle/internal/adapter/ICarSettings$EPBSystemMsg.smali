.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EPBSystemMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum CHECK_PARK_BRAKE_LOW_GRADIENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum CLAMPFORCE_NOT_ENOUGH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum FASTEN_SEATBELT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum NON_P_TO_RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum PARK_BRAKE_RELEASED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum PARK_BRAKE_SET:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum PARK_BRAKE_TESTING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 395
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 397
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "FASTEN_SEATBELT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->FASTEN_SEATBELT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 399
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "RELEASE_PARK_BRAKE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 401
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "CHECK_PARK_BRAKE_LOW_GRADIENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CHECK_PARK_BRAKE_LOW_GRADIENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 403
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "PARK_BRAKE_SET"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_SET:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 405
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "PARK_BRAKE_RELEASED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_RELEASED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 407
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "PARK_BRAKE_TESTING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_TESTING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 409
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "CLAMPFORCE_NOT_ENOUGH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CLAMPFORCE_NOT_ENOUGH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 411
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "NON_P_TO_RELEASE_PARK_BRAKE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->NON_P_TO_RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    .line 412
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    const/16 v0, 0xa

    .line 393
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->FASTEN_SEATBELT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CHECK_PARK_BRAKE_LOW_GRADIENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_SET:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_RELEASED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_TESTING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CLAMPFORCE_NOT_ENOUGH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->NON_P_TO_RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;
    .locals 1

    .line 420
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 421
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->FASTEN_SEATBELT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->FASTEN_SEATBELT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 422
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 423
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CHECK_PARK_BRAKE_LOW_GRADIENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CHECK_PARK_BRAKE_LOW_GRADIENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 424
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_SET:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_SET:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 425
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_RELEASED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_RELEASED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 426
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_TESTING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->PARK_BRAKE_TESTING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 427
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CLAMPFORCE_NOT_ENOUGH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->CLAMPFORCE_NOT_ENOUGH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 428
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->NON_P_TO_RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->NON_P_TO_RELEASE_PARK_BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0

    .line 429
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;
    .locals 1

    .line 393
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;
    .locals 1

    .line 393
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;

    return-object v0
.end method
