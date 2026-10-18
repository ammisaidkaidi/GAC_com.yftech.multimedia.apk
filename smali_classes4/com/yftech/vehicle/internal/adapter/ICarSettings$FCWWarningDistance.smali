.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FCWWarningDistance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

.field public static final enum CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

.field public static final enum FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    .line 65
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const-string v1, "CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const-string v1, "FAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->rx:I

    .line 73
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->tx:I

    .line 74
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;
    .locals 1

    .line 78
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object p0

    .line 79
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object p0

    .line 80
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object p0

    .line 81
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;
    .locals 1

    .line 63
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;
    .locals 1

    .line 63
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    return-object v0
.end method
