.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 4

    .line 94
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return p1

    .line 98
    :cond_0
    check-cast p0, Landroid/text/Spanned;

    const-class v0, Landroid/text/style/ReplacementSpan;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    const/4 v1, 0x0

    .line 99
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 100
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 101
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move p1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 4

    .line 322
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p3

    and-int/lit16 p3, p3, -0x70f4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 328
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    return v1

    .line 333
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p3

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v0

    .line 334
    :goto_0
    invoke-static {p2, v1, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    const/4 v3, 0x2

    .line 335
    invoke-static {p2, v3, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result p4

    if-ne p4, v1, :cond_4

    move p4, v1

    goto :goto_2

    :cond_4
    move p4, v0

    :goto_2
    if-eqz p3, :cond_7

    if-nez p4, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    .line 342
    :cond_5
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result p0

    return p0

    :cond_6
    :goto_3
    return v0

    :cond_7
    if-eqz p4, :cond_8

    .line 346
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result p3

    if-eqz p3, :cond_8

    return v1

    .line 351
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p3

    if-eqz p5, :cond_b

    .line 355
    instance-of p4, p1, Landroid/widget/TextView;

    if-eqz p4, :cond_9

    .line 356
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    goto :goto_4

    .line 358
    :cond_9
    iget-object p0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 359
    :try_start_0
    sget-object p1, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_a

    .line 360
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 362
    :cond_a
    sget-object p1, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p1

    .line 365
    :goto_4
    invoke-static {p2, p3, p0}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result p0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 363
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 367
    :cond_b
    invoke-static {p2, p3}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result p0

    :goto_5
    if-eq p3, p0, :cond_c

    .line 370
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v1

    :cond_c
    return v0
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 1

    .line 440
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 441
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 443
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 444
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 445
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    if-eq p0, v0, :cond_0

    .line 447
    invoke-interface {p2, v0, p0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 1

    .line 425
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    .line 426
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    if-ge p1, p0, :cond_0

    move v0, p1

    move p1, p0

    move p0, v0

    :cond_0
    if-eq p0, p1, :cond_1

    .line 433
    invoke-interface {p2, p0, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 3

    .line 377
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    .line 380
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 386
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    .line 391
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 392
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 399
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0}, Landroid/text/method/WordIterator;-><init>()V

    :cond_5
    const/4 p1, -0x1

    if-eqz p3, :cond_7

    .line 407
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {v0, p2, p0, p3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 408
    invoke-virtual {v0, p0}, Landroid/text/method/WordIterator;->following(I)I

    move-result p3

    if-ne p3, p1, :cond_6

    .line 410
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_0

    :cond_6
    move p1, p3

    goto :goto_0

    .line 414
    :cond_7
    invoke-virtual {v0, p2, v1, p0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 415
    invoke-virtual {v0, p0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result p3

    if-ne p3, p1, :cond_8

    move p1, p0

    move p0, v1

    goto :goto_0

    :cond_8
    move p1, p0

    move p0, p3

    .line 420
    :goto_0
    invoke-interface {p2, p0, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    return v0

    :cond_0
    move v2, p1

    move v3, v0

    move v4, v3

    move v5, v4

    .line 161
    :cond_1
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 162
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int/2addr v2, v7

    const/4 v7, 0x4

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v11, 0xd

    packed-switch v3, :pswitch_data_0

    .line 298
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is unknown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :pswitch_0
    invoke-static {v6}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_7

    .line 287
    :cond_2
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    goto/16 :goto_5

    :cond_3
    move v4, v9

    goto/16 :goto_5

    .line 200
    :pswitch_1
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v4, v4, -0x2

    :goto_0
    move v3, v8

    goto/16 :goto_7

    .line 192
    :pswitch_2
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v4, v4, 0x2

    const/16 v3, 0xb

    goto/16 :goto_7

    .line 274
    :pswitch_3
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    .line 276
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    move v5, v0

    goto :goto_2

    .line 262
    :pswitch_4
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v4, v3

    .line 264
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v7, v10

    :goto_1
    move v3, v7

    goto/16 :goto_7

    .line 266
    :cond_5
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 267
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    const/16 v5, 0x9

    goto :goto_3

    .line 255
    :pswitch_5
    sget v3, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v6, v3, :cond_9

    const/16 v3, 0x8

    goto/16 :goto_7

    .line 242
    :pswitch_6
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 243
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    :goto_2
    move v3, v10

    goto/16 :goto_7

    .line 248
    :cond_6
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 249
    invoke-static {v6}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 250
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_5

    .line 236
    :pswitch_7
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 237
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    goto :goto_5

    .line 226
    :pswitch_8
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    const/4 v5, 0x5

    goto :goto_3

    .line 230
    :cond_7
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 231
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_5

    .line 220
    :pswitch_9
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 221
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    goto :goto_5

    .line 208
    :pswitch_a
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    const/4 v5, 0x3

    :goto_3
    move v12, v5

    move v5, v3

    :goto_4
    move v3, v12

    goto/16 :goto_7

    .line 214
    :cond_8
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 215
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_5

    :pswitch_b
    if-ne v6, v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    :goto_5
    move v3, v11

    goto :goto_7

    .line 166
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    if-ne v6, v8, :cond_a

    move v4, v3

    move v3, v1

    goto :goto_7

    .line 169
    :cond_a
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x6

    :goto_6
    move v12, v4

    move v4, v3

    goto :goto_4

    .line 171
    :cond_b
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v3

    goto/16 :goto_0

    .line 173
    :cond_c
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v3

    goto/16 :goto_1

    .line 175
    :cond_d
    sget v4, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v6, v4, :cond_e

    move v4, v3

    move v3, v9

    goto :goto_7

    .line 177
    :cond_e
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v3

    goto/16 :goto_2

    .line 179
    :cond_f
    sget v4, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v6, v4, :cond_10

    const/16 v4, 0xc

    goto :goto_6

    :cond_10
    move v4, v3

    goto :goto_5

    :goto_7
    if-lez v2, :cond_11

    if-ne v3, v11, :cond_1

    :cond_11
    sub-int/2addr p1, v4

    .line 302
    invoke-static {p0, p1, v1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v5, p1

    .line 313
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    const/4 p2, 0x0

    .line 316
    invoke-static {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method private static isVariationSelector(I)Z
    .locals 1

    const/16 v0, 0x24

    .line 88
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 1

    .line 457
    sget-object v0, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x4001

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x2001

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x1001

    :goto_0
    if-eqz p1, :cond_0

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 83
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x43

    if-eq p3, v0, :cond_1

    const/16 v0, 0x70

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 490
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 p0, 0x1

    return p0

    .line 494
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 502
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 503
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    .line 509
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ge v0, p0, :cond_1

    move v1, v0

    move v0, p0

    move p0, v1

    .line 516
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    return p1

    .line 521
    :cond_2
    invoke-interface {p2, p0, v0, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p1
.end method
