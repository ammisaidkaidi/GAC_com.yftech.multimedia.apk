.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Wifi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

.field public static final enum AP_STA_RESPECTIVELY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

.field public static final enum AP_STA_SIMULTANEOUSLY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 146
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    .line 148
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    const-string v1, "AP_STA_RESPECTIVELY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_RESPECTIVELY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    .line 150
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    const-string v1, "AP_STA_SIMULTANEOUSLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_SIMULTANEOUSLY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    .line 151
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    const/4 v0, 0x4

    .line 144
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_RESPECTIVELY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_SIMULTANEOUSLY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;
    .locals 1

    .line 159
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object p0

    .line 160
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_RESPECTIVELY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_RESPECTIVELY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object p0

    .line 161
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_SIMULTANEOUSLY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->AP_STA_SIMULTANEOUSLY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object p0

    .line 162
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;
    .locals 1

    .line 144
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;
    .locals 1

    .line 144
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Wifi;

    return-object v0
.end method
