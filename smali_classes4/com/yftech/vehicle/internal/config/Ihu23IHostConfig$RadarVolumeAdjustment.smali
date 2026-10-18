.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadarVolumeAdjustment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

.field public static final enum HIGH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

.field public static final enum LOW:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

.field public static final enum MIDDLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 223
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    .line 225
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->LOW:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    .line 227
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const-string v1, "MIDDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->MIDDLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    .line 229
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->HIGH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    .line 230
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    const/4 v0, 0x5

    .line 221
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->LOW:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->MIDDLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->HIGH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;
    .locals 1

    .line 238
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0

    .line 239
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->LOW:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->LOW:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0

    .line 240
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->MIDDLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->MIDDLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0

    .line 241
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->HIGH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->HIGH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0

    .line 242
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;
    .locals 1

    .line 221
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;
    .locals 1

    .line 221
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadarVolumeAdjustment;

    return-object v0
.end method
