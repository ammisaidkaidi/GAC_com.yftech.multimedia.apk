.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriveSystemMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 313
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 315
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "ECO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 317
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "SPORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 319
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "WINTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 321
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "MANUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 323
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "SPORT_PLUS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 324
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    const/4 v0, 0x7

    .line 311
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 328
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;
    .locals 1

    .line 332
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 333
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 334
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 335
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->WINTER:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 336
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 337
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0

    .line 338
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;
    .locals 1

    .line 311
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;
    .locals 1

    .line 311
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    return-object v0
.end method
