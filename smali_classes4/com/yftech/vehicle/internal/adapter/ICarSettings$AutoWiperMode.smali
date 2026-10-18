.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoWiperMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

.field public static final enum AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

.field public static final enum INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    const-string v1, "INTERMITTENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    .line 167
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    const-string v1, "AUTO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    .line 168
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    const/4 v0, 0x3

    .line 165
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->rx:I

    .line 174
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->tx:I

    .line 175
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;
    .locals 1

    .line 179
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-object p0

    .line 180
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-object p0

    .line 181
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;
    .locals 1

    .line 165
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;
    .locals 1

    .line 165
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    return-object v0
.end method
