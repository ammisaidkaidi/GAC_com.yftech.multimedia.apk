.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecuperationLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum LEVEL_0_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum LEVEL_1_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum LEVEL_2_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum LEVEL_3_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 178
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "NOT_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    .line 179
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "LEVEL_0_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_0_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    .line 180
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "LEVEL_1_LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_1_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    .line 181
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "LEVEL_2_MIDDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_2_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    .line 182
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "LEVEL_3_HIGH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_3_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    .line 183
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    const/4 v0, 0x6

    .line 177
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_0_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_1_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_2_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_3_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;
    .locals 1

    .line 191
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0

    .line 192
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_0_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_0_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0

    .line 193
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_1_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_1_LOW:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0

    .line 194
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_2_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_2_MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0

    .line 195
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_3_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->LEVEL_3_HIGH:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0

    .line 196
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;
    .locals 1

    .line 177
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;
    .locals 1

    .line 177
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    return-object v0
.end method
