.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tiktok"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

.field public static final enum NO_SHOOTING_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

.field public static final enum SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

.field public static final enum SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1019
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    .line 1021
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const-string v1, "NO_SHOOTING_FUNCTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NO_SHOOTING_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    .line 1023
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const-string v1, "SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    .line 1025
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const-string v1, "SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    .line 1026
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    const/4 v0, 0x5

    .line 1017
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NO_SHOOTING_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1029
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1030
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;
    .locals 1

    .line 1034
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0

    .line 1035
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NO_SHOOTING_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->NO_SHOOTING_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0

    .line 1036
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0

    .line 1037
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0

    .line 1038
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;
    .locals 1

    .line 1017
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;
    .locals 1

    .line 1017
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    return-object v0
.end method
