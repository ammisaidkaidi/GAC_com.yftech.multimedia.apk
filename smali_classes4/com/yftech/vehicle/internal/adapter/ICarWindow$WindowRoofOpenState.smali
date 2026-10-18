.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;
.super Ljava/lang/Enum;
.source "ICarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowRoofOpenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum ONE_HUNDRED_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum SHADE_CLOS:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 115
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "STOP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 116
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "FULLY_OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 117
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "FULLY_CLOSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 118
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "TILT_UP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 119
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "SHADE_OPEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 120
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "SHADE_CLOS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_CLOS:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 121
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "TWENTY_PERCENT_OPEN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 122
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "FORTY_PERCENT_OPEN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 123
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "SIXTY_PERCENT_OPEN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 124
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "EIGHTY_PERCENT_OPEN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 125
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "ONE_HUNDRED_PERCENT_OPEN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->ONE_HUNDRED_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 126
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "CHANGE_OPEN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 127
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "CHANGE_CLOSE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    .line 128
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const-string v1, "__UNKNOWN__"

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const/16 v0, 0xe

    .line 114
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_CLOS:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->ONE_HUNDRED_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    aput-object v1, v0, v15

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;
    .locals 1

    .line 136
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 137
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 138
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 139
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 140
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 141
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_CLOS:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SHADE_CLOS:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 142
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 143
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 144
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 145
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 146
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->ONE_HUNDRED_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->ONE_HUNDRED_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 147
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 148
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0

    .line 149
    :cond_c
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;
    .locals 1

    .line 114
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;
    .locals 1

    .line 114
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenState;

    return-object v0
.end method
