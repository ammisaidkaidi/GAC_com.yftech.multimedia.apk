.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    .line 92
    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 161
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 96
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 97
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 98
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_0
    return-void
.end method

.method private static isParsedModifier(I)Z
    .locals 1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x5

    if-ne p0, v0, :cond_0

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

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 18

    move-object/from16 v9, p0

    .line 443
    array-length v10, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    move v1, v0

    move v2, v1

    move v13, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v10, :cond_7

    .line 454
    aget v4, v9, v0

    const/4 v5, -0x4

    const/4 v6, 0x2

    const/4 v14, -0x1

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v1, v0, 0x1

    move v15, v0

    move v0, v1

    move/from16 v16, v2

    move v4, v12

    goto :goto_3

    :pswitch_0
    if-ne v4, v14, :cond_0

    move v1, v6

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    :goto_1
    add-int/lit8 v2, v0, 0x1

    :goto_2
    add-int/2addr v0, v3

    if-ge v0, v10, :cond_1

    .line 468
    aget v4, v9, v0

    const/4 v5, -0x3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    move v15, v2

    move/from16 v16, v4

    move v4, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v15, v1

    move/from16 v16, v2

    move v4, v3

    :goto_3
    const v1, 0x7fffffff

    if-lt v0, v10, :cond_3

    :goto_4
    move/from16 v17, v0

    move v5, v3

    move v6, v5

    goto :goto_5

    .line 486
    :cond_3
    aget v2, v9, v0

    const/4 v5, -0x5

    if-eq v2, v5, :cond_4

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    move v6, v1

    move v5, v12

    goto :goto_5

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    move v6, v1

    move v5, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 499
    aget v1, v9, v0

    add-int/2addr v0, v3

    .line 500
    aget v2, v9, v0

    add-int/2addr v0, v6

    move/from16 v17, v0

    move v5, v1

    move v6, v2

    :goto_5
    if-le v5, v6, :cond_5

    return v12

    :cond_5
    move-object/from16 v0, p1

    move v1, v13

    move v2, v11

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p0

    move v7, v15

    move/from16 v8, v16

    .line 513
    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v0

    if-ne v0, v14, :cond_6

    return v12

    :cond_6
    add-int/2addr v13, v0

    move v1, v15

    move/from16 v2, v16

    move/from16 v0, v17

    goto :goto_0

    :cond_7
    if-lt v0, v10, :cond_8

    if-lt v13, v11, :cond_8

    goto :goto_6

    :cond_8
    move v3, v12

    :goto_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    packed-switch p3, :pswitch_data_0

    return v0

    :goto_0
    :pswitch_0
    if-ge p5, p6, :cond_2

    .line 559
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 560
    aget v1, p4, p5

    if-lt p3, v1, :cond_1

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p5, p5, 0x2

    goto :goto_0

    :cond_2
    return p2

    :goto_1
    :pswitch_1
    if-ge p5, p6, :cond_4

    .line 551
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 552
    aget v1, p4, p5

    if-lt p3, v1, :cond_3

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p5, p5, 0x2

    goto :goto_1

    :cond_4
    return v0

    :pswitch_2
    return p2

    .line 566
    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aget p1, p4, p5

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v0, p5

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p1, v1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 533
    invoke-static/range {v2 .. v8}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, p4

    if-ge v1, v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v1

    move v6, v4

    move v4, v5

    :goto_0
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v4, v0, :cond_11

    if-ge v5, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_2

    .line 197
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    const/16 v10, 0x5c

    if-ne v6, v10, :cond_3

    move v11, v2

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v11, :cond_5

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    .line 202
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v12, v9

    move v9, v6

    move v6, v12

    :goto_3
    if-ne v6, v7, :cond_f

    if-nez v11, :cond_c

    if-ne v9, v8, :cond_c

    add-int/lit8 v6, v0, -0x1

    if-lt v4, v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 212
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_8

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_7

    .line 217
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v1

    .line 220
    :cond_8
    :goto_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_8

    :goto_5
    if-ne v5, v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_b

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_6

    :cond_b
    move v6, v1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_c

    :goto_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    .line 242
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_0

    :cond_e
    move v6, v1

    goto :goto_0

    :cond_f
    if-eq v9, v8, :cond_10

    .line 245
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_10

    return v1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_11
    if-lt v4, v0, :cond_12

    if-lt v5, v3, :cond_12

    return v2

    :cond_12
    add-int/lit8 v0, v0, -0x2

    if-ne v4, v0, :cond_13

    .line 258
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_13

    add-int/2addr v4, v2

    .line 259
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v7, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 179
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 181
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 14

    const-class v0, Landroid/os/PatternMatcher;

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v4, v1, :cond_16

    const/16 v9, 0x7fd

    if-gt v5, v9, :cond_15

    .line 288
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    const/16 v11, 0x7d

    if-eq v9, v10, :cond_a

    const/16 v10, 0x7b

    if-eq v9, v10, :cond_8

    if-eq v9, v11, :cond_7

    packed-switch v9, :pswitch_data_0

    const/4 v10, -0x2

    const/4 v12, -0x1

    packed-switch v9, :pswitch_data_1

    :goto_1
    move v12, v5

    move v5, v3

    goto/16 :goto_5

    :pswitch_0
    if-nez v6, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    if-eq v6, v12, :cond_1

    if-eq v6, v10, :cond_1

    .line 317
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, 0x1

    const/4 v10, -0x3

    aput v10, v6, v5

    move v5, v2

    move v6, v5

    move v12, v8

    move v8, v6

    goto/16 :goto_5

    .line 314
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must define characters in a set."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_2

    .line 363
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    .line 361
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Escape found at end of pattern!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 296
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x5e

    if-ne v9, v11, :cond_4

    .line 297
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    aput v10, v4, v5

    move v4, v6

    goto :goto_2

    .line 300
    :cond_4
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    aput v12, v6, v5

    :goto_2
    move v5, v9

    add-int/2addr v4, v3

    move v6, v3

    goto :goto_0

    :pswitch_3
    if-nez v6, :cond_b

    if-eqz v5, :cond_5

    .line 348
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, -0x1

    aget v10, v10, v12

    invoke-static {v10}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 351
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x8

    aput v13, v10, v5

    goto/16 :goto_4

    .line 349
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-nez v6, :cond_b

    if-eqz v5, :cond_6

    .line 340
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, -0x1

    aget v10, v10, v12

    invoke-static {v10}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 343
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x7

    aput v13, v10, v5

    goto :goto_4

    .line 341
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz v7, :cond_b

    .line 334
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x6

    aput v12, v7, v5

    move v5, v2

    move v7, v5

    :goto_3
    move v12, v10

    goto :goto_5

    :cond_8
    if-nez v6, :cond_b

    if-eqz v5, :cond_9

    .line 324
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, -0x1

    aget v7, v7, v10

    invoke-static {v7}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 327
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x5

    aput v12, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v7, v3

    goto :goto_3

    .line 325
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez v6, :cond_b

    .line 356
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x4

    aput v13, v10, v5

    goto :goto_4

    :cond_b
    move v12, v5

    :goto_4
    move v5, v2

    :goto_5
    if-eqz v6, :cond_e

    if-eqz v8, :cond_c

    .line 372
    sget-object v5, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v12, 0x1

    aput v9, v5, v12

    move v5, v8

    move v8, v2

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v5, v4, 0x2

    if-ge v5, v1, :cond_d

    add-int/lit8 v10, v4, 0x1

    .line 377
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x2d

    if-ne v11, v13, :cond_d

    .line 378
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x5d

    if-eq v5, v11, :cond_d

    .line 380
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v5, v12, 0x1

    aput v9, v4, v12

    move v8, v3

    move v4, v10

    goto/16 :goto_8

    .line 383
    :cond_d
    sget-object v5, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v5, v12

    .line 384
    sget-object v5, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v10, 0x1

    aput v9, v5, v10

    move v5, v11

    goto/16 :goto_8

    :cond_e
    if-eqz v7, :cond_13

    .line 388
    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_12

    .line 392
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x2c

    .line 393
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v9, :cond_f

    .line 398
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v10, v4

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_7

    .line 401
    :cond_f
    invoke-virtual {v4, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    if-ne v9, v11, :cond_10

    const v4, 0x7fffffff

    goto :goto_6

    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 405
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_6
    if-gt v10, v4, :cond_11

    .line 412
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v12, 0x1

    aput v10, v9, v12

    .line 413
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    aput v4, v9, v11

    move v4, v5

    move v5, v10

    goto/16 :goto_0

    .line 409
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range quantifier minimum is greater than maximum"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :goto_7
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Range number format incorrect"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range not ended with \'}\'"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    if-eqz v5, :cond_14

    .line 420
    sget-object v5, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v5, v12

    move v5, v10

    goto :goto_8

    :cond_14
    move v5, v12

    :goto_8
    add-int/2addr v4, v3

    goto/16 :goto_0

    .line 285
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is too large!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    if-nez v6, :cond_17

    .line 427
    sget-object p0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 425
    :cond_17
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set was not terminated!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 271
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 109
    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    return p0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2

    .line 113
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, p0}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "? "

    .line 118
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ADVANCED: "

    goto :goto_0

    :pswitch_1
    const-string v0, "GLOB: "

    goto :goto_0

    :pswitch_2
    const-string v0, "PREFIX: "

    goto :goto_0

    :pswitch_3
    const-string v0, "LITERAL: "

    .line 132
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 150
    iget-object p2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 137
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 138
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 139
    iget p0, p0, Landroid/os/PatternMatcher;->mType:I

    const-wide v0, 0x10e00000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
