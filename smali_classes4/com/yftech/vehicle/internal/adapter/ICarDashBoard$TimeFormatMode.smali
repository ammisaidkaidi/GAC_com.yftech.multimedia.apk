.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;
.super Ljava/lang/Enum;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeFormatMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

.field public static final enum MODE_12H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

.field public static final enum MODE_24H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1314
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    const-string v1, "MODE_12H"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_12H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    .line 1316
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    const-string v1, "MODE_24H"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_24H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    .line 1317
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    const/4 v0, 0x3

    .line 1312
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_12H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_24H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1321
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;
    .locals 1

    .line 1324
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_12H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_12H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-object p0

    .line 1325
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_24H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->MODE_24H:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-object p0

    .line 1326
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;
    .locals 1

    .line 1312
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;
    .locals 1

    .line 1312
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$TimeFormatMode;

    return-object v0
.end method
