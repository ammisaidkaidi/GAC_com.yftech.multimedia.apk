.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
.super Ljava/lang/Enum;
.source "ICarParking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASSystemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

.field public static final enum APA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

.field public static final enum RPA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    const-string v1, "RPA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    const-string v1, "APA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->APA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->APA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
    .locals 1

    .line 23
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-object p0

    .line 24
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->APA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->APA:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-object p0

    .line 25
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
    .locals 1

    .line 10
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
    .locals 1

    .line 10
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;

    return-object v0
.end method
