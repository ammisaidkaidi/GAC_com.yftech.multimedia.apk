.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TboxConnectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

.field public static final enum ETH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

.field public static final enum NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

.field public static final enum USB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 706
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    .line 708
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    const-string v1, "USB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    .line 710
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    const-string v1, "ETH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    .line 711
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    const/4 v0, 0x4

    .line 704
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 714
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 715
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;
    .locals 1

    .line 719
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->NO_CONNECTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object p0

    .line 720
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->USB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object p0

    .line 721
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->ETH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object p0

    .line 722
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;
    .locals 1

    .line 704
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;
    .locals 1

    .line 704
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    return-object v0
.end method
