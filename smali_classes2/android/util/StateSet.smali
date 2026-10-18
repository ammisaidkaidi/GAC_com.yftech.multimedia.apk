.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x14

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 80
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    if-ne v0, v1, :cond_6

    .line 85
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 86
    :goto_0
    sget-object v3, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 87
    sget-object v3, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v3, v3, v2

    move v5, v1

    .line 88
    :goto_1
    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 89
    sget-object v6, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_0

    mul-int/lit8 v6, v2, 0x2

    .line 90
    aput v3, v0, v6

    add-int/2addr v6, v4

    .line 91
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v0, v6

    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_2
    sget-object v2, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    shl-int v2, v4, v2

    .line 97
    new-array v2, v2, [[I

    sput-object v2, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    move v2, v1

    .line 98
    :goto_2
    sget-object v3, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 100
    new-array v3, v3, [I

    move v5, v1

    move v6, v5

    .line 102
    :goto_3
    array-length v7, v0

    if-ge v5, v7, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 103
    aget v7, v0, v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 104
    aget v8, v0, v5

    aput v8, v3, v6

    move v6, v7

    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 107
    :cond_4
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    :cond_5
    new-array v0, v1, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 130
    new-array v0, v4, [I

    aput v1, v0, v1

    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    return-void

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAttribute([[II)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 240
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_3

    .line 244
    :cond_0
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-eq v6, p1, :cond_2

    neg-int v6, v6

    if-ne v6, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 270
    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "A "

    .line 290
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "P "

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "S "

    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v3, "C "

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v3, "E "

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v3, "W "

    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v3, "F "

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_6
        0x101009d -> :sswitch_5
        0x101009e -> :sswitch_4
        0x10100a0 -> :sswitch_3
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x10102fe -> :sswitch_0
    .end sparse-switch
.end method

.method public static get(I)[I
    .locals 1

    .line 113
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 116
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object p0, v0, p0

    return-object p0

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid state set mask"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isWildCard([I)Z
    .locals 2

    .line 138
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static stateSetMatches([II)Z
    .locals 5

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 211
    aget v4, p0, v2

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-lez v4, :cond_1

    if-eq p1, v4, :cond_2

    return v1

    :cond_1
    neg-int v3, v4

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static stateSetMatches([I[I)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    .line 150
    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 152
    :cond_2
    array-length v2, p0

    .line 153
    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_a

    .line 155
    aget v5, p0, v4

    if-nez v5, :cond_3

    return v0

    :cond_3
    if-lez v5, :cond_4

    move v6, v5

    move v5, v0

    goto :goto_2

    :cond_4
    neg-int v5, v5

    move v6, v5

    move v5, v1

    :goto_2
    move v7, v1

    :goto_3
    if-ge v7, v3, :cond_8

    .line 170
    aget v8, p1, v7

    if-nez v8, :cond_5

    if-eqz v5, :cond_8

    return v1

    :cond_5
    if-ne v8, v6, :cond_7

    if-eqz v5, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move v6, v1

    :goto_4
    if-eqz v5, :cond_9

    if-nez v6, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return v0
.end method

.method public static trimStateSet([II)[I
    .locals 2

    .line 255
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 259
    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 260
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
