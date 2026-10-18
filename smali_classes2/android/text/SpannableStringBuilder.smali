.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final sCachedIntBuffer:[[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCachedIntBuffer"
    .end annotation
.end field


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1761
    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    const/4 v1, 0x6

    .line 1764
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 43
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 14

    move-object v7, p0

    move-object v0, p1

    move/from16 v8, p2

    move/from16 v1, p3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    sget-object v2, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v9, v1, v8

    if-ltz v9, :cond_7

    .line 63
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v2

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 64
    iput v9, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 65
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v2, v2

    sub-int/2addr v2, v9

    iput v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 67
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    const/4 v10, 0x0

    invoke-static {p1, v8, v1, v2, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 69
    iput v10, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 70
    iput v10, v7, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 71
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 72
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 73
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 74
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 75
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 76
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 78
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_6

    .line 79
    move-object v11, v0

    check-cast v11, Landroid/text/Spanned;

    .line 80
    const-class v0, Ljava/lang/Object;

    invoke-interface {v11, v8, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move v13, v10

    .line 82
    :goto_0
    array-length v0, v12

    if-ge v13, v0, :cond_5

    .line 83
    aget-object v0, v12, v13

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 87
    :cond_0
    aget-object v0, v12, v13

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, v8

    .line 88
    aget-object v1, v12, v13

    invoke-interface {v11, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v8

    .line 89
    aget-object v2, v12, v13

    invoke-interface {v11, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-gez v0, :cond_1

    move v0, v10

    :cond_1
    if-le v0, v9, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-gez v1, :cond_3

    move v1, v10

    :cond_3
    if-le v1, v9, :cond_4

    move v4, v9

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    const/4 v1, 0x0

    .line 101
    aget-object v2, v12, v13

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 103
    :cond_5
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_6
    return-void

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private calcMax(I)I
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1696
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1698
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v2, :cond_1

    .line 1699
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v0, :cond_1

    .line 1701
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1704
    :cond_1
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v1, p0, p1

    return v1
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    sub-int v13, v9, v8

    sub-int v14, v12, v11

    sub-int v15, v14, v13

    .line 331
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    :goto_0
    if-ltz v17, :cond_10

    .line 332
    iget-object v1, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v17

    .line 333
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_0

    .line 334
    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 336
    :cond_0
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v17

    .line 337
    iget v3, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1

    .line 338
    iget v3, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 340
    :cond_1
    iget-object v3, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v17

    const/16 v4, 0x33

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_b

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v1, v8, :cond_4

    if-gt v1, v9, :cond_4

    move v5, v9

    :goto_1
    if-ge v5, v3, :cond_3

    if-le v5, v9, :cond_2

    add-int/lit8 v6, v5, -0x1

    .line 347
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-le v2, v8, :cond_7

    if-gt v2, v9, :cond_7

    move v5, v9

    :goto_4
    if-ge v5, v3, :cond_8

    if-le v5, v9, :cond_5

    move/from16 v19, v3

    add-int/lit8 v3, v5, -0x1

    .line 353
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6

    goto :goto_5

    :cond_5
    move/from16 v19, v3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    goto :goto_4

    :cond_7
    move v5, v2

    :cond_8
    :goto_5
    if-ne v6, v1, :cond_a

    if-eq v5, v2, :cond_9

    goto :goto_6

    :cond_9
    move v2, v5

    move v1, v6

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v1, 0x0

    .line 358
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v0, v17

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v19, v0, v17

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move v3, v6

    move v4, v5

    move/from16 v21, v5

    move/from16 v5, v19

    move/from16 v18, v6

    const/4 v10, 0x1

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move v0, v10

    move/from16 v1, v18

    move/from16 v2, v21

    goto :goto_7

    :cond_b
    move v10, v6

    :goto_7
    if-ne v1, v8, :cond_c

    const/16 v1, 0x1000

    goto :goto_8

    :cond_c
    add-int v3, v9, v15

    if-ne v1, v3, :cond_d

    const/16 v1, 0x2000

    goto :goto_8

    :cond_d
    move/from16 v1, v16

    :goto_8
    if-ne v2, v8, :cond_e

    or-int/lit16 v1, v1, 0x4000

    goto :goto_9

    :cond_e
    add-int v3, v9, v15

    if-ne v2, v3, :cond_f

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 369
    :cond_f
    :goto_9
    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v17

    or-int/2addr v1, v3

    aput v1, v2, v17

    add-int/lit8 v17, v17, -0x1

    move v6, v10

    move-object/from16 v10, p3

    goto/16 :goto_0

    :cond_10
    move v10, v6

    if-eqz v0, :cond_11

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 375
    :cond_11
    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 377
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v15, v0, :cond_12

    .line 378
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    add-int/2addr v0, v15

    iget v1, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_12
    if-nez v14, :cond_13

    move v14, v10

    goto :goto_a

    :cond_13
    move/from16 v14, v16

    :goto_a
    if-lez v13, :cond_14

    .line 385
    :goto_b
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v0, :cond_14

    .line 386
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {v7, v8, v9, v14, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    .line 392
    :cond_14
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v0, v15

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 393
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v15

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 395
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-ge v0, v10, :cond_15

    .line 396
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mGapLength < 1"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    :cond_15
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    move v1, v10

    move-object/from16 v9, p3

    invoke-static {v9, v11, v12, v0, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-lez v13, :cond_18

    .line 402
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v2

    iget-object v2, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v2, v2

    if-ne v0, v2, :cond_16

    move v10, v1

    goto :goto_c

    :cond_16
    move/from16 v10, v16

    :goto_c
    move/from16 v13, v16

    .line 404
    :goto_d
    iget v0, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v13, v0, :cond_17

    .line 405
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v13

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v4, v0, 0x4

    .line 406
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v0, v13

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move v5, v10

    move-object/from16 v17, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v17, v13

    .line 409
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v13

    and-int/lit8 v4, v0, 0xf

    .line 410
    iget-object v6, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v0, v13

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v17, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 414
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 417
    :cond_18
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1d

    .line 418
    check-cast v9, Landroid/text/Spanned;

    .line 419
    const-class v0, Ljava/lang/Object;

    invoke-interface {v9, v11, v12, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    move/from16 v13, v16

    .line 421
    :goto_e
    array-length v0, v10

    if-ge v13, v0, :cond_1c

    .line 422
    aget-object v0, v10, v13

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 423
    aget-object v1, v10, v13

    invoke-interface {v9, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v11, :cond_19

    move v0, v11

    :cond_19
    if-le v1, v12, :cond_1a

    move v1, v12

    .line 429
    :cond_1a
    aget-object v2, v10, v13

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1b

    sub-int/2addr v0, v11

    add-int v3, v0, v8

    sub-int/2addr v1, v11

    add-int v4, v1, v8

    .line 432
    aget-object v0, v10, v13

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v5, v0, 0x800

    const/4 v1, 0x0

    .line 434
    aget-object v2, v10, v13

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 438
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    :cond_1d
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 2

    if-lt p3, p2, :cond_2

    .line 1317
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    if-gt p2, p0, :cond_1

    if-gt p3, p0, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    .line 1325
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts before 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1320
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ends beyond length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has end before start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkSortBuffer([II)[I
    .locals 1

    if-eqz p0, :cond_1

    .line 1052
    array-length v0, p0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 1053
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method private final compareSpans(II[I[I)I
    .locals 0

    .line 1143
    aget p0, p3, p1

    .line 1144
    aget p3, p3, p2

    if-ne p0, p3, :cond_0

    .line 1146
    aget p0, p4, p1

    aget p1, p4, p2

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 1150
    :cond_0
    invoke-static {p3, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 5

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    .line 891
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 892
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    .line 893
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_0

    .line 894
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_0
    if-lt v2, p1, :cond_1

    .line 897
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 900
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v2, :cond_7

    .line 901
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    .line 902
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_2

    .line 903
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_2
    if-gt v2, p2, :cond_7

    .line 906
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p4

    .line 907
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_3

    .line 908
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_3
    if-lt v3, p1, :cond_6

    if-eq v2, v3, :cond_4

    if-eq p1, p2, :cond_4

    if-eq v2, p2, :cond_6

    if-eq v3, p1, :cond_6

    .line 910
    :cond_4
    const-class v2, Ljava/lang/Object;

    if-eq v2, p3, :cond_5

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    .line 913
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 917
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result p0

    add-int/2addr v1, p0

    :cond_7
    return v1
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    and-int/lit8 v16, v14, 0x1

    if-eqz v16, :cond_1

    .line 945
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v4

    .line 946
    iget-object v0, v10, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, v4

    .line 947
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    .line 948
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    :cond_0
    if-lt v0, v11, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 951
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    goto :goto_0

    :cond_1
    move/from16 v0, p8

    .line 955
    :goto_0
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lt v14, v1, :cond_2

    return v0

    .line 956
    :cond_2
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v14

    .line 957
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_3

    .line 958
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    :cond_3
    if-gt v1, v12, :cond_d

    .line 961
    iget-object v2, v10, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v14

    .line 962
    iget v3, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_4

    .line 963
    iget v3, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    :cond_4
    if-lt v2, v11, :cond_b

    if-eq v1, v2, :cond_5

    if-eq v11, v12, :cond_5

    if-eq v1, v12, :cond_b

    if-eq v2, v11, :cond_b

    .line 965
    :cond_5
    const-class v1, Ljava/lang/Object;

    if-eq v1, v13, :cond_6

    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v14

    .line 968
    invoke-virtual {v13, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 969
    :cond_6
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v14

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    if-eqz p9, :cond_7

    .line 972
    aput v1, p6, v0

    .line 973
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v1, v1, v14

    aput v1, p7, v0

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_a

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_9

    .line 978
    aget-object v4, v15, v3

    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    and-int/2addr v4, v2

    if-le v1, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    add-int/lit8 v1, v3, 0x1

    sub-int v2, v0, v3

    .line 981
    invoke-static {v15, v3, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_a
    :goto_3
    move v3, v0

    .line 984
    :goto_4
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v14

    aput-object v1, v15, v3

    add-int/lit8 v0, v0, 0x1

    :cond_b
    move v8, v0

    .line 987
    array-length v0, v15

    if-ge v8, v0, :cond_c

    if-eqz v16, :cond_c

    .line 988
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    goto :goto_5

    :cond_c
    move v0, v8

    :cond_d
    :goto_5
    return v0
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 5

    .line 585
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 586
    check-cast p0, Landroid/text/Spanned;

    .line 587
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 588
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 590
    aget-object v3, p1, v2

    .line 591
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateIndex(I)V
    .locals 1

    .line 1758
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private isInvalidParagraph(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-eq p1, p2, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static leftChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p0, v0

    return p0
.end method

.method private moveGapTo(I)V
    .locals 7

    .line 167
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 172
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v2, :cond_2

    .line 173
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    .line 174
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v3, p1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 176
    :cond_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v2, p1, v2

    .line 177
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :goto_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v2, :cond_c

    .line 182
    :goto_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_b

    .line 183
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    .line 184
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    .line 186
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_3

    .line 187
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_3
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v2, p1, :cond_4

    .line 189
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    goto :goto_3

    :cond_4
    if-ne v2, p1, :cond_6

    .line 191
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    if-eq v6, v5, :cond_5

    if-eqz v0, :cond_6

    if-ne v6, v4, :cond_6

    .line 194
    :cond_5
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    .line 197
    :cond_6
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_7

    .line 198
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    :cond_7
    if-le v3, p1, :cond_8

    .line 200
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    goto :goto_4

    :cond_8
    if-ne v3, p1, :cond_a

    .line 202
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v5, :cond_9

    if-eqz v0, :cond_a

    if-ne v6, v4, :cond_a

    .line 205
    :cond_9
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    .line 208
    :cond_a
    :goto_4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v4, v1

    .line 209
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 214
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 4

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1169
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 1170
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-le v2, p1, :cond_0

    .line 1171
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1174
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_3

    .line 1175
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    .line 1176
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-le v1, p1, :cond_1

    if-ge v1, p2, :cond_1

    .line 1177
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p2, v1

    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    .line 1179
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move p2, v2

    :cond_2
    if-ge v1, p2, :cond_3

    if-eqz v0, :cond_3

    .line 1182
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    :cond_3
    return p2
.end method

.method private static obtain(I)[I
    .locals 5

    .line 1003
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    .line 1007
    :try_start_0
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1008
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 1009
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v4, v4, v1

    array-length v4, v4

    if-lt v4, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 1019
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    .line 1020
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object v3, v4, v1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 1022
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    invoke-static {v2, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1022
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static recycle([I)V
    .locals 4

    .line 1033
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    const/4 v1, 0x0

    .line 1034
    :goto_0
    :try_start_0
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1035
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    array-length v2, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    :goto_1
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v2, v1

    .line 1040
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    .line 1308
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

.method private removeSpan(II)V
    .locals 7

    .line 476
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 478
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p1

    .line 479
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    .line 481
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v3, :cond_0

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v3

    .line 482
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 484
    :cond_1
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    .line 485
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 493
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 494
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 497
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    and-int/lit16 p1, p2, 0x200

    if-nez p1, :cond_2

    .line 500
    invoke-direct {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 6

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 303
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 307
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v3, 0x0

    if-ge p4, v2, :cond_4

    .line 308
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, p4

    const/16 v4, 0x21

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    if-nez p3, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    if-gt v2, p1, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v2, v4, :cond_2

    .line 314
    :cond_1
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-direct {p0, p4, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    return v1

    .line 318
    :cond_2
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-gt v2, p2, :cond_3

    if-eqz v0, :cond_3

    .line 319
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1

    :cond_4
    return v3
.end method

.method private resizeFor(I)V
    .locals 6

    .line 140
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object p1

    .line 146
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v1, p1

    sub-int v2, v1, v0

    .line 149
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 150
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    invoke-static {v5, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 153
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 154
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 155
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "mGapLength < 1"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_1
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz p1, :cond_5

    .line 158
    :goto_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, p1, :cond_4

    .line 159
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_2

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, p1, v3

    add-int/2addr v0, v2

    aput v0, p1, v3

    .line 160
    :cond_2
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p1, p1, v3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_3

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, p1, v3

    add-int/2addr v0, v2

    aput v0, p1, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1

    .line 807
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method private restoreInvariants()V
    .locals 10

    .line 1710
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1715
    :goto_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_4

    .line 1716
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_3

    .line 1717
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1718
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 1719
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 1720
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v0

    .line 1721
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v5, v5, v0

    move v6, v0

    .line 1724
    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    .line 1725
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1726
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1727
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1728
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v8, v8, v9

    aput v8, v7, v6

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_2

    .line 1730
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    if-lt v2, v7, :cond_1

    .line 1731
    :cond_2
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 1732
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v1, v6

    .line 1733
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v1, v6

    .line 1734
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v4, v1, v6

    .line 1735
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v5, v1, v6

    .line 1736
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1741
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1744
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    .line 1745
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1747
    :cond_5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_8

    .line 1748
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1749
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 1750
    :cond_6
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const v0, 0x7fffffff

    .line 1753
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    return-void
.end method

.method private static rightChild(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p0, v0

    return p0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3

    .line 1269
    array-length v0, p1

    .line 1271
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1273
    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1249
    array-length v0, p1

    .line 1251
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1253
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4

    .line 1279
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1280
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1283
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 1299
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1300
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1299
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1301
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1303
    aget-object v3, v0, v2

    move-object v4, p0

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
    .locals 4

    .line 1288
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1289
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1292
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3

    .line 1259
    array-length v0, p1

    .line 1261
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1263
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_c

    .line 600
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, v1

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 604
    :cond_0
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, v1

    .line 605
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v1

    .line 606
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_1

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    :cond_1
    move v9, v3

    .line 607
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v3, :cond_2

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v3

    :cond_2
    move v10, v4

    add-int v3, p2, p3

    const/4 v4, 0x1

    if-le v9, v3, :cond_3

    if-eqz p3, :cond_6

    sub-int v5, v9, p3

    move v7, v5

    move v5, v4

    goto :goto_2

    :cond_3
    if-lt v9, p1, :cond_6

    if-ne v9, p1, :cond_4

    and-int/lit16 v5, v2, 0x1000

    const/16 v6, 0x1000

    if-eq v5, v6, :cond_6

    :cond_4
    if-ne v9, v3, :cond_5

    and-int/lit16 v5, v2, 0x2000

    const/16 v6, 0x2000

    if-eq v5, v6, :cond_6

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    move v5, v0

    :goto_1
    move v7, v9

    :goto_2
    if-le v10, v3, :cond_7

    if-eqz p3, :cond_9

    sub-int v2, v10, p3

    move v8, v2

    goto :goto_4

    :cond_7
    if-lt v10, p1, :cond_9

    if-ne v10, p1, :cond_8

    and-int/lit16 v6, v2, 0x4000

    const/16 v8, 0x4000

    if-eq v6, v8, :cond_9

    :cond_8
    if-ne v10, v3, :cond_a

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_9

    goto :goto_3

    :cond_9
    move v4, v5

    :cond_a
    :goto_3
    move v8, v10

    :goto_4
    if-eqz v4, :cond_b

    .line 649
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v2, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 651
    :cond_b
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v1

    const v4, -0xf001

    and-int/2addr v3, v4

    aput v3, v2, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_c
    :goto_6
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, p1, :cond_10

    .line 656
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget p1, p1, v0

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_f

    .line 658
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget p2, p1, v0

    and-int/lit16 p2, p2, -0x801

    aput p2, p1, v0

    .line 659
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v0

    .line 660
    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p2, p2, v0

    .line 661
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, p3, :cond_d

    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p3

    .line 662
    :cond_d
    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p2, p3, :cond_e

    iget p3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p2, p3

    .line 663
    :cond_e
    iget-object p3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object p3, p3, v0

    invoke-direct {p0, p3, p1, p2}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;IIIZ)V
    .locals 12

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v3, p5

    const-string/jumbo v7, "setSpan"

    .line 682
    invoke-direct {p0, v7, p3, v5}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    and-int/lit16 v7, v3, 0xf0

    shr-int/lit8 v7, v7, 0x4

    .line 685
    invoke-direct {p0, p3, v7}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-nez p6, :cond_0

    return-void

    .line 690
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " follows "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, -0x1

    .line 691
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    and-int/lit8 v8, v3, 0xf

    .line 695
    invoke-direct {p0, v5, v8}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez p6, :cond_2

    return-void

    .line 700
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " follows "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    .line 701
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v6, 0x2

    if-ne v7, v6, :cond_5

    if-ne v8, v9, :cond_5

    if-ne v4, v5, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "SpannableStringBuilder"

    const-string v1, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    .line 707
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 718
    :cond_5
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v11, 0x3

    if-le v4, v10, :cond_6

    .line 719
    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, v4

    goto :goto_0

    .line 720
    :cond_6
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v4, v10, :cond_8

    if-eq v7, v6, :cond_7

    if-ne v7, v11, :cond_8

    .line 721
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-ne v4, v7, :cond_8

    .line 722
    :cond_7
    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, v4

    goto :goto_0

    :cond_8
    move v7, v4

    .line 725
    :goto_0
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v10, :cond_9

    .line 726
    iget v8, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v5

    goto :goto_1

    .line 727
    :cond_9
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v10, :cond_b

    if-eq v8, v6, :cond_a

    if-ne v8, v11, :cond_b

    .line 728
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-ne v5, v8, :cond_b

    .line 729
    :cond_a
    iget v8, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v5

    goto :goto_1

    :cond_b
    move v8, v5

    .line 732
    :goto_1
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v10, :cond_f

    .line 733
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_f

    .line 735
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 736
    iget-object v9, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v9, v9, v6

    .line 737
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v10, v10, v6

    .line 739
    iget v11, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v9, v11, :cond_c

    .line 740
    iget v11, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v9, v11

    .line 741
    :cond_c
    iget v11, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v10, v11, :cond_d

    .line 742
    iget v11, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v10, v11

    .line 744
    :cond_d
    iget-object v11, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v7, v11, v6

    .line 745
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v8, v7, v6

    .line 746
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v3, v7, v6

    if-eqz p1, :cond_e

    .line 749
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object v0, p0

    move-object v1, p2

    move v2, v9

    move v3, v10

    move v4, p3

    move/from16 v5, p4

    .line 750
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_e
    return-void

    .line 757
    :cond_f
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v11, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v10, v11, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 758
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v11, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v7

    iput-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 759
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v10, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v7, v10, v8}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v7

    iput-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 760
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v8, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v7, v8, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 761
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v7, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v8, v0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v3, v7, v8}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 762
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 763
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v3, v9

    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 764
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v3, v9

    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 768
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v3

    mul-int/2addr v3, v6

    add-int/2addr v3, v9

    .line 769
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v6, v6

    if-ge v6, v3, :cond_10

    .line 770
    new-array v3, v3, [I

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    :cond_10
    if-eqz p1, :cond_11

    .line 774
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 775
    invoke-direct {p0, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_11
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1107
    invoke-direct {p0, v0, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    .line 1110
    :cond_0
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_1

    .line 1114
    :cond_1
    aget-object v1, p2, p1

    .line 1115
    aget-object v2, p2, v0

    aput-object v2, p2, p1

    .line 1116
    aput-object v1, p2, v0

    .line 1118
    aget v1, p4, p1

    .line 1119
    aget v2, p4, v0

    aput v2, p4, p1

    .line 1120
    aput v1, p4, v0

    .line 1122
    aget v1, p5, p1

    .line 1123
    aget v2, p5, v0

    aput v2, p5, p1

    .line 1124
    aput v1, p5, v0

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .line 1071
    array-length v6, p1

    .line 1072
    div-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_0

    move-object v0, p0

    move v1, v7

    move-object v2, p1

    move v3, v6

    move-object v4, p2

    move-object v5, p3

    .line 1073
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-lez v6, :cond_1

    const/4 v0, 0x0

    .line 1077
    aget-object v1, p1, v0

    .line 1078
    aget-object v2, p1, v6

    aput-object v2, p1, v0

    .line 1079
    aput-object v1, p1, v6

    .line 1081
    aget v1, p2, v0

    .line 1082
    aget v2, p2, v6

    aput v2, p2, v0

    .line 1083
    aput v1, p2, v6

    .line 1085
    aget v1, p3, v0

    .line 1086
    aget v2, p3, v6

    aput v2, p3, v0

    .line 1087
    aput v1, p3, v6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, v6

    move-object v4, p2

    move-object v5, p3

    .line 1089
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private treeRoot()I
    .locals 0

    .line 1672
    iget p0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2

    if-lt p1, p2, :cond_5

    .line 444
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    .line 451
    :cond_0
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, p0

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    if-eqz p5, :cond_5

    .line 456
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, p0

    return p1

    :cond_2
    if-nez p6, :cond_4

    .line 462
    iget p4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr p4, p3

    if-ge p1, p4, :cond_3

    goto :goto_0

    .line 466
    :cond_3
    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return p0

    :cond_4
    :goto_0
    return p2

    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 108
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 109
    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 268
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 289
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 282
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 283
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public charAt(I)C
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_1

    .line 126
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0

    .line 129
    :cond_0
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char p0, p0, p1

    return p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charAt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "charAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 6

    .line 239
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public clearSpans()V
    .locals 6

    .line 245
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 246
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 247
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 248
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 250
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 251
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 252
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_1

    .line 253
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 255
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 256
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 258
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 263
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 229
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 231
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_0
    return-object p1
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v1, p3

    const-string v3, "drawText"

    .line 1417
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1419
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v1, v3, :cond_0

    .line 1420
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v4, v1, v2

    move-object/from16 v0, p1

    move-object v1, v3

    move/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1421
    :cond_0
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v2, v3, :cond_1

    .line 1422
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v6, v2, v0

    sub-int v7, v1, v2

    move-object/from16 v4, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int v11, v1, v2

    .line 1424
    invoke-static {v11}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    const/4 v4, 0x0

    .line 1426
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move-object v9, v3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    .line 1427
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1428
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v1, p3

    move/from16 v4, p4

    move/from16 v3, p5

    const-string v5, "drawTextRun"

    .line 1440
    invoke-direct {v0, v5, v2, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v11, v3, v4

    sub-int v9, v1, v2

    .line 1444
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v3, v1, :cond_0

    .line 1445
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p1

    move/from16 v2, p2

    move v3, v9

    move/from16 v4, p4

    move v5, v11

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1446
    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v4, v1, :cond_1

    .line 1447
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v8, v2, v1

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v10, v4, v0

    move-object/from16 v6, p1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v6 .. v15}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1450
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v5, 0x0

    .line 1451
    invoke-virtual {v0, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v8, v2, v4

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object v7, v1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    .line 1452
    invoke-virtual/range {v6 .. v15}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1453
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1600
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1601
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1602
    check-cast p1, Landroid/text/Spanned;

    .line 1604
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1605
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_5

    move v2, v1

    .line 1606
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v3, :cond_4

    .line 1607
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 1608
    aget-object v4, v0, v2

    if-ne v3, p0, :cond_1

    if-ne p1, v4, :cond_0

    .line 1611
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1612
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1613
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_0
    return v1

    .line 1616
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1617
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1618
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1619
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

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

.method public getChars(II[CI)V
    .locals 3

    const-string v0, "getChars"

    .line 1202
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1204
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1205
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1206
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1207
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-static {v0, p0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr p4, v2

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr p2, p0

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 0

    .line 1594
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object p0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 2

    .line 825
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p1, v0, p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 2

    .line 835
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 836
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget v1, p0, p1

    :goto_0
    return v1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 2

    .line 815
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 816
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p1, v0, p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v3, p3

    if-nez v3, :cond_0

    .line 866
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 867
    :cond_0
    iget v0, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 868
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    move v1, p1

    move/from16 v2, p2

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 870
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 874
    :cond_2
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 875
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v4

    :goto_0
    move-object v12, v4

    goto :goto_1

    :cond_3
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_4

    .line 876
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    :goto_2
    move-object v13, v0

    goto :goto_3

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_2

    .line 877
    :goto_3
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    if-eqz p4, :cond_5

    .line 880
    invoke-direct {p0, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 881
    invoke-static {v12}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 882
    invoke-static {v13}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    :cond_5
    return-object v11
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10

    move-object v0, p0

    move v2, p1

    move v1, p2

    move v4, p3

    move v3, p4

    sub-int v5, v3, v4

    sub-int v6, v1, v2

    .line 1517
    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v1, v7, :cond_0

    .line 1518
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v3, v6

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v0

    goto :goto_0

    .line 1520
    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v2, v1, :cond_1

    .line 1521
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v0

    move-object/from16 v0, p8

    move v3, v6

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v0

    goto :goto_0

    .line 1524
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v9

    const/4 v1, 0x0

    .line 1525
    invoke-virtual {p0, p3, p4, v9, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move-object v1, v9

    move v3, v6

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1526
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v0

    .line 1528
    invoke-static {v9}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return v0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v3, p2, p1

    .line 1566
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1567
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p0

    goto :goto_0

    .line 1569
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1570
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, p2

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int p0, p1, p0

    goto :goto_0

    .line 1573
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v7

    const/4 v0, 0x0

    .line 1574
    invoke-virtual {p0, p1, p2, v7, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    const/4 v2, 0x0

    sub-int v5, p4, p1

    move-object v0, p6

    move-object v1, v7

    move v4, p3

    move v6, p5

    .line 1575
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p0

    add-int/2addr p0, p1

    .line 1577
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p0
.end method

.method public getTextWatcherDepth()I
    .locals 0

    .line 1245
    iget p0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return p0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3

    const-string v0, "getTextWidths"

    .line 1486
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1490
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1491
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p0

    goto :goto_0

    .line 1492
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1493
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, p0, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p0

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    .line 1495
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 1497
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1498
    invoke-virtual {p4, v1, v2, v0, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p0

    .line 1499
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1632
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1633
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1634
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1635
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 1637
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1639
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1640
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1641
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 224
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 219
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public length()I
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3

    const-string v0, "measureText"

    .line 1462
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1466
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1467
    iget-object p0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p3, p0, p1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p0

    goto :goto_0

    .line 1468
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1469
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p0, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p0

    goto :goto_0

    :cond_1
    sub-int v0, p2, p1

    .line 1471
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 1473
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1474
    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p0

    .line 1475
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    :goto_0
    return p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 1159
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-nez p3, :cond_1

    .line 1161
    const-class p3, Ljava/lang/Object;

    .line 1163
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .locals 1

    .line 796
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 799
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 36
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 506
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const-string/jumbo v0, "replace"

    .line 512
    invoke-direct {v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 514
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v10, v0

    const/4 v11, 0x0

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_1

    .line 516
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v0, v12

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move-object v13, v0

    move v15, v1

    move v14, v11

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    sub-int v10, v9, v8

    sub-int v12, v15, v14

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    .line 528
    invoke-static {v13, v14}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v7

    :cond_2
    add-int v0, v8, v10

    .line 534
    const-class v1, Landroid/text/TextWatcher;

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/text/TextWatcher;

    .line 535
    invoke-direct {v7, v6, v8, v10, v12}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    const/16 v16, 0x1

    if-eqz v10, :cond_3

    if-eqz v12, :cond_3

    move/from16 v17, v16

    goto :goto_1

    :cond_3
    move/from16 v17, v11

    :goto_1
    if-eqz v17, :cond_4

    .line 544
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 545
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    move v5, v0

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v11

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v13

    move v13, v4

    move v4, v14

    move v14, v5

    move v5, v15

    .line 548
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    if-eqz v17, :cond_7

    if-le v14, v8, :cond_5

    if-ge v14, v9, :cond_5

    sub-int v5, v14, v8

    int-to-long v0, v5

    int-to-long v2, v12

    mul-long/2addr v0, v2

    int-to-long v2, v10

    .line 554
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    add-int v4, v8, v0

    const/4 v1, 0x0

    .line 558
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v3, v4

    move-object v14, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v11, v16

    goto :goto_3

    :cond_5
    move-object v14, v6

    :goto_3
    if-le v13, v8, :cond_6

    if-ge v13, v9, :cond_6

    sub-int v4, v13, v8

    int-to-long v0, v4

    int-to-long v2, v12

    mul-long/2addr v0, v2

    int-to-long v2, v10

    .line 563
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    add-int v4, v8, v0

    const/4 v1, 0x0

    .line 567
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v3, v4

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v11, v16

    :cond_6
    if-eqz v11, :cond_8

    .line 571
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    goto :goto_4

    :cond_7
    move-object v14, v6

    .line 575
    :cond_8
    :goto_4
    invoke-direct {v7, v14, v8, v10, v12}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 576
    invoke-direct {v7, v14}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    sub-int/2addr v12, v10

    .line 579
    invoke-direct {v7, v8, v9, v12}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    return-object v7
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1589
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void

    .line 1586
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 674
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1194
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    sub-int v0, p2, p1

    .line 1234
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1235
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1236
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1221
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1222
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 1224
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1225
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
