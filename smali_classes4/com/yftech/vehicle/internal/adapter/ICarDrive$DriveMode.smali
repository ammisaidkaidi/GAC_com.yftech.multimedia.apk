.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum AI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum ATS_MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum ATS_SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum ATS_SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum INDIVIDUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum OFFROAD_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 36
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "NOT_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "ECO_PRO_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "COMFORT_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "SPORT_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "INDIVIDUAL_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->INDIVIDUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "SPORT_PLUS_MODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "AI_MODE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->AI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "OFFROAD_MODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->OFFROAD_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "ATS_SAND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "ATS_MUD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 46
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "ATS_SNOW"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 47
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/16 v0, 0xc

    .line 35
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->INDIVIDUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->AI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->OFFROAD_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 1

    .line 55
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->NOT_VALID:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 57
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 58
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 59
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->INDIVIDUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->INDIVIDUAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 60
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 61
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->AI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->AI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 62
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->OFFROAD_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->OFFROAD_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 63
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 64
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_MUD:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 65
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ATS_SNOW:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 66
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 1

    .line 35
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object v0
.end method
