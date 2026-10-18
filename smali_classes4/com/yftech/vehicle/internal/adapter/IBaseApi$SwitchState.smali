.class public final enum Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;
.super Ljava/lang/Enum;
.source "IBaseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IBaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

.field public static final enum TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

.field public static final enum TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    const-string v1, "TURN_ON"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    .line 49
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    const-string v1, "TURN_OFF"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    .line 50
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v3, v5}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;
    .locals 1

    .line 58
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-object p0

    .line 59
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-object p0

    .line 60
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;
    .locals 1

    .line 47
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;
    .locals 1

    .line 47
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    return-object v0
.end method
