.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LowBatteryWarningLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "LEVEL_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "LEVEL_5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v7, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    const/4 v0, 0x7

    .line 37
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 54
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 55
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 56
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 57
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0

    .line 58
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;
    .locals 1

    .line 37
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    return-object v0
.end method
