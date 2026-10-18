.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngStartCfg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

.field public static final enum ENGINE_START_DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

.field public static final enum ENGINE_START_ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

.field public static final enum NO_REQUEST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 370
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    const-string v1, "NO_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->NO_REQUEST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    .line 371
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    const-string v1, "ENGINE_START_ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    .line 372
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    const-string v1, "ENGINE_START_DISABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    .line 373
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    const/4 v0, 0x4

    .line 369
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->NO_REQUEST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 377
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;
    .locals 1

    .line 381
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->NO_REQUEST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->NO_REQUEST:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object p0

    .line 382
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_ENABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object p0

    .line 383
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->ENGINE_START_DISABLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object p0

    .line 384
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;
    .locals 1

    .line 369
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;
    .locals 1

    .line 369
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;

    return-object v0
.end method
