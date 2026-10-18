.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;
.super Ljava/lang/Enum;
.source "ICarParking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASSystemFailureFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

.field public static final enum FRONT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

.field public static final enum NOT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

.field public static final enum REAR_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

.field public static final enum SYSTEM_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const-string v1, "NOT_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->NOT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    .line 31
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const-string v1, "FRONT_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->FRONT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    .line 32
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const-string v1, "REAR_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->REAR_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    .line 33
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const-string v1, "SYSTEM_FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->SYSTEM_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    .line 34
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    const/4 v0, 0x5

    .line 29
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->NOT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->FRONT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->REAR_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->SYSTEM_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;
    .locals 1

    .line 42
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->NOT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->NOT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0

    .line 43
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->FRONT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->FRONT_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0

    .line 44
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->REAR_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->REAR_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0

    .line 45
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->SYSTEM_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->SYSTEM_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0

    .line 46
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;
    .locals 1

    .line 29
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;

    return-object v0
.end method
