.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WalAndApu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

.field public static final enum APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

.field public static final enum WAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

.field public static final enum WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 654
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    .line 656
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const-string v1, "WAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    .line 658
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const-string v1, "APU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    .line 660
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const-string v1, "WAL_AND_APU"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    .line 661
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    const/4 v0, 0x5

    .line 652
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 665
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;
    .locals 1

    .line 669
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0

    .line 670
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0

    .line 671
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0

    .line 672
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0

    .line 673
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;
    .locals 1

    .line 652
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;
    .locals 1

    .line 652
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$WalAndApu;

    return-object v0
.end method
