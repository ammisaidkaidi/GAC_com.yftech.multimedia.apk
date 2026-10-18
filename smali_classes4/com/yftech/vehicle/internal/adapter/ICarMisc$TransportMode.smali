.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

.field public static final enum NOT_TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

.field public static final enum TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 481
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    const-string v1, "TRANSPORT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    .line 482
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    const-string v1, "NOT_TRANSPORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->NOT_TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    .line 483
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    const-string v1, "FAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    .line 484
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    const/4 v0, 0x4

    .line 480
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->NOT_TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;
    .locals 1

    .line 492
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object p0

    .line 493
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->NOT_TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->NOT_TRANSPORT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object p0

    .line 494
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object p0

    .line 495
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;
    .locals 1

    .line 480
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;
    .locals 1

    .line 480
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;

    return-object v0
.end method
