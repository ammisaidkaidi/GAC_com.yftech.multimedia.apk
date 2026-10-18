.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;
.super Ljava/lang/Enum;
.source "ICarFragrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarFragrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragranceConcentration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

.field public static final enum HIGH:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

.field public static final enum LOW:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

.field public static final enum MID:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const-string v1, "MID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->MID:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    const/4 v0, 0x5

    .line 37
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->MID:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;
    .locals 1

    .line 50
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0

    .line 51
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0

    .line 52
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->MID:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->MID:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0

    .line 53
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0

    .line 54
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;
    .locals 1

    .line 37
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceConcentration;

    return-object v0
.end method
