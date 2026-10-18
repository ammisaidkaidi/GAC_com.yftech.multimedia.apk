.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControlHvac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

.field public static final enum ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

.field public static final enum NON_ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1282
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    .line 1284
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    const-string v1, "NON_ANION_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NON_ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    .line 1286
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    const-string v1, "ANION_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    .line 1287
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    const/4 v0, 0x4

    .line 1280
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NON_ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1291
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;
    .locals 1

    .line 1295
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object p0

    .line 1296
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NON_ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->NON_ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object p0

    .line 1297
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->ANION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object p0

    .line 1298
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;
    .locals 1

    .line 1280
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;
    .locals 1

    .line 1280
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    return-object v0
.end method
