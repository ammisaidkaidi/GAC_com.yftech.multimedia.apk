.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RearDefrostAndRearviewMirrorHeating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

.field public static final enum REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

.field public static final enum REAR_DEFROS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

.field public static final enum REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 510
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    .line 512
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const-string v1, "REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    .line 514
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const-string v1, "REAR_DEFROS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    .line 516
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const-string v1, "REARVIEW_MIRROR_HEATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    .line 517
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    const/4 v0, 0x5

    .line 508
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 521
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;
    .locals 1

    .line 525
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0

    .line 526
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0

    .line 527
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REAR_DEFROS:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0

    .line 528
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0

    .line 529
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;
    .locals 1

    .line 508
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;
    .locals 1

    .line 508
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$RearDefrostAndRearviewMirrorHeating;

    return-object v0
.end method
