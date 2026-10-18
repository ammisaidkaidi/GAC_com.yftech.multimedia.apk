.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LksMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field public static final enum NOT_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field public static final enum STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field public static final enum STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field public static final enum WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const-string v1, "NOT_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->NOT_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const-string v1, "STEERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const-string v1, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const-string v1, "STEERING_AND_WARNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const/4 v0, 0x5

    .line 39
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->NOT_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->NOT_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->NOT_SELECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0

    .line 54
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0

    .line 55
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;
    .locals 1

    .line 39
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    return-object v0
.end method
