.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
.super Ljava/lang/Enum;
.source "ICarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowRoofOpenOpertion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum EXPANDED_SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum POSITION_NOT_TRUSTED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 157
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "FULLY_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 158
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "SLIDE_OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 159
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "TILT_UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 160
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "OPENING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 161
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "CLOSING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 162
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "REVERSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 163
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "POSITION_NOT_TRUSTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->POSITION_NOT_TRUSTED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 164
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "FULLY_OPENED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 165
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "COMFORT_POSITION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "EXPANDED_SLIDE_OPEN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->EXPANDED_SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    .line 167
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const-string v1, "__UNKNOWN__"

    const/16 v12, 0xa

    const/4 v13, -0x1

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const/16 v0, 0xb

    .line 156
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->POSITION_NOT_TRUSTED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->EXPANDED_SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 1

    .line 175
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 176
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 177
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 178
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 179
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 180
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 181
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->POSITION_NOT_TRUSTED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->POSITION_NOT_TRUSTED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 182
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 183
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 184
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->EXPANDED_SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->EXPANDED_SLIDE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0

    .line 185
    :cond_9
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 1

    .line 156
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 1

    .line 156
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object v0
.end method
