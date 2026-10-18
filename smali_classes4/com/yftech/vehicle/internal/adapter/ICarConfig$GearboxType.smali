.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GearboxType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum AT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum DDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum GMC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum MT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum THS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum WDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 608
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "MT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->MT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 610
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "AT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->AT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 612
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "WDCT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->WDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 614
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "DDCT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->DDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 616
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "THS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->THS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 618
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "GMC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->GMC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    .line 619
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    const/4 v0, 0x7

    .line 606
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->MT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->AT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->WDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->DDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->THS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->GMC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 623
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;
    .locals 1

    .line 627
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->MT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->MT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 628
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->AT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->AT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 629
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->WDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->WDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 630
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->DDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->DDCT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 631
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->THS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->THS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 632
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->GMC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->GMC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0

    .line 633
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;
    .locals 1

    .line 606
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;
    .locals 1

    .line 606
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    return-object v0
.end method
