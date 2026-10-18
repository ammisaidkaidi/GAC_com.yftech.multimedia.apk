.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationSignalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

.field public static final enum BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

.field public static final enum GPS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

.field public static final enum GPS_BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 605
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    .line 607
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const-string v1, "GPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    .line 609
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const-string v1, "BEIDOU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    .line 611
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const-string v1, "GPS_BEIDOU"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS_BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    .line 612
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    const/4 v0, 0x5

    .line 603
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS_BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;
    .locals 1

    .line 620
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0

    .line 621
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0

    .line 622
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0

    .line 623
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS_BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->GPS_BEIDOU:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0

    .line 624
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;
    .locals 1

    .line 603
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;
    .locals 1

    .line 603
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NavigationSignalMode;

    return-object v0
.end method
