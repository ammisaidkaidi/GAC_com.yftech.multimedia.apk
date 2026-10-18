.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChargEnd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

.field public static final enum END_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 452
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    .line 453
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    const-string v1, "END_CHARGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->END_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    .line 454
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    const/4 v0, 0x3

    .line 451
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->END_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 458
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;
    .locals 1

    .line 462
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-object p0

    .line 463
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->END_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->END_CHARGE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-object p0

    .line 464
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;
    .locals 1

    .line 451
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;
    .locals 1

    .line 451
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;

    return-object v0
.end method
