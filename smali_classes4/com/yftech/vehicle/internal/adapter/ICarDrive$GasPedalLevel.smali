.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GasPedalLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 226
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 227
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "LEVEL_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 228
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 229
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 230
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "LEVEL_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 231
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "LEVEL_5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    .line 232
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    const/4 v0, 0x7

    .line 225
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;
    .locals 1

    .line 240
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 241
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 242
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 243
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 244
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 245
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0

    .line 246
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;
    .locals 1

    .line 225
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;
    .locals 1

    .line 225
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;

    return-object v0
.end method
