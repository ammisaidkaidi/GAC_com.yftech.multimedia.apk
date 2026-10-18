.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BSDMRcwCtl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 822
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    .line 823
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    .line 824
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    const/4 v0, 0x3

    .line 821
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 827
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 828
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;
    .locals 1

    .line 832
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-object p0

    .line 833
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-object p0

    .line 834
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;
    .locals 1

    .line 821
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;
    .locals 1

    .line 821
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;

    return-object v0
.end method
