.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AndroidBidi$EmojiBidiOverride;
    }
.end annotation


# static fields
.field private static final sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-direct {v0}, Landroid/text/AndroidBidi$EmojiBidiOverride;-><init>()V

    sput-object v0, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 69
    array-length v0, p1

    .line 70
    array-length v1, p2

    if-lt v1, v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p0, v2

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x7e

    goto :goto_0

    :pswitch_2
    move p0, v1

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x7f

    .line 82
    :goto_0
    new-instance v3, Landroid/icu/text/Bidi;

    invoke-direct {v3, v0, v2}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 83
    sget-object v4, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-virtual {v3, v4}, Landroid/icu/text/Bidi;->setCustomClassifier(Landroid/icu/text/BidiClassifier;)V

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v3, p1, p0, v4}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    :goto_1
    if-ge v2, v0, :cond_0

    .line 86
    invoke-virtual {v3, v2}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result p0

    aput-byte p0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v3}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    return v1

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 16

    move/from16 v2, p5

    if-nez v2, :cond_0

    .line 107
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_0
    const/4 v4, 0x1

    move/from16 v5, p0

    if-ne v5, v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, v4

    .line 111
    :goto_0
    aget-byte v6, p1, p2

    add-int/lit8 v7, p2, 0x1

    add-int v8, p2, v2

    move v10, v4

    move v9, v6

    :goto_1
    if-ge v7, v8, :cond_3

    .line 115
    aget-byte v11, p1, v7

    if-eq v11, v9, :cond_2

    add-int/lit8 v10, v10, 0x1

    move v9, v11

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v7, v9, 0x1

    and-int/lit8 v8, v5, 0x1

    if-eq v7, v8, :cond_7

    move v7, v2

    :cond_4
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_6

    add-int v9, p4, v7

    .line 127
    aget-char v9, p3, v9

    const/16 v12, 0xa

    if-ne v9, v12, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    const/16 v12, 0x20

    if-eq v9, v12, :cond_4

    const/16 v12, 0x9

    if-eq v9, v12, :cond_4

    :cond_6
    :goto_2
    add-int/2addr v7, v4

    if-eq v7, v2, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    move v7, v2

    :cond_8
    :goto_3
    if-ne v10, v4, :cond_a

    if-ne v6, v5, :cond_a

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 149
    :cond_9
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_a
    mul-int/lit8 v8, v10, 0x2

    .line 152
    new-array v8, v8, [I

    shl-int/lit8 v9, v6, 0x1a

    add-int v11, p2, v7

    move/from16 v13, p2

    move v12, v4

    move v3, v6

    move v15, v3

    move v14, v9

    move v9, v15

    move v6, v13

    :goto_4
    if-ge v6, v11, :cond_e

    .line 163
    aget-byte v4, p1, v6

    if-eq v4, v9, :cond_d

    if-le v4, v15, :cond_b

    move v15, v4

    goto :goto_5

    :cond_b
    if-ge v4, v3, :cond_c

    move v3, v4

    :cond_c
    :goto_5
    add-int/lit8 v9, v12, 0x1

    sub-int v13, v6, v13

    or-int/2addr v13, v14

    .line 172
    aput v13, v8, v12

    add-int/lit8 v12, v9, 0x1

    sub-int v13, v6, p2

    .line 173
    aput v13, v8, v9

    shl-int/lit8 v9, v4, 0x1a

    move v13, v6

    move v14, v9

    move v9, v4

    :cond_d
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    sub-int/2addr v11, v13

    or-int v1, v11, v14

    .line 178
    aput v1, v8, v12

    if-ge v7, v2, :cond_f

    const/4 v1, 0x1

    add-int/2addr v12, v1

    .line 180
    aput v7, v8, v12

    add-int/2addr v12, v1

    sub-int v1, v2, v7

    shl-int/lit8 v2, v5, 0x1a

    or-int/2addr v1, v2

    .line 181
    aput v1, v8, v12

    :cond_f
    and-int/lit8 v1, v3, 0x1

    if-ne v1, v5, :cond_11

    add-int/lit8 v3, v3, 0x1

    if-le v15, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    move v2, v1

    const/4 v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x1

    if-le v10, v1, :cond_12

    move v2, v1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_17

    sub-int/2addr v15, v1

    :goto_8
    if-lt v15, v3, :cond_17

    const/4 v1, 0x0

    .line 204
    :goto_9
    array-length v2, v8

    if-ge v1, v2, :cond_16

    .line 205
    aget v2, v8, v1

    aget-byte v2, p1, v2

    if-lt v2, v15, :cond_15

    add-int/lit8 v2, v1, 0x2

    .line 207
    :goto_a
    array-length v4, v8

    if-ge v2, v4, :cond_13

    aget v4, v8, v2

    aget-byte v4, p1, v4

    if-lt v4, v15, :cond_13

    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_13
    add-int/lit8 v4, v2, -0x2

    :goto_b
    if-ge v1, v4, :cond_14

    .line 211
    aget v5, v8, v1

    aget v6, v8, v4

    aput v6, v8, v1

    aput v5, v8, v4

    add-int/lit8 v5, v1, 0x1

    .line 212
    aget v6, v8, v5

    add-int/lit8 v7, v4, 0x1

    aget v9, v8, v7

    aput v9, v8, v5

    aput v6, v8, v7

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, -0x2

    goto :goto_b

    :cond_14
    add-int/lit8 v1, v2, 0x2

    :cond_15
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_16
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 219
    :cond_17
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method
