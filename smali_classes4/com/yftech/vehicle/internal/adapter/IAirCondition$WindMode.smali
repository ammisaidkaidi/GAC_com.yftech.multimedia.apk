.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum FACE_FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum FOOT_DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 49
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "FACE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 50
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "FACE_FOOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE_FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 51
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "FOOT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 52
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "FOOT_DEFROST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT_DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 53
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "DEFROST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 54
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v7, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    .line 55
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    const/4 v0, 0x7

    .line 48
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE_FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT_DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
    .locals 1

    .line 63
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 64
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE_FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE_FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 65
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 66
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT_DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT_DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 67
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->DEFROST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 68
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0

    .line 69
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
    .locals 1

    .line 48
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
    .locals 1

    .line 48
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    return-object v0
.end method
