.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BSDMLcaCtl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 666
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    .line 667
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    .line 668
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    const/4 v0, 0x3

    .line 665
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 672
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;
    .locals 1

    .line 676
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-object p0

    .line 677
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-object p0

    .line 678
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;
    .locals 1

    .line 665
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;
    .locals 1

    .line 665
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;

    return-object v0
.end method
