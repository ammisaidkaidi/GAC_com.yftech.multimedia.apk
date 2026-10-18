.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;
.super Ljava/lang/Enum;
.source "ICarDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASBackParkDisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

.field public static final enum IMAGE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

.field public static final enum SPACE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 116
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    .line 117
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    const-string v1, "IMAGE_PARKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->IMAGE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    .line 118
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    const-string v1, "SPACE_PARKING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->SPACE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    .line 119
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    const/4 v0, 0x4

    .line 115
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->IMAGE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->SPACE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;
    .locals 1

    .line 127
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object p0

    .line 128
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->IMAGE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->IMAGE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object p0

    .line 129
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->SPACE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->SPACE_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object p0

    .line 130
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;
    .locals 1

    .line 115
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;
    .locals 1

    .line 115
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;

    return-object v0
.end method
