.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecuperationLevelA9E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum LEVEL_1_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum LEVEL_2_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum LEVEL_3_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum LEVEL_4_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 204
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "NOT_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    .line 205
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "LEVEL_1_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_1_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    .line 206
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "LEVEL_2_LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_2_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    .line 207
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "LEVEL_3_MIDDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_3_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    .line 208
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "LEVEL_4_HIGH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_4_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    .line 209
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    const/4 v0, 0x6

    .line 203
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_1_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_2_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_3_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_4_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;
    .locals 1

    .line 217
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0

    .line 218
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_1_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_1_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0

    .line 219
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_2_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_2_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0

    .line 220
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_3_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_3_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0

    .line 221
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_4_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->LEVEL_4_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0

    .line 222
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;
    .locals 1

    .line 203
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;
    .locals 1

    .line 203
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    return-object v0
.end method
