.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StpOnBrkToRelParkBrkIndOnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

.field public static final enum DEEP_PUSH_BRK_PEDAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 437
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    .line 439
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    .line 440
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    const-string v1, "DEEP_PUSH_BRK_PEDAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->DEEP_PUSH_BRK_PEDAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    .line 441
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    const/4 v0, 0x4

    .line 436
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->DEEP_PUSH_BRK_PEDAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 444
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 445
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;
    .locals 1

    .line 449
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object p0

    .line 450
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object p0

    .line 451
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->DEEP_PUSH_BRK_PEDAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->DEEP_PUSH_BRK_PEDAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object p0

    .line 452
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;
    .locals 1

    .line 436
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;
    .locals 1

    .line 436
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;

    return-object v0
.end method
