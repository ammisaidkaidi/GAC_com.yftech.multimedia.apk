.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;
.super Ljava/lang/Enum;
.source "ICarFragrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarFragrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragranceTaste"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

.field public static final enum TASTE_A:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

.field public static final enum TASTE_B:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

.field public static final enum TASTE_C:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const-string v1, "TASTE_A"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_A:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const-string v1, "TASTE_B"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_B:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const-string v1, "TASTE_C"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_C:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_A:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_B:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_C:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0

    .line 27
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_A:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_A:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0

    .line 28
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_B:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_B:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0

    .line 29
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_C:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->TASTE_C:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceTaste;

    return-object v0
.end method
