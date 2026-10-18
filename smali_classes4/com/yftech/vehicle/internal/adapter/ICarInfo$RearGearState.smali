.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RearGearState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

.field public static final enum ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

.field public static final enum NOT_ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    const-string v1, "NOT_ENGAGED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->NOT_ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    const-string v1, "ENGAGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->NOT_ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
    .locals 1

    .line 76
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->NOT_ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->NOT_ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-object p0

    .line 77
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->ENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-object p0

    .line 78
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
    .locals 1

    .line 65
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    return-object v0
.end method
