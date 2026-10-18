.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControlWindowposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

.field public static final enum FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

.field public static final enum LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1332
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    .line 1334
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    const-string v1, "LEFT_FRONT_WINDOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    .line 1336
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    const-string v1, "FOUR_DOOR_WINDOWS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    .line 1337
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    const/4 v0, 0x4

    .line 1330
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1341
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;
    .locals 1

    .line 1345
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object p0

    .line 1346
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object p0

    .line 1347
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object p0

    .line 1348
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;
    .locals 1

    .line 1330
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;
    .locals 1

    .line 1330
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    return-object v0
.end method
