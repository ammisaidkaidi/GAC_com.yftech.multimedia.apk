.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadarNumber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_0_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_2_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_2_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_4_MID_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum FRONT_6_REAR_6:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 958
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 960
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_0_REAR_3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 962
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_0_REAR_4"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 963
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_2_REAR_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 965
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_2_REAR_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 967
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_4_REAR_4"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 969
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_4_MID_4_REAR_4"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_MID_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 971
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "FRONT_6_REAR_6"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_6_REAR_6:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    .line 972
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const-string v1, "__UNKNOWN__"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const/16 v0, 0x9

    .line 956
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_MID_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_6_REAR_6:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 975
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 976
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;
    .locals 1

    .line 980
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 981
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 982
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 983
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 984
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_2_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 985
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 986
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_MID_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_4_MID_4_REAR_4:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 987
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_6_REAR_6:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_6_REAR_6:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0

    .line 988
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;
    .locals 1

    .line 956
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;
    .locals 1

    .line 956
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    return-object v0
.end method
