.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterfaceSound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

.field public static final enum ON:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 378
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    .line 380
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    .line 381
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->OFF:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    .line 382
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    const/4 v0, 0x4

    .line 376
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->OFF:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 386
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;
    .locals 1

    .line 390
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object p0

    .line 391
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object p0

    .line 392
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->OFF:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->OFF:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object p0

    .line 393
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;
    .locals 1

    .line 376
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;
    .locals 1

    .line 376
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$InterfaceSound;

    return-object v0
.end method
