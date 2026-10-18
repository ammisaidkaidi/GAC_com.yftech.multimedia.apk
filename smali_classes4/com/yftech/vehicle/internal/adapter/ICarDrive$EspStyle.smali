.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EspStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 374
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    .line 375
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "SNOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    .line 376
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "MUD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    .line 377
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "SAND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    .line 378
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "SPORT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    .line 379
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    const/4 v0, 0x6

    .line 373
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;
    .locals 1

    .line 387
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0

    .line 388
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0

    .line 389
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0

    .line 390
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0

    .line 391
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0

    .line 392
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;
    .locals 1

    .line 373
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;
    .locals 1

    .line 373
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    return-object v0
.end method
