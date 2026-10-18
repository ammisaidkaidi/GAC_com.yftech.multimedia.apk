.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

.field public static final enum ONE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

.field public static final enum THREE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

.field public static final enum TWO_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1382
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    const-string v1, "ONE_ZONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->ONE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    .line 1384
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    const-string v1, "TWO_ZONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->TWO_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    .line 1386
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    const-string v1, "THREE_ZONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->THREE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    .line 1387
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    const/4 v0, 0x4

    .line 1380
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->ONE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->TWO_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->THREE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1391
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;
    .locals 1

    .line 1395
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->ONE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->ONE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object p0

    .line 1396
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->TWO_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->TWO_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object p0

    .line 1397
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->THREE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->THREE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object p0

    .line 1398
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;
    .locals 1

    .line 1380
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;
    .locals 1

    .line 1380
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    return-object v0
.end method
