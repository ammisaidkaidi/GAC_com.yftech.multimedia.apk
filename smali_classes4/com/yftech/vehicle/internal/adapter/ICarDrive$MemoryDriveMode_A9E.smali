.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryDriveMode_A9E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

.field public static final enum MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

.field public static final enum NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 121
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    .line 122
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    const-string v1, "NOT_MEMORY"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    .line 123
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v3, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    const/4 v0, 0x3

    .line 120
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->rx:I

    .line 129
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->tx:I

    .line 130
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;
    .locals 1

    .line 134
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-object p0

    .line 135
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-object p0

    .line 136
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;
    .locals 1

    .line 120
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;
    .locals 1

    .line 120
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;

    return-object v0
.end method
