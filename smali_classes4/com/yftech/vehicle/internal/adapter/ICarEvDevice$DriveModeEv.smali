.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriveModeEv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum IPEDAL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum IPEDAL_ON:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 254
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 255
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "ECO_PLUS_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 256
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "ECO_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 257
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "NORMAL_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 258
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "DRIVING_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 259
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "SPORT_MODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 260
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "IPEDAL_ON"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_ON:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 261
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "IPEDAL_OFF"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    .line 262
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const-string v1, "__UNKNOWN__"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    const/16 v0, 0x9

    .line 253
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_ON:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;
    .locals 1

    .line 270
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 271
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 272
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 273
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 274
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 275
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 276
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_ON:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_ON:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 277
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->IPEDAL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0

    .line 278
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;
    .locals 1

    .line 253
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;
    .locals 1

    .line 253
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    return-object v0
.end method
