.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayNightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

.field public static final enum DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

.field public static final enum NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

.field public static final enum TWILIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 270
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    .line 271
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    const-string v1, "TWILIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->TWILIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    .line 272
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    const-string v1, "NIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    .line 273
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    const/4 v0, 0x4

    .line 269
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->TWILIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
    .locals 1

    .line 281
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->DAY:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object p0

    .line 282
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->TWILIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->TWILIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object p0

    .line 283
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->NIGHT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object p0

    .line 284
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
    .locals 1

    .line 269
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
    .locals 1

    .line 269
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    return-object v0
.end method
