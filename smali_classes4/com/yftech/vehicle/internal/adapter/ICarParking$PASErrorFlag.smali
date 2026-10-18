.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
.super Ljava/lang/Enum;
.source "ICarParking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASErrorFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

.field public static final enum NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 76
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    const-string v1, "NOT_FAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    .line 77
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    const-string v1, "FAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    .line 78
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    .line 86
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-object p0

    .line 87
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-object p0

    .line 88
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    .line 75
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;
    .locals 1

    .line 75
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;

    return-object v0
.end method
