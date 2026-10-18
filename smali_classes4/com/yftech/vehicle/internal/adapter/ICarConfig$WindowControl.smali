.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

.field public static final enum FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

.field public static final enum LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

.field public static final enum LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1075
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    .line 1077
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const-string v1, "LEFT_FRONT_WINDOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    .line 1079
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const-string v1, "FOUR_DOOR_WINDOWS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    .line 1081
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const-string v1, "LEFT_AND_RIGHT_FRONT_WINDOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    .line 1082
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    const/4 v0, 0x5

    .line 1073
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1085
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1086
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 1

    .line 1090
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0

    .line 1091
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0

    .line 1092
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0

    .line 1093
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0

    .line 1094
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 1

    .line 1073
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 1

    .line 1073
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    return-object v0
.end method
