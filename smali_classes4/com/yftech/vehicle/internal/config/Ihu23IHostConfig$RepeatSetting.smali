.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RepeatSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

.field public static final enum CLOSE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

.field public static final enum OPEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 468
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->CLOSE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    .line 470
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->OPEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    .line 471
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    const/4 v0, 0x3

    .line 466
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->CLOSE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->OPEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 474
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 475
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;
    .locals 1

    .line 479
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->CLOSE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->CLOSE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-object p0

    .line 480
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->OPEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->OPEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-object p0

    .line 481
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;
    .locals 1

    .line 466
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;
    .locals 1

    .line 466
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RepeatSetting;

    return-object v0
.end method
