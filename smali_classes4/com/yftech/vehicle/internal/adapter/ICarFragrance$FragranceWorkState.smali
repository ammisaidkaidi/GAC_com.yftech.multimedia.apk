.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
.super Ljava/lang/Enum;
.source "ICarFragrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarFragrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragranceWorkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

.field public static final enum NOT_RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

.field public static final enum RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    const-string v1, "RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    .line 63
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    const-string v1, "NOT_RUN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->NOT_RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    .line 64
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->NOT_RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    .line 72
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-object p0

    .line 73
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->NOT_RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->NOT_RUN:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-object p0

    .line 74
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    .line 61
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;
    .locals 1

    .line 61
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarFragrance$FragranceWorkState;

    return-object v0
.end method
