.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TboxConnectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

.field public static final enum ETH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

.field public static final enum NO_CONNECTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

.field public static final enum USB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 398
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    .line 400
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    const-string v1, "USB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    .line 402
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    const-string v1, "ETH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    .line 403
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    const/4 v0, 0x4

    .line 396
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 407
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;
    .locals 1

    .line 411
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object p0

    .line 412
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object p0

    .line 413
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object p0

    .line 414
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;
    .locals 1

    .line 396
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;
    .locals 1

    .line 396
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$TboxConnectionMode;

    return-object v0
.end method
