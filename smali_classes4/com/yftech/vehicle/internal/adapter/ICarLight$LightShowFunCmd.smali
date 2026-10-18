.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;
.super Ljava/lang/Enum;
.source "ICarLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightShowFunCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

.field public static final enum END:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

.field public static final enum PREPARE:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

.field public static final enum START:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    const-string v1, "PREPARE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->PREPARE:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    .line 70
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    const-string v1, "START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->START:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    .line 71
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    const-string v1, "END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->END:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    .line 72
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->PREPARE:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->START:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->END:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;
    .locals 1

    .line 80
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->PREPARE:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->PREPARE:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object p0

    .line 81
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->START:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->START:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object p0

    .line 82
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->END:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->END:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object p0

    .line 83
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;
    .locals 1

    .line 68
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;
    .locals 1

    .line 68
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;

    return-object v0
.end method
