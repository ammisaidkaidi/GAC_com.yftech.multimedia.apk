.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemindingMaintenanceCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

.field public static final enum CLOSE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 707
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->CLOSE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    .line 709
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->OPEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    .line 710
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    const/4 v0, 0x3

    .line 705
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->CLOSE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->OPEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 713
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 714
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;
    .locals 1

    .line 718
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->CLOSE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->CLOSE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-object p0

    .line 719
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->OPEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->OPEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-object p0

    .line 720
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;
    .locals 1

    .line 705
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;
    .locals 1

    .line 705
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RemindingMaintenanceCycle;

    return-object v0
.end method
