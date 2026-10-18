.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 552
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 35
    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 37
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 39
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 40
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_1

    .line 43
    :cond_1
    check-cast p1, Landroid/text/Spanned;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 2

    if-lt p3, p2, :cond_2

    .line 468
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result p0

    if-gt p2, p0, :cond_1

    if-gt p3, p0, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts before 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 471
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ends beyond length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has end before start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    return-void
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;IIZ)V
    .locals 10

    .line 97
    iget-object v0, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 98
    iget-object v1, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 99
    iget v2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_3

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v8, v7, 0x0

    .line 103
    aget v8, v0, v8

    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 104
    aget v7, v0, v7

    .line 105
    invoke-direct {p0, p2, p3, v8, v7}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    aget-object v7, v1, v4

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_2

    if-eqz p4, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    return-void

    :cond_4
    if-nez v6, :cond_5

    if-nez p2, :cond_5

    .line 117
    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v4

    if-ne p3, v4, :cond_5

    .line 118
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 119
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 120
    iget p2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput p2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 121
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p4, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p4, p4

    invoke-static {p2, v3, p3, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object p1, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p0, p0

    invoke-static {p1, v3, p2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 124
    :cond_5
    iput v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 125
    iget p1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move p1, v3

    :goto_2
    if-ge v3, v2, :cond_a

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 128
    aget v5, v0, v5

    add-int/lit8 v6, v4, 0x1

    .line 129
    aget v6, v0, v6

    .line 130
    invoke-direct {p0, p2, p3, v5, v6}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz p4, :cond_6

    aget-object v7, v1, v3

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    if-ge v5, p2, :cond_7

    move v5, p2

    :cond_7
    if-le v6, p3, :cond_8

    move v6, p3

    .line 137
    :cond_8
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v8, v1, v3

    aput-object v8, v7, p1

    .line 138
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v8, p1, 0x3

    add-int/lit8 v9, v8, 0x0

    sub-int/2addr v5, p2

    aput v5, v7, v9

    .line 139
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v7, v8, 0x1

    sub-int/2addr v6, p2

    aput v6, v5, v7

    .line 140
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, v0, v4

    aput v4, v5, v8

    add-int/lit8 p1, p1, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    return-void
.end method

.method private copySpans(Landroid/text/Spanned;II)V
    .locals 1

    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    return-void
.end method

.method private copySpans(Landroid/text/Spanned;IIZ)V
    .locals 11

    .line 66
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    if-eqz p4, :cond_0

    .line 69
    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 73
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 74
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-ge v2, p2, :cond_1

    move v2, p2

    :cond_1
    if-le v3, p3, :cond_2

    move v3, p3

    .line 81
    :cond_2
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 0

    const/4 p0, 0x1

    if-gt p3, p2, :cond_3

    if-ge p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p3, p4, :cond_2

    if-eq p1, p2, :cond_2

    if-eq p3, p2, :cond_1

    if-ne p4, p1, :cond_2

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return p0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ... "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    .line 430
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 431
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 434
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 448
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 450
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 453
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    .line 439
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 440
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 443
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 10

    const-string/jumbo v0, "setSpan"

    .line 189
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 192
    invoke-direct {p0, p2}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " follows "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    .line 198
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    invoke-direct {p0, p3}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_2

    return-void

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " follows "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    .line 207
    invoke-virtual {p0, p3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_3
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 212
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p5, :cond_5

    .line 216
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_4

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 p5, v3, 0x0

    .line 217
    aget v6, v1, p5

    add-int/lit8 v0, v3, 0x1

    .line 218
    aget v7, v1, v0

    .line 220
    aput p2, v1, p5

    .line 221
    aput p3, v1, v0

    add-int/lit8 v3, v3, 0x2

    .line 222
    aput p4, v1, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    .line 224
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_5
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 p5, p5, 0x1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p5, v0, :cond_6

    .line 230
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 231
    invoke-static {p5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p5

    .line 230
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p5

    .line 232
    array-length v0, p5

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 234
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v1, v2, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iput-object p5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 238
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 241
    :cond_6
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, p5, v0

    .line 242
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    aput p2, p5, v0

    .line 243
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    aput p3, p5, v0

    .line 244
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, p5, v0

    .line 245
    iget p4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 247
    instance-of p4, p0, Landroid/text/Spannable;

    if-eqz p4, :cond_7

    .line 248
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 0

    .line 164
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 486
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    check-cast p1, Landroid/text/Spanned;

    .line 490
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 491
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_5

    move v2, v1

    .line 492
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v2, v3, :cond_4

    .line 493
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 494
    aget-object v4, v0, v2

    if-ne v3, p0, :cond_1

    if-ne p1, v4, :cond_0

    .line 497
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 498
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 499
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_0
    return v1

    .line 502
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 503
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 504
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 505
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public final getChars(II[CI)V
    .locals 0

    .line 174
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3

    .line 299
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 300
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 301
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 304
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 305
    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3

    .line 313
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 314
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 315
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 318
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    .line 319
    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3

    .line 285
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 286
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 287
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 290
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    .line 291
    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 329
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 330
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 331
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v6

    move v3, v4

    move v5, v3

    :goto_0
    const/4 v8, 0x1

    if-ge v3, v0, :cond_a

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v10, v9, 0x0

    .line 336
    aget v10, v2, v10

    add-int/lit8 v11, v9, 0x1

    .line 337
    aget v11, v2, v11

    if-le v10, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ge v11, p1, :cond_1

    goto :goto_3

    :cond_1
    if-eq v10, v11, :cond_3

    if-eq p1, p2, :cond_3

    if-ne v10, p2, :cond_2

    goto :goto_3

    :cond_2
    if-ne v11, p1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    .line 356
    const-class v10, Ljava/lang/Object;

    if-eq p3, v10, :cond_4

    aget-object v10, v1, v3

    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    .line 361
    aget-object v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-ne v5, v8, :cond_6

    sub-int v7, v0, v3

    add-int/2addr v7, v8

    .line 365
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 366
    aput-object v6, v7, v4

    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 369
    aget v8, v2, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    move v10, v4

    :goto_1
    if-ge v10, v5, :cond_8

    .line 374
    aget-object v11, v7, v10

    invoke-virtual {p0, v11}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    and-int/2addr v11, v9

    if-le v8, v11, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v8, v10, 0x1

    sub-int v9, v5, v10

    .line 381
    invoke-static {v7, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    aget-object v8, v1, v3

    aput-object v8, v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v8, v5, 0x1

    .line 385
    aget-object v9, v1, v3

    aput-object v9, v7, v5

    move v5, v8

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    if-nez v5, :cond_b

    .line 391
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    if-ne v5, v8, :cond_c

    .line 394
    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 395
    aput-object v6, p0, v4

    return-object p0

    .line 398
    :cond_c
    array-length p0, v7

    if-ne v5, p0, :cond_d

    return-object v7

    .line 402
    :cond_d
    invoke-static {p3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 403
    invoke-static {v7, v4, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 518
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 519
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 520
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 521
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 523
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 525
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 526
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 527
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final length()I
    .locals 0

    .line 160
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 6

    .line 408
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 409
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 410
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_0

    .line 413
    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v3, 0x0

    .line 417
    aget v4, p0, v4

    add-int/lit8 v3, v3, 0x1

    .line 418
    aget v3, p0, v3

    if-le v4, p1, :cond_1

    if-ge v4, p2, :cond_1

    .line 420
    aget-object v5, v1, v2

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move p2, v4

    :cond_1
    if-le v3, p1, :cond_2

    if-ge v3, p2, :cond_2

    .line 422
    aget-object v4, v1, v2

    invoke-virtual {p3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p2, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .locals 8

    .line 259
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 260
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 264
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 265
    aget v5, v2, v5

    add-int/lit8 v6, v4, 0x1

    .line 266
    aget v6, v2, v6

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v0, v7

    .line 270
    invoke-static {v1, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 271
    invoke-static {v2, v7, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    and-int/lit16 p2, p2, 0x200

    if-nez p2, :cond_0

    .line 277
    invoke-direct {p0, p1, v5, v6}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 178
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object p0
.end method
