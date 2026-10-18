.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TftCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

.field public static final enum CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    const-string v1, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    const-string v1, "STOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;
    .locals 1

    .line 77
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object p0

    .line 78
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object p0

    .line 79
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object p0

    .line 80
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;
    .locals 1

    .line 65
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;

    return-object v0
.end method
