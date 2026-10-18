.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;
.super Ljava/lang/Enum;
.source "ICarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowOpenPercent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum FIFTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum NINETY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum SEVENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum TEN_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum THIRTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum WIND_BREATHE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "STOP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "FULLY_OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "FULLY_CLOSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "TEN_PERCENT_OPEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TEN_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 70
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "TWENTY_PERCENT_OPEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 71
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "THIRTY_PERCENT_OPEN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->THIRTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 72
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "FORTY_PERCENT_OPEN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 73
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "FIFTY_PERCENT_OPEN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FIFTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 74
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "SIXTY_PERCENT_OPEN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 75
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "SEVENTY_PERCENT_OPEN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SEVENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 76
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "EIGHTY_PERCENT_OPEN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 77
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "NINETY_PERCENT_OPEN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->NINETY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 79
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "CHANGE_OPEN"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "CHANGE_CLOSE"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 83
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "WIND_BREATHE"

    const/16 v15, 0x69

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->WIND_BREATHE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 84
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const-string v1, "__UNKNOWN__"

    const/16 v15, 0xf

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const/16 v0, 0x10

    .line 65
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TEN_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->THIRTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FIFTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SEVENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->NINETY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->WIND_BREATHE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;
    .locals 1

    .line 92
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 93
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 94
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 95
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TEN_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TEN_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 96
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 97
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->THIRTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->THIRTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 98
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 99
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FIFTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FIFTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 100
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 101
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SEVENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SEVENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 102
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 103
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->NINETY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->NINETY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 104
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 105
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 106
    :cond_d
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->WIND_BREATHE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->value:I

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->WIND_BREATHE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0

    .line 107
    :cond_e
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;
    .locals 1

    .line 65
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    return-object v0
.end method
