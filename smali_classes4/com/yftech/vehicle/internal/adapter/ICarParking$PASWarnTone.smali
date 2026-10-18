.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;
.super Ljava/lang/Enum;
.source "ICarParking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASWarnTone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum CONTINUOUS_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum FAST_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum MEDIUM_SPEED_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum MUTE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum SLOW_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 51
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 52
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "CONTINUOUS_TONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->CONTINUOUS_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 53
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "FAST_INTERMITTENT_TONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->FAST_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 54
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "MEDIUM_SPEED_INTERMITTENT_TONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MEDIUM_SPEED_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 55
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "SLOW_INTERMITTENT_TONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->SLOW_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 56
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "MUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MUTE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    .line 57
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    const/4 v0, 0x7

    .line 50
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->CONTINUOUS_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->FAST_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MEDIUM_SPEED_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->SLOW_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MUTE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 66
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->CONTINUOUS_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->CONTINUOUS_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 67
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->FAST_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->FAST_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 68
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MEDIUM_SPEED_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MEDIUM_SPEED_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 69
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->SLOW_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->SLOW_INTERMITTENT_TONE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 70
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MUTE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->MUTE:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0

    .line 71
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;
    .locals 1

    .line 50
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;
    .locals 1

    .line 50
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;

    return-object v0
.end method
