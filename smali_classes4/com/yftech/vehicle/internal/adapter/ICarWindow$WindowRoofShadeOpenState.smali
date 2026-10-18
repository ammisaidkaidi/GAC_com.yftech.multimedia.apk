.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;
.super Ljava/lang/Enum;
.source "ICarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowRoofShadeOpenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum CHANGE_CLOSE_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum CHANGE_OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum ROOF_COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 193
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "ROOF_FULLY_CLOSE"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 194
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "ROOF_TILT_UP"

    const/4 v3, 0x1

    const/16 v4, 0x66

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 195
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "ROOF_COMFORT_POSITION"

    const/4 v4, 0x2

    const/16 v5, 0x67

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 196
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "ROOF_FULLY_OPEN"

    const/4 v5, 0x3

    const/16 v6, 0x68

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 197
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "SHADE_CLOSE"

    const/4 v6, 0x4

    const/16 v7, 0x69

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 198
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "SHADE_OPEN"

    const/4 v7, 0x5

    const/16 v8, 0x6a

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 199
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "CHANGE_OPEN_TWENTY_PERCENT"

    const/4 v8, 0x6

    const/16 v9, 0x6b

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 200
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "CHANGE_CLOSE_TWENTY_PERCENT"

    const/4 v9, 0x7

    const/16 v10, 0x6c

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_CLOSE_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 201
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "STOP"

    const/16 v10, 0x8

    const/16 v11, 0x6d

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    .line 202
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    const/16 v0, 0xa

    .line 192
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_CLOSE_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;
    .locals 1

    .line 210
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 211
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 212
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_COMFORT_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 213
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 214
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 215
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 216
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 217
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_CLOSE_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->CHANGE_CLOSE_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 218
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0

    .line 219
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;
    .locals 1

    .line 192
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;
    .locals 1

    .line 192
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    return-object v0
.end method
