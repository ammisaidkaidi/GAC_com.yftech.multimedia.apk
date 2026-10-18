.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BSDMRctaCtl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 754
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    .line 755
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    .line 756
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    const/4 v0, 0x3

    .line 753
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 759
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 760
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;
    .locals 1

    .line 764
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-object p0

    .line 765
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-object p0

    .line 766
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;
    .locals 1

    .line 753
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;
    .locals 1

    .line 753
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;

    return-object v0
.end method
