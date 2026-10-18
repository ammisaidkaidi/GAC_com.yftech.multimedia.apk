.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryDriveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

.field public static final enum MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

.field public static final enum NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

.field public static final enum NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    const-string v1, "NOT_MEMORY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    .line 97
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    const-string v1, "MEMORY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    .line 98
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    const-string v1, "NOT_USED"

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    const-string v1, "__UNKNOWN__"

    invoke-direct {v0, v1, v6, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    const/4 v0, 0x4

    .line 95
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->rx:I

    .line 105
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->tx:I

    .line 106
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;
    .locals 1

    .line 110
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object p0

    .line 111
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object p0

    .line 112
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_USED:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object p0

    .line 113
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;
    .locals 1

    .line 95
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;
    .locals 1

    .line 95
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    return-object v0
.end method
