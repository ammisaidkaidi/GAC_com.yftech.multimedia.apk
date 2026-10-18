.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeterVolumeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

.field public static final enum HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

.field public static final enum LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

.field public static final enum MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 165
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    const-string v1, "MIDDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    .line 167
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    .line 168
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    const/4 v0, 0x4

    .line 164
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->rx:I

    .line 174
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->tx:I

    .line 175
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;
    .locals 1

    .line 179
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object p0

    .line 180
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object p0

    .line 181
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object p0

    .line 182
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;
    .locals 1

    .line 164
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;
    .locals 1

    .line 164
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    return-object v0
.end method
