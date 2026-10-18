.class public final enum Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
.super Ljava/lang/Enum;
.source "IBaseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IBaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnableStateOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

.field public static final enum DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

.field public static final enum ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    const-string v1, "DISABLED"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    .line 32
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    .line 33
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
    .locals 1

    .line 41
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-object p0

    .line 42
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
    .locals 1

    .line 30
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    return-object v0
.end method
