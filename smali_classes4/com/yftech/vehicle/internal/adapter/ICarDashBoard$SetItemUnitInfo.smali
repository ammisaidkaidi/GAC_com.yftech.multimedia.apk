.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;
.super Ljava/lang/Object;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetItemUnitInfo"
.end annotation


# static fields
.field public static DISTANCE_M:I = 0x1

.field public static DISTANCE_MILE:I = 0x2

.field public static FUEL_CONSUMPTION_KM_KWH:I = 0x51

.field public static FUEL_CONSUMPTION_KM_L:I = 0x1

.field public static FUEL_CONSUMPTION_KWH_100KM:I = 0x52

.field public static FUEL_CONSUMPTION_KWH_MILE:I = 0x54

.field public static FUEL_CONSUMPTION_L_100KM:I = 0x2

.field public static FUEL_CONSUMPTION_MILES_KWH:I = 0x53

.field public static FUEL_CONSUMPTION_MPG_UK:I = 0x4

.field public static FUEL_CONSUMPTION_MPG_US:I = 0x3

.field public static PRESSURE_BAR:B = 0x3t

.field public static PRESSURE_KGF_CM2:B = 0x4t

.field public static PRESSURE_KPA:B = 0x1t

.field public static PRESSURE_PSI:B = 0x2t

.field public static TEMPERATURE_DEG_C:B = 0x1t

.field public static TEMPERATURE_DEG_F:B = 0x2t


# instance fields
.field public mUnitDistance:I

.field public mUnitFuelConsumption:I

.field public mUnitPressure:I

.field public mUnitTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitPressure:I

    .line 452
    iput p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitTemperature:I

    .line 453
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitDistance:I

    .line 454
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitFuelConsumption:I

    return-void
.end method

.method public static valueOf([B)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;
    .locals 4

    const/4 v0, 0x0

    .line 458
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 459
    aget-byte v1, p0, v1

    const/4 v2, 0x2

    .line 460
    aget-byte v2, p0, v2

    const/4 v3, 0x3

    .line 461
    aget-byte p0, p0, v3

    .line 462
    new-instance v3, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetItemUnitInfo{mUnitPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitPressure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUnitTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUnitDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUnitFuelConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitFuelConsumption:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
