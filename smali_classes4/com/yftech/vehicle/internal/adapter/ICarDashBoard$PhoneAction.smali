.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;
.super Ljava/lang/Enum;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum ANSWER_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum ENDING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum MUTE_MIC:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum REFUSE_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum USE_HANDSET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1287
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "MUTE_MIC"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->MUTE_MIC:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1289
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "USE_HANDSET"

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->USE_HANDSET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1291
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "ENDING_CALL"

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-direct {v0, v1, v7, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ENDING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1293
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "REFUSE_CALL"

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->REFUSE_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1295
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "ANSWER_CALL"

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ANSWER_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1296
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    .line 1285
    new-array v0, v2, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->MUTE_MIC:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->USE_HANDSET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ENDING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->REFUSE_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ANSWER_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1300
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;
    .locals 1

    .line 1303
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->MUTE_MIC:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->MUTE_MIC:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0

    .line 1304
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->USE_HANDSET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->USE_HANDSET:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0

    .line 1305
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ENDING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ENDING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0

    .line 1306
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->REFUSE_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->REFUSE_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0

    .line 1307
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ANSWER_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->ANSWER_CALL:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0

    .line 1308
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;
    .locals 1

    .line 1285
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;
    .locals 1

    .line 1285
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$PhoneAction;

    return-object v0
.end method
