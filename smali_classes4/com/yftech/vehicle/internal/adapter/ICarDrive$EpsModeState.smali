.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpsModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

.field public static final enum IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

.field public static final enum NOT_READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

.field public static final enum READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 400
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->NOT_READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    .line 401
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    .line 402
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const-string v1, "IN_TRANSITION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    .line 403
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const-string v1, "FAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    .line 404
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    const/4 v0, 0x5

    .line 399
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->NOT_READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 408
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;
    .locals 1

    .line 412
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->NOT_READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->NOT_READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0

    .line 413
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->READY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0

    .line 414
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0

    .line 415
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0

    .line 416
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;
    .locals 1

    .line 399
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;
    .locals 1

    .line 399
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;

    return-object v0
.end method
