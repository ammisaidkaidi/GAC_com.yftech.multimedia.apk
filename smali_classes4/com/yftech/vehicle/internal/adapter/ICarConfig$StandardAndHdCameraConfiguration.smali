.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StandardAndHdCameraConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

.field public static final enum HIGH_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

.field public static final enum STANDARD_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 997
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    const-string v1, "STANDARD_DEFINITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->STANDARD_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    .line 999
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    const-string v1, "HIGH_DEFINITION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->HIGH_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    .line 1000
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    const/4 v0, 0x3

    .line 995
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->STANDARD_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->HIGH_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1003
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1004
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;
    .locals 1

    .line 1008
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->STANDARD_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->STANDARD_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-object p0

    .line 1009
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->HIGH_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->HIGH_DEFINITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-object p0

    .line 1010
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;
    .locals 1

    .line 995
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;
    .locals 1

    .line 995
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    return-object v0
.end method
