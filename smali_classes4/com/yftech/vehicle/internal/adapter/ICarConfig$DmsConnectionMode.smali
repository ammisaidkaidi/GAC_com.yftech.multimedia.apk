.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DmsConnectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

.field public static final enum ETH_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

.field public static final enum GWM_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

.field public static final enum INTEGRATED_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

.field public static final enum NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 731
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    .line 733
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const-string v1, "GWM_TO_DMS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->GWM_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    .line 735
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const-string v1, "ETH_TO_DMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->ETH_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    .line 737
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const-string v1, "INTEGRATED_DMS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->INTEGRATED_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    .line 738
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    const/4 v0, 0x5

    .line 729
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->GWM_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->ETH_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->INTEGRATED_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 741
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 742
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;
    .locals 1

    .line 746
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0

    .line 747
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->GWM_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->GWM_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0

    .line 748
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->ETH_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->ETH_TO_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0

    .line 749
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->INTEGRATED_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->INTEGRATED_DMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0

    .line 750
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;
    .locals 1

    .line 729
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;
    .locals 1

    .line 729
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    return-object v0
.end method
