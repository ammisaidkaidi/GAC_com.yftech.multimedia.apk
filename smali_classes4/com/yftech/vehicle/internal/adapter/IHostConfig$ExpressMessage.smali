.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpressMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 555
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    .line 557
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    .line 559
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->OFF:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    .line 560
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    const/4 v0, 0x4

    .line 553
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->OFF:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 564
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;
    .locals 1

    .line 568
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object p0

    .line 569
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object p0

    .line 570
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->OFF:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->OFF:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object p0

    .line 571
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;
    .locals 1

    .line 553
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;
    .locals 1

    .line 553
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$ExpressMessage;

    return-object v0
.end method
