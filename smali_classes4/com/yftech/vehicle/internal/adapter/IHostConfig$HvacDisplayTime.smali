.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HvacDisplayTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 371
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    .line 373
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "FIVES_SEC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    .line 375
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "TEN_SEC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    .line 377
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "FIFTEEN_SEC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    .line 379
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "THIRTY_SEC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    .line 380
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    const/4 v0, 0x6

    .line 369
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 384
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;
    .locals 1

    .line 388
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0

    .line 389
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0

    .line 390
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0

    .line 391
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0

    .line 392
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0

    .line 393
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;
    .locals 1

    .line 369
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;
    .locals 1

    .line 369
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    return-object v0
.end method
