.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum AFRICA_2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum AUSTRALIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum CHINA_MIDDLEEAST_AFRICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum EASTERN_EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum EASTERN_EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum JAPAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum LATIN_AMERICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum SOUTHEAST_ASIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum USA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 402
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "CHINA_MIDDLEEAST_AFRICA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->CHINA_MIDDLEEAST_AFRICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 404
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "EUROPE1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 406
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "EUROPE2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 408
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "EASTERN_EUROPE1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 410
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "EASTERN_EUROPE2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 412
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "AUSTRALIA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AUSTRALIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 414
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "USA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->USA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 416
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "LATIN_AMERICA"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->LATIN_AMERICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 418
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "SOUTHEAST_ASIA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->SOUTHEAST_ASIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 420
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "JAPAN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->JAPAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 422
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "AFRICA_2"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AFRICA_2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    .line 423
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    const/16 v0, 0xc

    .line 400
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->CHINA_MIDDLEEAST_AFRICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AUSTRALIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->USA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->LATIN_AMERICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->SOUTHEAST_ASIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->JAPAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AFRICA_2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;
    .locals 1

    .line 431
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->CHINA_MIDDLEEAST_AFRICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->CHINA_MIDDLEEAST_AFRICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 432
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 433
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 434
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 435
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->EASTERN_EUROPE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 436
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AUSTRALIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AUSTRALIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 437
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->USA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->USA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 438
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->LATIN_AMERICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->LATIN_AMERICA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 439
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->SOUTHEAST_ASIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->SOUTHEAST_ASIA:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 440
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->JAPAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->JAPAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 441
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AFRICA_2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->AFRICA_2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0

    .line 442
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;
    .locals 1

    .line 400
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;
    .locals 1

    .line 400
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    return-object v0
.end method
