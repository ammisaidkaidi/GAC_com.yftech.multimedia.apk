.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

.field public static final enum DEEPPUSHBRKPEDAL_TO_N:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 370
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    .line 371
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    .line 372
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const-string v1, "DEEPPUSHBRKPEDAL_TO_N"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->DEEPPUSHBRKPEDAL_TO_N:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    .line 373
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    .line 374
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    const/4 v0, 0x5

    .line 369
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->DEEPPUSHBRKPEDAL_TO_N:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;
    .locals 1

    .line 382
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0

    .line 383
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0

    .line 384
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->DEEPPUSHBRKPEDAL_TO_N:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->DEEPPUSHBRKPEDAL_TO_N:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0

    .line 385
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0

    .line 386
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;
    .locals 1

    .line 369
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;
    .locals 1

    .line 369
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;

    return-object v0
.end method
