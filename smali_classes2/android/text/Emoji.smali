.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static CANCEL_TAG:I = 0xe007f

.field public static COMBINING_ENCLOSING_KEYCAP:I = 0x20e3

.field public static VARIATION_SELECTOR_16:I = 0xfe0f

.field public static ZERO_WIDTH_JOINER:I = 0x200d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmoji(I)Z
    .locals 1

    .line 98
    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmojiModifier(I)Z
    .locals 1

    const/16 v0, 0x3b

    .line 46
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isEmojiModifierBase(I)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1f91d

    if-eq p0, v1, :cond_4

    const v1, 0x1f93c

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x1f9b5

    if-gt v1, p0, :cond_1

    const v1, 0x1f9b6

    if-le p0, v1, :cond_2

    :cond_1
    const v1, 0x1f9b8

    if-gt v1, p0, :cond_3

    const v1, 0x1f9b9

    if-gt p0, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 v0, 0x3c

    .line 69
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static isKeycapBase(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNewEmoji(I)Z
    .locals 4

    const/4 v0, 0x0

    const v1, 0x1f6f9

    if-lt p0, v1, :cond_a

    const v2, 0x1f9ff

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x265f

    if-eq p0, v3, :cond_8

    const/16 v3, 0x267e

    if-eq p0, v3, :cond_8

    if-eq p0, v1, :cond_8

    const v1, 0x1f97a

    if-eq p0, v1, :cond_8

    const v1, 0x1f94d

    if-gt v1, p0, :cond_1

    const v1, 0x1f94f

    if-le p0, v1, :cond_8

    :cond_1
    const v1, 0x1f96c

    if-gt v1, p0, :cond_2

    const v1, 0x1f970

    if-le p0, v1, :cond_8

    :cond_2
    const v1, 0x1f973

    if-gt v1, p0, :cond_3

    const v1, 0x1f976

    if-le p0, v1, :cond_8

    :cond_3
    const v1, 0x1f97c

    if-gt v1, p0, :cond_4

    const v1, 0x1f97f

    if-le p0, v1, :cond_8

    :cond_4
    const v1, 0x1f998

    if-gt v1, p0, :cond_5

    const v1, 0x1f9a2

    if-le p0, v1, :cond_8

    :cond_5
    const v1, 0x1f9b0

    if-gt v1, p0, :cond_6

    const v1, 0x1f9b9

    if-le p0, v1, :cond_8

    :cond_6
    const v1, 0x1f9c1

    if-gt v1, p0, :cond_7

    const v1, 0x1f9c2

    if-le p0, v1, :cond_8

    :cond_7
    const v1, 0x1f9e7

    if-gt v1, p0, :cond_9

    if-gt p0, v2, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v0
.end method

.method public static isRegionalIndicatorSymbol(I)Z
    .locals 1

    const v0, 0x1f1e6

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTagSpecChar(I)Z
    .locals 1

    const v0, 0xe0020

    if-gt v0, p0, :cond_0

    const v0, 0xe007e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
