.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LksState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "LKS_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "LKS_STANDBY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "LKS_ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "LKS_FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "CAMERA_BLOCKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
    .locals 1

    .line 27
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0

    .line 28
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0

    .line 30
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0

    .line 31
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0

    .line 32
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    return-object v0
.end method
