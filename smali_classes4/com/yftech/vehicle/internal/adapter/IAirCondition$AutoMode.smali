.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

.field public static final enum AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

.field public static final enum MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 103
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    const-string v1, "MANUAL_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    .line 104
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    const-string v1, "AUTO_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    .line 105
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    const/4 v0, 0x3

    .line 102
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
    .locals 1

    .line 113
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->MANUAL_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object p0

    .line 115
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
    .locals 1

    .line 102
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
    .locals 1

    .line 102
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object v0
.end method
