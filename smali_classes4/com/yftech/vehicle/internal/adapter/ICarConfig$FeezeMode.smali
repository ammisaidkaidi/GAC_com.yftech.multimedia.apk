.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeezeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum FIFTEEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum ONE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum RESERVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum THIRTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum TWENTY_FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum TWENTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1606
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "ONE_MIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->ONE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1608
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "FIVE_MIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1610
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "TEN_MIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1612
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "FIFTEEN_MIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIFTEEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1614
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "TWENTY_MIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1616
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "TWENTY_FIVE_MIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1618
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "THIRTY_MIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->THIRTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1620
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "RESERVE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->RESERVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    .line 1621
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const-string v1, "__UNKNOWN__"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    const/16 v0, 0x9

    .line 1604
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->ONE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIFTEEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->THIRTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->RESERVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1624
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1625
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;
    .locals 1

    .line 1629
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->ONE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->ONE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1630
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1631
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1632
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIFTEEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->FIFTEEN_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1633
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1634
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->TWENTY_FIVE_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1635
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->THIRTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->THIRTY_MIN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1636
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->RESERVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->RESERVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0

    .line 1637
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;
    .locals 1

    .line 1604
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;
    .locals 1

    .line 1604
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    return-object v0
.end method
