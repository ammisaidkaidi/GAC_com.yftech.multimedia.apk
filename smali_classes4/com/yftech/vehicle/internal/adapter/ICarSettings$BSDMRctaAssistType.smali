.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BSDMRctaAssistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

.field public static final enum BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

.field public static final enum BRAKE_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

.field public static final enum NO_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

.field public static final enum WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 774
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const-string v1, "NO_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->NO_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    .line 775
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const-string v1, "BRAKE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    .line 776
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const-string v1, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    .line 777
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const-string v1, "BRAKE_AND_WARNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    .line 778
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    const/4 v0, 0x5

    .line 773
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->NO_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 781
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 782
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;
    .locals 1

    .line 786
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->NO_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->NO_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0

    .line 787
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0

    .line 788
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0

    .line 789
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->BRAKE_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0

    .line 790
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;
    .locals 1

    .line 773
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;
    .locals 1

    .line 773
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;

    return-object v0
.end method
