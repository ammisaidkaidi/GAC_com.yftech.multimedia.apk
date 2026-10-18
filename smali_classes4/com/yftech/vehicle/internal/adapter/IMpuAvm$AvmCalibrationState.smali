.class public final enum Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;
.super Ljava/lang/Enum;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvmCalibrationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum CLAIBRATING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum PARTIALLY:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum SUCCESS:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 65
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->NONE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "CLAIBRATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->CLAIBRATING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->SUCCESS:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "PARTIALLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->PARTIALLY:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    .line 70
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    const/4 v0, 0x6

    .line 64
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->NONE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->CLAIBRATING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->SUCCESS:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->PARTIALLY:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;
    .locals 1

    .line 78
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->NONE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->NONE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0

    .line 79
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->CLAIBRATING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->CLAIBRATING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0

    .line 80
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->SUCCESS:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->SUCCESS:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0

    .line 81
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0

    .line 82
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->PARTIALLY:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->PARTIALLY:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0

    .line 83
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;
    .locals 1

    .line 64
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;
    .locals 1

    .line 64
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCalibrationState;

    return-object v0
.end method
