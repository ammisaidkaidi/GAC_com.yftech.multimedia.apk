.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeakerCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum ALL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum ONLY_FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum ONLY_FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum ONLY_RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum ONLY_RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum STOP_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "ALL_SPEAKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ALL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "ONLY_FR_SPEAKER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "ONLY_FL_SPEAKER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "ONLY_RR_SPEAKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "ONLY_RL_SPEAKER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "STOP_SPEAKER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->STOP_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    const/4 v0, 0x7

    .line 37
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ALL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->STOP_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ALL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ALL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 54
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 55
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 56
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->ONLY_RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 57
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->STOP_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->STOP_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0

    .line 58
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;
    .locals 1

    .line 37
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;

    return-object v0
.end method
