.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeftRightHandDriveVehicles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

.field public static final enum LEFT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

.field public static final enum RIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 710
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->LEFT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    .line 712
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->RIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    .line 713
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    const/4 v0, 0x3

    .line 708
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->LEFT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->RIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 717
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 721
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->LEFT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->LEFT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-object p0

    .line 722
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->RIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->RIGHT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-object p0

    .line 723
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 708
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 708
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LeftRightHandDriveVehicles;

    return-object v0
.end method
