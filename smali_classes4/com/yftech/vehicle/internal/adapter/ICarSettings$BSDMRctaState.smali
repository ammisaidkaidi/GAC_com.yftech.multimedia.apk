.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BSDMRctaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

.field public static final enum PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 730
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    .line 731
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const-string v1, "PASSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    .line 732
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    .line 733
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    .line 734
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    const/4 v0, 0x5

    .line 729
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 737
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 738
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;
    .locals 1

    .line 742
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0

    .line 743
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0

    .line 744
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0

    .line 745
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0

    .line 746
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;
    .locals 1

    .line 729
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;
    .locals 1

    .line 729
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;

    return-object v0
.end method
