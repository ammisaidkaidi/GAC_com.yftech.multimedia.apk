.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TailDoorCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 206
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "STOP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 207
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "FULLY_OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 208
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "FULLY_CLOSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 209
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "OPEN_TWENTY_PERCENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 210
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "OPEN_FORTY_PERCENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 211
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "OPEN_SIXTY_PERCENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 212
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "OPEN_EIGHTY_PERCENT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    .line 213
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    const/16 v0, 0x8

    .line 205
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;
    .locals 1

    .line 221
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 222
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 223
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 224
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 225
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 226
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 227
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0

    .line 228
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;
    .locals 1

    .line 205
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;
    .locals 1

    .line 205
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    return-object v0
.end method
