.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlugAutoUnlockCfg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

.field public static final enum AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

.field public static final enum NOT_AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 392
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    const-string v1, "NOT_AUTO_UNLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->NOT_AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    .line 393
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    const-string v1, "AUTO_UNLOCK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    .line 394
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    const/4 v0, 0x3

    .line 391
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->NOT_AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 398
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;
    .locals 1

    .line 402
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->NOT_AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->NOT_AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-object p0

    .line 403
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->AUTO_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-object p0

    .line 404
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;
    .locals 1

    .line 391
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;
    .locals 1

    .line 391
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    return-object v0
.end method
