.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriveModeHev"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

.field public static final enum ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

.field public static final enum NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

.field public static final enum SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    const-string v1, "NORMAL_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    const-string v1, "ECO_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    const-string v1, "SPORT_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object p0

    .line 27
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;

    return-object v0
.end method
