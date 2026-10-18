.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VdcOffState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 424
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    const-string v1, "OFF"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    .line 425
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    .line 426
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    const/4 v0, 0x3

    .line 423
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 430
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;
    .locals 1

    .line 434
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-object p0

    .line 435
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-object p0

    .line 436
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;
    .locals 1

    .line 423
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;
    .locals 1

    .line 423
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    return-object v0
.end method
