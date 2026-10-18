.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControlCarwindow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

.field public static final enum FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

.field public static final enum LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1209
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    .line 1211
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    const-string v1, "LEFT_FRONT_WINDOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    .line 1212
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    const-string v1, "FOUR_DOOR_WINDOWS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    .line 1213
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    const/4 v0, 0x4

    .line 1207
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1217
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;
    .locals 1

    .line 1221
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object p0

    .line 1222
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object p0

    .line 1223
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object p0

    .line 1224
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;
    .locals 1

    .line 1207
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;
    .locals 1

    .line 1207
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    return-object v0
.end method
