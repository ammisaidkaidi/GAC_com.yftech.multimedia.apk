.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RepeatBookMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

.field public static final enum BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

.field public static final enum NOT_REPEAT:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 326
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    const-string v1, "NOT_REPEAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->NOT_REPEAT:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    .line 327
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    const-string v1, "BOOKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    .line 328
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    const/4 v0, 0x3

    .line 325
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->NOT_REPEAT:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 332
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    .line 336
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->NOT_REPEAT:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->NOT_REPEAT:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-object p0

    .line 337
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->BOOKING:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-object p0

    .line 338
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    .line 325
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    .line 325
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    return-object v0
.end method
