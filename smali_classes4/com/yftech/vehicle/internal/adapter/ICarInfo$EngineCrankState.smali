.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineCrankState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

.field public static final enum CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

.field public static final enum NOT_ON_CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 312
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    const-string v1, "NOT_ON_CRANK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->NOT_ON_CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    .line 313
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    const-string v1, "CRANK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    .line 314
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    const/4 v0, 0x3

    .line 311
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->NOT_ON_CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 318
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;
    .locals 1

    .line 322
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->NOT_ON_CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->NOT_ON_CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-object p0

    .line 323
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-object p0

    .line 324
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;
    .locals 1

    .line 311
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;
    .locals 1

    .line 311
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    return-object v0
.end method
