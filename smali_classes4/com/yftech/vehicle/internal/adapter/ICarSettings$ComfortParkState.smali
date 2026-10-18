.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComfortParkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum CST_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum CST_DISABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum CST_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum CST_LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum CST_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 483
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "CST_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_DISABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    .line 484
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "CST_STANDBY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    .line 485
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "CST_ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    .line 486
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "CST_FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    .line 487
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "CST_LEVEL_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    .line 488
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    const/4 v0, 0x6

    .line 482
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_DISABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 492
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;
    .locals 1

    .line 496
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_DISABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_DISABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0

    .line 497
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0

    .line 498
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0

    .line 499
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0

    .line 500
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->CST_LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0

    .line 501
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;
    .locals 1

    .line 482
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;
    .locals 1

    .line 482
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;

    return-object v0
.end method
