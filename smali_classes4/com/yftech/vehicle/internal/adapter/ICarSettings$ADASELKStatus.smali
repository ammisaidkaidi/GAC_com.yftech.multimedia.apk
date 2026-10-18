.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADASELKStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

.field public static final enum PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 940
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    .line 941
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const-string v1, "PASSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    .line 942
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    .line 943
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    .line 944
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    const/4 v0, 0x5

    .line 939
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 947
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 948
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;
    .locals 1

    .line 952
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0

    .line 953
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->PASSIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0

    .line 954
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0

    .line 955
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0

    .line 956
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;
    .locals 1

    .line 939
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;
    .locals 1

    .line 939
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;

    return-object v0
.end method
