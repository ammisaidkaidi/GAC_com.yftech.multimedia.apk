.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControlWiperAndCleaning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

.field public static final enum FRONT_AND_REAR_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

.field public static final enum FRONT_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1257
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    .line 1259
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    const-string v1, "FRONT_WIPER_CLEANING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    .line 1261
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    const-string v1, "FRONT_AND_REAR_WIPER_CLEANING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_AND_REAR_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    .line 1262
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    const/4 v0, 0x4

    .line 1255
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_AND_REAR_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1266
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;
    .locals 1

    .line 1270
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object p0

    .line 1271
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object p0

    .line 1272
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_AND_REAR_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->FRONT_AND_REAR_WIPER_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object p0

    .line 1273
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;
    .locals 1

    .line 1255
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;
    .locals 1

    .line 1255
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    return-object v0
.end method
