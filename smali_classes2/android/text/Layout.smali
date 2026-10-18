.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field public static final TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 112
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2475
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2480
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8

    .line 226
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2429
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2431
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-ltz p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 257
    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 258
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 261
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 262
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 263
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 264
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 265
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 266
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 267
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 268
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Layout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/text/Layout;IZZ)[F
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/text/Layout;IZ)F
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1872
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1873
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1874
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    .line 1876
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    move v8, v7

    .line 1880
    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 1881
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v8

    add-int/2addr v9, v4

    .line 1882
    iget-object v10, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    const v12, 0x3ffffff

    and-int/2addr v10, v12

    add-int/2addr v10, v9

    if-le v10, v5, :cond_1

    move v10, v5

    :cond_1
    if-gt v2, v10, :cond_3

    if-lt v3, v9, :cond_3

    .line 1889
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1890
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1893
    invoke-direct {v0, v9, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v9

    const/4 v12, 0x1

    .line 1894
    invoke-direct {v0, v10, v12, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v10

    .line 1896
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1897
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 1900
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v11

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    move/from16 v9, p4

    move/from16 v18, v7

    goto :goto_1

    :cond_2
    move/from16 v9, p4

    move/from16 v18, v12

    :goto_1
    int-to-float v15, v9

    move/from16 v10, p5

    int-to-float v11, v10

    move-object/from16 v13, p6

    move/from16 v17, v11

    .line 1904
    invoke-interface/range {v13 .. v18}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_3
    move/from16 v9, p4

    move/from16 v10, p5

    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_4
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 6

    .line 2272
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2276
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    .line 2277
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    .line 2279
    invoke-static {p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p3

    .line 2280
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p6

    const/4 v2, 0x0

    if-lt v0, p6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    if-eqz v3, :cond_2

    if-ge v2, p6, :cond_2

    .line 2286
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_2
    const v4, 0xfeff

    :goto_1
    add-int v5, v2, v1

    add-int/2addr v5, p0

    if-gt p1, v5, :cond_3

    if-ge v5, p2, :cond_3

    add-int/2addr v5, p5

    sub-int/2addr v5, p1

    .line 2293
    aput-char v4, p4, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    .line 164
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result p0

    return p0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 6

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 175
    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result p0

    return p0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    .line 152
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method public static getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_3

    const/16 v1, 0xa

    .line 190
    invoke-static {p0, v1, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p2

    .line 196
    :cond_0
    invoke-static {p3, p0, p1, v1, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result p1

    cmpl-float v2, p1, p5

    if-lez v2, :cond_1

    return p5

    :cond_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    move v0, p1

    :cond_2
    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getHorizontal(IZ)F
    .locals 0

    if-eqz p2, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    .line 1169
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 1170
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1171
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1172
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 1173
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    .line 1176
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 1179
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v11, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1180
    array-length v3, v2

    if-lez v3, :cond_0

    .line 1181
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object v10, v12

    .line 1185
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 1186
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v13

    move v5, v11

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v11

    move/from16 v3, p2

    .line 1187
    invoke-virtual {v13, v2, v3, v12}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    .line 1188
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    .line 1190
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1191
    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    .line 1193
    :cond_1
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1194
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1196
    invoke-direct {p0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    return v0
.end method

.method private getHorizontal(IZZ)F
    .locals 1

    .line 1163
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1165
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result p0

    return p0
.end method

.method private getJustifyWidth(I)F
    .locals 12

    .line 331
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 334
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 336
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 338
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 339
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    .line 340
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 341
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 343
    iget-object v8, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    move v8, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    :goto_1
    if-eqz v8, :cond_3

    .line 346
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-interface {v4, v7, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 348
    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-static {v4, v7, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 350
    array-length v7, v3

    sub-int/2addr v7, v6

    :goto_2
    if-ltz v7, :cond_3

    .line 351
    aget-object v9, v3, v7

    instance-of v9, v9, Landroid/text/style/AlignmentSpan;

    if-eqz v9, :cond_2

    .line 352
    aget-object v0, v3, v7

    check-cast v0, Landroid/text/style/AlignmentSpan;

    invoke-interface {v0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 358
    :cond_3
    :goto_3
    array-length v7, v3

    move v9, v5

    :goto_4
    if-ge v9, v7, :cond_5

    .line 361
    aget-object v10, v3, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_4

    .line 362
    aget-object v10, v3, v9

    check-cast v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v10

    .line 363
    aget-object v11, v3, v9

    invoke-interface {v4, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    add-int/2addr v11, v10

    if-ge p1, v11, :cond_4

    move v8, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    move v4, v1

    move v1, v5

    :goto_6
    if-ge v5, v7, :cond_9

    .line 371
    aget-object v9, v3, v5

    instance-of v9, v9, Landroid/text/style/LeadingMarginSpan;

    if-eqz v9, :cond_7

    .line 372
    aget-object v9, v3, v5

    check-cast v9, Landroid/text/style/LeadingMarginSpan;

    const/4 v10, -0x1

    if-ne v2, v10, :cond_6

    .line 374
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int/2addr v4, v9

    goto :goto_7

    .line 376
    :cond_6
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v1, v9

    :cond_7
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    move v4, v1

    move v1, v5

    .line 383
    :cond_9
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_b

    if-ne v2, v6, :cond_a

    .line 384
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 385
    :cond_b
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_d

    if-ne v2, v6, :cond_c

    .line 386
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 392
    :cond_d
    :goto_8
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_f

    if-ne v2, v6, :cond_e

    .line 394
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_9

    .line 396
    :cond_e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    neg-int p0, p0

    goto :goto_9

    .line 398
    :cond_f
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_11

    if-ne v2, v6, :cond_10

    .line 400
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    neg-int p0, p0

    goto :goto_9

    .line 402
    :cond_10
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    goto :goto_9

    .line 405
    :cond_11
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    :goto_9
    sub-int/2addr v4, v1

    sub-int/2addr v4, p0

    int-to-float p0, v4

    return p0
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 9

    .line 1385
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_0

    .line 1386
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p3

    :goto_0
    move v4, p3

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p3

    goto :goto_0

    .line 1387
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1388
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1389
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1391
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p3

    .line 1392
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1393
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1394
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1395
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, p3

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1396
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1397
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p0

    invoke-virtual {p3, p0}, Landroid/text/TextLine;->justify(F)V

    :cond_1
    const/4 p0, 0x0

    .line 1399
    invoke-virtual {p3, p0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .line 1400
    invoke-static {p3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p0
.end method

.method private getLineExtent(IZ)F
    .locals 10

    .line 1343
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_0

    .line 1344
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p2

    goto :goto_0

    .line 1346
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 p2, 0x0

    if-eqz v7, :cond_1

    .line 1348
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 1352
    array-length v1, v0

    if-lez v1, :cond_1

    .line 1353
    new-instance v1, Landroid/text/Layout$TabStops;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_2

    :cond_1
    move-object v8, p2

    .line 1356
    :goto_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 p0, 0x0

    return p0

    .line 1361
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1363
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    .line 1364
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1365
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1366
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1367
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1368
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1369
    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p0

    invoke-virtual {v9, p0}, Landroid/text/TextLine;->justify(F)V

    .line 1371
    :cond_3
    invoke-virtual {v9, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .line 1372
    invoke-static {v9}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return p0
.end method

.method private getLineHorizontals(IZZ)[F
    .locals 14

    move-object v0, p0

    .line 1208
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1209
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1210
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1211
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1212
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    const/4 v12, 0x0

    if-eqz v8, :cond_0

    .line 1215
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1218
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v10, v11, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 1219
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1220
    new-instance v2, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v12

    .line 1224
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 1225
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v13

    move v4, v10

    move v5, v11

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1226
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move v3, v2

    .line 1228
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1229
    aget-boolean v4, v1, v3

    xor-int/lit8 v4, v4, 0x1

    aput-boolean v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1232
    :cond_1
    invoke-virtual {v13, v1, v12}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v1

    .line 1233
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_3

    move v3, v2

    .line 1236
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1237
    aget v4, v1, v3

    iget v5, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1238
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v4

    aput v4, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1242
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1243
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    move v5, p1

    .line 1245
    invoke-direct {p0, p1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v0

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x1

    .line 1246
    new-array v3, v11, [F

    .line 1247
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_4

    int-to-float v4, v0

    .line 1248
    aget v5, v1, v2

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object v3
.end method

.method private getLineStartPos(III)I
    .locals 8

    .line 691
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 692
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 694
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 695
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 696
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 697
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 701
    :cond_3
    :goto_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    if-ne v1, v3, :cond_4

    .line 703
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_1

    .line 705
    :cond_4
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int p2, p3, p0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 709
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 710
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 711
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 712
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 714
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/TabStopSpan;

    .line 716
    array-length v5, v4

    if-lez v5, :cond_6

    .line 717
    new-instance v2, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    invoke-direct {v2, v5, v4}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_6
    const/4 v4, 0x0

    .line 720
    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v2

    float-to-int v2, v2

    .line 721
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_8

    if-ne v1, v3, :cond_7

    sub-int/2addr p3, v2

    .line 723
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int p2, p3, p0

    goto :goto_1

    :cond_7
    sub-int/2addr p2, v2

    .line 726
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_1

    :cond_8
    and-int/lit8 v0, v2, -0x2

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    .line 730
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p0

    add-int/2addr p0, v3

    shr-int/2addr p2, p0

    :goto_1
    return p2
.end method

.method private getLineVisibleEnd(III)I
    .locals 2

    .line 1614
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1616
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    add-int/lit8 p0, p3, -0x1

    .line 1621
    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    return p0

    .line 1627
    :cond_1
    invoke-static {p1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1747
    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1748
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_1

    const v3, 0xdfff

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, p1, -0x1

    .line 1751
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 1757
    :cond_1
    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz p0, :cond_3

    .line 1758
    check-cast v1, Landroid/text/Spanned;

    const-class p0, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, p0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ReplacementSpan;

    .line 1761
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1762
    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1763
    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    move p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1690
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1691
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1692
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1693
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    if-ne v2, v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    if-eqz v7, :cond_3

    if-ne v1, v5, :cond_5

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v3, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    if-ne v1, v4, :cond_5

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    move v9, v8

    :goto_2
    if-eqz v9, :cond_6

    .line 1719
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1720
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1721
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-eq v7, v6, :cond_6

    xor-int/lit8 v2, v2, 0x1

    move v12, v5

    move v13, v7

    goto :goto_3

    :cond_6
    move v12, v5

    move v13, v6

    .line 1731
    :goto_3
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    .line 1733
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v3

    .line 1735
    iget-object v9, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v3

    move v11, v4

    invoke-virtual/range {v8 .. v16}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v0, v1, v4

    .line 1736
    invoke-virtual {v3, v0, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int/2addr v4, v0

    .line 1737
    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v4
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 8

    .line 2044
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2047
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 2049
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2050
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2051
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 2053
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    .line 2055
    array-length v4, v3

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sub-int/2addr v2, v4

    .line 2061
    invoke-interface {v0, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    move v5, v2

    move v2, v1

    .line 2062
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_6

    .line 2063
    aget-object v6, v3, v2

    instance-of v6, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v6, :cond_5

    .line 2064
    aget-object v6, v3, v2

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 2065
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 2066
    aget-object v7, v3, v2

    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v7

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move p0, v1

    .line 2071
    :goto_4
    array-length p1, v3

    if-ge v1, p1, :cond_7

    .line 2072
    aget-object p1, v3, v1

    .line 2073
    invoke-interface {p1, v5}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return p0
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2260
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2263
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 2264
    check-cast p0, Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2266
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private isJustificationRequired(I)Z
    .locals 3

    .line 325
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 327
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method static synthetic lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .locals 6

    .line 1919
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 16

    move-object/from16 v0, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 2082
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, p4

    .line 2084
    :try_start_0
    invoke-static {v0, v4, v5, v1, v11}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2085
    :try_start_1
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    .line 2086
    array-length v2, v1

    const/4 v3, 0x0

    .line 2087
    invoke-virtual {v12, v3, v2}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 2088
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 2093
    instance-of v8, v0, Landroid/text/Spanned;

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 2094
    move-object v8, v0

    check-cast v8, Landroid/text/Spanned;

    .line 2095
    const-class v13, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v8, v4, v5, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    .line 2097
    array-length v13, v8

    move v14, v3

    move v15, v14

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v3, v8, v14

    .line 2098
    invoke-interface {v3, v9}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 2102
    aget-char v8, v1, v3

    const/16 v13, 0x9

    if-ne v8, v13, :cond_4

    .line 2104
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    .line 2105
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 2106
    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-interface {v1, v4, v5, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 2108
    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v4, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 2110
    array-length v2, v1

    if-lez v2, :cond_2

    .line 2111
    new-instance v2, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v2, v11

    :goto_2
    move v8, v9

    move-object v9, v2

    goto :goto_3

    :cond_3
    move v8, v9

    move-object v9, v11

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move-object v9, v11

    const/4 v8, 0x0

    :goto_3
    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 2117
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    int-to-float v0, v15

    .line 2118
    invoke-virtual {v10, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float/2addr v0, v1

    .line 2120
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v12, :cond_6

    .line 2122
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_6
    return v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v11

    .line 2120
    :goto_4
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v12, :cond_7

    .line 2122
    invoke-virtual {v12}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_7
    throw v0
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 3

    .line 2205
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 2207
    check-cast p0, Landroid/text/Spanned;

    const-class p4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, p4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    move p2, p1

    .line 2211
    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_3

    if-nez p0, :cond_1

    .line 2213
    aget-object v1, p4, v0

    instance-of v1, v1, Landroid/text/style/TabStopSpan;

    if-nez v1, :cond_1

    goto :goto_2

    .line 2217
    :cond_1
    aget-object v1, p4, v0

    check-cast v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_2

    cmpl-float v2, v1, p3

    if-lez v2, :cond_2

    move p2, v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmpl-float p0, p2, p1

    if-eqz p0, :cond_4

    return p2

    :cond_4
    const/high16 p0, 0x41a00000    # 20.0f

    add-float/2addr p3, p0

    div-float/2addr p3, p0

    float-to-int p0, p3

    mul-int/lit8 p0, p0, 0x14

    int-to-float p0, p0

    return p0
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 11

    .line 1034
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1035
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1036
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1037
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, 0x0

    move v5, v4

    .line 1040
    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, -0x1

    if-ge v5, v6, :cond_3

    .line 1041
    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v9, v5, 0x1

    .line 1042
    aget v10, v3, v9

    and-int/2addr v10, v7

    add-int/2addr v10, v6

    if-le v10, v2, :cond_0

    move v10, v2

    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v10, :cond_2

    if-le p1, v6, :cond_1

    return v4

    .line 1051
    :cond_1
    aget v5, v3, v9

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v5, v5, 0x3f

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_1
    const/4 v6, 0x1

    if-ne v5, v8, :cond_5

    .line 1057
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v6

    :cond_5
    :goto_2
    if-ne p1, v1, :cond_7

    .line 1063
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, v6, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v6

    goto :goto_4

    :cond_7
    add-int/2addr p1, v8

    move p0, v4

    .line 1066
    :goto_3
    array-length v0, v3

    if-ge p0, v0, :cond_a

    .line 1067
    aget v0, v3, p0

    add-int/2addr v0, v1

    add-int/lit8 v9, p0, 0x1

    .line 1068
    aget v10, v3, v9

    and-int/2addr v10, v7

    add-int/2addr v10, v0

    if-le v10, v2, :cond_8

    move v10, v2

    :cond_8
    if-lt p1, v0, :cond_9

    if-ge p1, v10, :cond_9

    .line 1073
    aget p0, v3, v9

    ushr-int/lit8 p0, p0, 0x1a

    and-int/lit8 v8, p0, 0x3f

    goto :goto_4

    :cond_9
    add-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_a
    :goto_4
    if-ge v8, v5, :cond_b

    move v4, v6

    :cond_b
    return v4
.end method

.method private primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12

    .line 1089
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1090
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1091
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1093
    new-array v5, v3, [Z

    .line 1095
    new-array v3, v3, [B

    const/4 v6, 0x0

    move v7, v6

    .line 1096
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_2

    .line 1097
    aget v8, v2, v7

    add-int/2addr v8, v0

    add-int/lit8 v9, v7, 0x1

    .line 1098
    aget v10, v2, v9

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int/2addr v10, v8

    if-le v10, v1, :cond_0

    move v10, v1

    :cond_0
    if-ne v10, v8, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v10, v0

    sub-int/2addr v10, v4

    .line 1105
    aget v8, v2, v9

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v3, v10

    :goto_1
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    move v1, v6

    .line 1109
    :goto_2
    array-length v7, v2

    if-ge v1, v7, :cond_6

    .line 1110
    aget v7, v2, v1

    add-int/2addr v7, v0

    add-int/lit8 v8, v1, 0x1

    .line 1111
    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    sub-int v9, v7, v0

    if-ne v7, v0, :cond_4

    .line 1113
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v4, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v9, -0x1

    .line 1114
    aget-byte v7, v3, v7

    :goto_3
    if-le v8, v7, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    aput-boolean v7, v5, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_6
    return-object v5
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10

    .line 314
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 315
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 316
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v0

    .line 319
    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 321
    invoke-virtual {p0, p1, v9, v0}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v1, p5

    .line 585
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_9

    .line 586
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_0

    .line 587
    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 590
    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v15, v2

    check-cast v15, Landroid/text/Spanned;

    .line 591
    invoke-interface {v15}, Landroid/text/Spanned;->length()I

    move-result v12

    .line 592
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v11, 0x0

    invoke-virtual {v2, v15, v11, v12}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 594
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v2, :cond_8

    .line 595
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 596
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 597
    sget-object v4, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 599
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 601
    iget v9, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v8, p6

    move v7, v1

    move/from16 v16, v2

    move v6, v3

    move v1, v11

    move v2, v1

    :goto_0
    if-gt v7, v8, :cond_8

    add-int/lit8 v5, v7, 0x1

    .line 604
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 608
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 610
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v18

    sub-int v18, v17, v18

    if-lt v6, v1, :cond_6

    .line 615
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v6, v12}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    if-ne v6, v3, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v1

    goto :goto_4

    :cond_2
    :goto_1
    move/from16 v20, v1

    move v2, v11

    move-object v11, v4

    move v4, v2

    .line 622
    :goto_2
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v2, v1, :cond_5

    .line 625
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v2

    if-ge v1, v3, :cond_4

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v2

    if-gt v1, v6, :cond_3

    goto :goto_3

    .line 627
    :cond_3
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v2

    invoke-static {v11, v4, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v4, v4, 0x1

    move-object v11, v1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move/from16 v21, v20

    move-object/from16 v20, v11

    move v11, v4

    goto :goto_5

    :cond_6
    move/from16 v21, v1

    move v11, v2

    :goto_4
    move-object/from16 v20, v4

    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_7

    .line 635
    aget-object v1, v20, v4

    check-cast v1, Landroid/text/style/LineBackgroundSpan;

    const/16 v22, 0x0

    move-object/from16 v2, p1

    move/from16 v23, v3

    move-object v3, v10

    move/from16 v24, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move v5, v9

    move/from16 v25, v6

    move/from16 v6, v16

    move/from16 v26, v7

    move/from16 v7, v18

    move/from16 v8, v17

    move/from16 v27, v9

    move-object v9, v15

    move-object/from16 v28, v10

    move/from16 v10, v25

    move/from16 v19, v11

    const/16 v29, 0x0

    move/from16 v11, v23

    move/from16 v30, v12

    move/from16 v12, v26

    .line 636
    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v4, v24, 0x1

    move/from16 v8, p6

    move/from16 v11, v19

    move/from16 v5, v22

    move/from16 v3, v23

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v9, v27

    move-object/from16 v10, v28

    move/from16 v12, v30

    goto :goto_6

    :cond_7
    move/from16 v23, v3

    move/from16 v22, v5

    move/from16 v19, v11

    const/16 v29, 0x0

    move/from16 v8, p6

    move/from16 v16, v17

    move/from16 v2, v19

    move-object/from16 v4, v20

    move/from16 v1, v21

    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v11, v29

    goto/16 :goto_0

    .line 642
    :cond_8
    iget-object v0, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    :cond_9
    if-eqz p2, :cond_b

    const/4 v1, 0x0

    if-eqz v14, :cond_a

    int-to-float v2, v14

    .line 648
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 649
    :cond_a
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v14, :cond_b

    neg-int v0, v14

    int-to-float v0, v0

    .line 650
    invoke-virtual {v13, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 39

    move-object/from16 v13, p0

    move/from16 v14, p2

    .line 415
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 416
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 417
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 419
    iget-object v15, v13, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 420
    iget-object v3, v13, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 421
    iget-object v12, v13, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 423
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 427
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    const/4 v4, 0x0

    move/from16 v9, p3

    move/from16 v16, v0

    move v7, v1

    move-object v6, v4

    move v8, v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v8, v9, :cond_19

    add-int/lit8 v5, v8, 0x1

    .line 433
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 434
    invoke-direct {v13, v8}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v17

    .line 435
    invoke-direct {v13, v8, v7, v4}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v18

    .line 436
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getHyphen(I)I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 439
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 441
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v10

    sub-int v10, v20, v10

    move-object/from16 v21, v11

    .line 443
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    move/from16 v22, v1

    .line 445
    iget v1, v13, Landroid/text/Layout;->mWidth:I

    move/from16 v23, v1

    .line 447
    iget-boolean v1, v13, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_c

    .line 448
    move-object v1, v12

    check-cast v1, Landroid/text/Spanned;

    .line 449
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eqz v7, :cond_1

    move-object/from16 v25, v2

    add-int/lit8 v2, v7, -0x1

    .line 450
    invoke-interface {v12, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object/from16 v26, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v27, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    :goto_1
    const/16 v27, 0x1

    :goto_2
    if-lt v7, v0, :cond_5

    if-eq v8, v14, :cond_2

    if-eqz v27, :cond_5

    .line 463
    :cond_2
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v7, v9, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 465
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-static {v1, v7, v0, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    .line 467
    iget-object v3, v13, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 468
    array-length v9, v2

    const/16 v24, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_3
    if-ltz v9, :cond_4

    move/from16 v28, v0

    .line 469
    aget-object v0, v2, v9

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    .line 470
    aget-object v0, v2, v9

    check-cast v0, Landroid/text/style/AlignmentSpan;

    invoke-interface {v0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v0, v28

    goto :goto_3

    :cond_4
    move/from16 v28, v0

    :goto_4
    move-object v9, v2

    move-object/from16 v26, v3

    const/16 v22, 0x0

    goto :goto_5

    :cond_5
    const/16 v24, 0x1

    move/from16 v28, v0

    move-object/from16 v9, v25

    .line 480
    :goto_5
    array-length v3, v9

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_8

    .line 483
    aget-object v2, v9, v0

    instance-of v2, v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v2, :cond_6

    .line 484
    aget-object v2, v9, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    move/from16 v29, v4

    .line 485
    aget-object v4, v9, v0

    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    add-int/2addr v4, v2

    if-ge v8, v4, :cond_7

    move/from16 v4, v24

    goto :goto_7

    :cond_6
    move/from16 v29, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v29

    goto :goto_6

    :cond_8
    move/from16 v29, v4

    move/from16 v4, v27

    :goto_7
    move/from16 v25, v23

    const/4 v2, 0x0

    const/16 v23, 0x0

    :goto_8
    if-ge v2, v3, :cond_b

    .line 495
    aget-object v0, v9, v2

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_a

    .line 496
    aget-object v0, v9, v2

    move-object v1, v0

    check-cast v1, Landroid/text/style/LeadingMarginSpan;

    const/4 v0, -0x1

    if-ne v11, v0, :cond_9

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p1

    move/from16 v30, v2

    move-object v2, v15

    move/from16 v31, v3

    move/from16 v3, v25

    move v13, v4

    move v4, v11

    move/from16 v32, v5

    move/from16 v5, v16

    move-object/from16 v33, v6

    move v6, v10

    move/from16 v34, v7

    move/from16 v7, v20

    move/from16 v35, v8

    move-object v8, v12

    move-object/from16 v24, v9

    move/from16 v9, v34

    move/from16 v36, v10

    move/from16 v10, v18

    move/from16 v38, v11

    move-object/from16 v37, v21

    move/from16 v11, v27

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    .line 498
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 501
    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v25, v25, v0

    goto/16 :goto_9

    :cond_9
    move-object v14, v1

    move/from16 v30, v2

    move/from16 v31, v3

    move v13, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v24, v9

    move/from16 v36, v10

    move/from16 v38, v11

    move-object/from16 v19, v12

    move-object/from16 v37, v21

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v23

    move/from16 v4, v38

    move/from16 v5, v16

    move/from16 v6, v36

    move/from16 v7, v20

    move-object/from16 v8, v19

    move/from16 v9, v34

    move/from16 v10, v18

    move/from16 v11, v27

    move-object/from16 v12, p0

    .line 503
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 506
    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    add-int v23, v23, v0

    goto :goto_9

    :cond_a
    move/from16 v30, v2

    move/from16 v31, v3

    move v13, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v24, v9

    move/from16 v36, v10

    move/from16 v38, v11

    move-object/from16 v19, v12

    move-object/from16 v37, v21

    :goto_9
    add-int/lit8 v2, v30, 0x1

    move v4, v13

    move-object/from16 v12, v19

    move-object/from16 v9, v24

    move/from16 v3, v31

    move/from16 v5, v32

    move-object/from16 v6, v33

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v10, v36

    move-object/from16 v21, v37

    move/from16 v11, v38

    move-object/from16 v13, p0

    move/from16 v14, p2

    const/16 v24, 0x1

    goto/16 :goto_8

    :cond_b
    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v7

    move-object/from16 v24, v9

    move/from16 v36, v10

    move/from16 v38, v11

    move-object/from16 v19, v12

    move-object/from16 v37, v21

    move v14, v8

    move-object/from16 v2, v24

    move-object/from16 v1, v26

    move-object/from16 v0, p0

    goto :goto_a

    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v29, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v36, v10

    move/from16 v38, v11

    move-object/from16 v19, v12

    move-object/from16 v37, v21

    move/from16 v28, v0

    move v14, v8

    move-object/from16 v1, v26

    move-object/from16 v0, p0

    move/from16 v25, v23

    const/16 v23, 0x0

    .line 512
    :goto_a
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v10

    if-eqz v10, :cond_e

    if-nez v22, :cond_e

    const/16 v3, 0x14

    move-object/from16 v4, v33

    if-nez v4, :cond_d

    .line 516
    new-instance v6, Landroid/text/Layout$TabStops;

    invoke-direct {v6, v3, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_b

    .line 518
    :cond_d
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    :goto_b
    move-object v12, v4

    const/16 v22, 0x1

    goto :goto_c

    :cond_e
    move-object/from16 v4, v33

    move-object v12, v4

    .line 525
    :goto_c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v1, v3, :cond_10

    move/from16 v8, v38

    const/4 v3, 0x1

    if-ne v8, v3, :cond_f

    .line 527
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_d

    :cond_f
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_d

    :cond_10
    move/from16 v8, v38

    const/4 v3, 0x1

    .line 528
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v4, :cond_12

    if-ne v8, v3, :cond_11

    .line 530
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_d

    :cond_11
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_d

    :cond_12
    move-object v4, v1

    .line 535
    :goto_d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v4, v5, :cond_14

    if-ne v8, v3, :cond_13

    .line 537
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v3

    add-int v4, v23, v3

    :goto_e
    move/from16 v21, v3

    move v11, v4

    const/4 v13, 0x0

    goto :goto_10

    .line 540
    :cond_13
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v3

    neg-int v3, v3

    sub-int v4, v25, v3

    goto :goto_e

    :cond_14
    const/4 v13, 0x0

    .line 544
    invoke-direct {v0, v14, v12, v13}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v5

    float-to-int v5, v5

    .line 545
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v4, v6, :cond_16

    if-ne v8, v3, :cond_15

    .line 547
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v3

    neg-int v3, v3

    sub-int v4, v25, v5

    sub-int/2addr v4, v3

    :goto_f
    move/from16 v21, v3

    move v11, v4

    goto :goto_10

    .line 550
    :cond_15
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v14, v3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v3

    sub-int v4, v23, v5

    add-int/2addr v4, v3

    goto :goto_f

    .line 554
    :cond_16
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v14, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    and-int/lit8 v5, v5, -0x2

    add-int v6, v25, v23

    sub-int/2addr v6, v5

    shr-int/lit8 v3, v6, 0x1

    add-int/2addr v3, v4

    move v11, v3

    move/from16 v21, v4

    .line 560
    :goto_10
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 561
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v9, v3, :cond_17

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v3, :cond_17

    if-nez v10, :cond_17

    if-nez v17, :cond_17

    int-to-float v7, v11

    move/from16 v14, v36

    int-to-float v8, v14

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    move/from16 v5, v34

    move/from16 v6, v18

    move-object v9, v15

    .line 563
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v10, v37

    goto :goto_12

    :cond_17
    move/from16 v14, v36

    move-object/from16 v3, v37

    move-object v4, v15

    move-object/from16 v5, v19

    move/from16 v6, v34

    move/from16 v7, v18

    move v13, v11

    move-object v11, v12

    .line 565
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    if-eqz v17, :cond_18

    sub-int v25, v25, v23

    sub-int v3, v25, v21

    int-to-float v3, v3

    move-object/from16 v10, v37

    .line 567
    invoke-virtual {v10, v3}, Landroid/text/TextLine;->justify(F)V

    goto :goto_11

    :cond_18
    move-object/from16 v10, v37

    :goto_11
    int-to-float v6, v13

    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v7, v16

    move v8, v14

    move/from16 v9, v20

    .line 569
    invoke-virtual/range {v4 .. v9}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    :goto_12
    move/from16 v9, p3

    move-object v13, v0

    move-object v3, v1

    move-object v11, v10

    move-object v6, v12

    move-object/from16 v12, v19

    move/from16 v16, v20

    move/from16 v1, v22

    move/from16 v0, v28

    move/from16 v7, v29

    move/from16 v8, v32

    move/from16 v14, p2

    goto/16 :goto_0

    :cond_19
    move-object v10, v11

    .line 573
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 0

    .line 802
    iget-object p0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 10

    .line 1797
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1799
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1800
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 1801
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v2

    .line 1803
    invoke-virtual {p0, v0}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v0

    .line 1804
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    .line 1805
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p0

    sub-float/2addr p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    const/4 p1, 0x1

    .line 1807
    invoke-static {p3, p1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v5, 0x800

    .line 1808
    invoke-static {p3, v5}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    or-int/2addr v0, v5

    const/4 v5, 0x2

    .line 1809
    invoke-static {p3, v5}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p3

    const/4 v6, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    sub-int v6, v2, v1

    shr-int/2addr v6, v5

    if-eqz p3, :cond_2

    add-int/2addr v1, v6

    :cond_2
    if-eqz v0, :cond_3

    sub-int/2addr v2, v6

    :cond_3
    cmpg-float v7, v3, v4

    if-gez v7, :cond_4

    move v3, v4

    :cond_4
    cmpg-float v7, p0, v4

    if-gez v7, :cond_5

    move p0, v4

    .line 1826
    :cond_5
    invoke-static {v3, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_6

    int-to-float v7, v1

    .line 1827
    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v2

    .line 1828
    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_6
    int-to-float v7, v1

    .line 1830
    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v7, v1, v2

    shr-int/2addr v7, p1

    int-to-float v7, v7

    .line 1831
    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1833
    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v2

    .line 1834
    invoke-virtual {p2, p0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    if-ne v0, v5, :cond_7

    int-to-float v0, v2

    .line 1838
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v6

    sub-float v8, p0, v7

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 1839
    invoke-virtual {p2, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1840
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p0, v7

    .line 1841
    invoke-virtual {p2, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_7
    if-ne v0, p1, :cond_8

    int-to-float v0, v2

    .line 1843
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v6

    sub-float v8, p0, v7

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 1844
    invoke-virtual {p2, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v9, v2, v4

    .line 1846
    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v7, p0

    .line 1847
    invoke-virtual {p2, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1849
    invoke-virtual {p2, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1850
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    :goto_2
    if-ne p3, v5, :cond_9

    int-to-float p0, v1

    .line 1854
    invoke-virtual {p2, v3, p0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, v6

    sub-float p3, v3, p1

    sub-int/2addr v1, v6

    int-to-float v0, v1

    .line 1855
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1856
    invoke-virtual {p2, v3, p0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v3, p1

    .line 1857
    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_9
    if-ne p3, p1, :cond_a

    int-to-float p0, v1

    .line 1859
    invoke-virtual {p2, v3, p0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, v6

    sub-float p3, v3, p1

    sub-int/2addr v1, v6

    int-to-float v0, v1

    .line 1860
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v4, v0

    .line 1862
    invoke-virtual {p2, p3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr p1, v3

    .line 1863
    invoke-virtual {p2, p1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1865
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1866
    invoke-virtual {p2, v3, p0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    :goto_3
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 0

    .line 764
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    return p0
.end method

.method public getHeight()I
    .locals 1

    .line 784
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    return p0
.end method

.method public getHeight(Z)I
    .locals 0

    .line 795
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getHyphen(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLineAscent(I)I
    .locals 2

    .line 1667
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1658
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 1640
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    return p0
.end method

.method public final getLineBottomWithoutSpacing(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1650
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 842
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 843
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 844
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    .line 845
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 847
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    return p0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 1602
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public getLineExtra(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineForOffset(I)I
    .locals 4

    .line 1434
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    .line 1437
    div-int/lit8 v2, v2, 0x2

    .line 1439
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public getLineForVertical(I)I
    .locals 4

    .line 1411
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    .line 1414
    div-int/lit8 v2, v2, 0x2

    .line 1416
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public getLineLeft(I)F
    .locals 5

    .line 1258
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1259
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1261
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 1263
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v4, :cond_1

    .line 1265
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_1
    return v3

    .line 1268
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 1269
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    .line 1270
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v4, :cond_4

    return v3

    .line 1274
    :cond_4
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    .line 1276
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 1277
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v1

    .line 1278
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    float-to-int p0, p0

    and-int/lit8 p0, p0, -0x2

    sub-int/2addr v1, v0

    sub-int/2addr v1, p0

    .line 1280
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p0, v0

    return p0
.end method

.method public getLineMax(I)F
    .locals 2

    .line 1320
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 1321
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 4

    .line 662
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 663
    :try_start_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 665
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 668
    :cond_0
    sget-object p1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 669
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 673
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 675
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    .line 676
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 670
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getLineRight(I)F
    .locals 4

    .line 1289
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1290
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1292
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_0

    .line 1293
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0

    .line 1294
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v3, :cond_1

    .line 1296
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    return p0

    .line 1298
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0

    .line 1299
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 1300
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    return p0

    .line 1301
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    if-ne v0, v3, :cond_4

    .line 1303
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    return p0

    .line 1305
    :cond_4
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p0, p0

    return p0

    .line 1307
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 1308
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v1

    .line 1309
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p0

    float-to-int p0, p0

    and-int/lit8 p0, p0, -0x2

    sub-int p1, v1, v0

    sub-int/2addr p1, p0

    .line 1311
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    int-to-float p0, v1

    return p0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    .line 1610
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result p0

    return p0
.end method

.method public getLineWidth(I)F
    .locals 2

    .line 1330
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    .line 1331
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    .line 1457
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p0

    return p0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1472
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1473
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 1475
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 1477
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 1479
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v14

    move v5, v12

    move v6, v11

    move-object v8, v13

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1481
    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 1485
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v11, v12

    add-int/lit8 v11, v11, -0x1

    .line 1489
    invoke-virtual {v0, v11}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 1488
    invoke-virtual {v14, v1, v3}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int v11, v1, v12

    .line 1492
    :goto_0
    invoke-virtual {v2, v12}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v5, v1

    move v6, v12

    const/4 v1, 0x0

    .line 1494
    :goto_1
    iget-object v7, v13, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v7, v7

    if-ge v1, v7, :cond_a

    .line 1495
    iget-object v7, v13, Landroid/text/Layout$Directions;->mDirections:[I

    aget v7, v7, v1

    add-int/2addr v7, v12

    .line 1496
    iget-object v8, v13, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    const v10, 0x3ffffff

    and-int/2addr v8, v10

    add-int/2addr v8, v7

    .line 1497
    iget-object v10, v13, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v10, v9

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_2

    const/4 v10, -0x1

    goto :goto_3

    :cond_2
    move v10, v4

    :goto_3
    if-le v8, v11, :cond_3

    move v8, v11

    :cond_3
    add-int/lit8 v15, v8, -0x1

    add-int/2addr v15, v4

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v16, v3, -0x1

    move/from16 v17, v6

    move-object/from16 v18, v13

    move/from16 v6, v16

    :goto_4
    sub-int v13, v15, v6

    if-le v13, v4, :cond_5

    add-int v13, v15, v6

    .line 1505
    div-int/lit8 v13, v13, 0x2

    .line 1506
    invoke-direct {v0, v13}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v4

    .line 1508
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    int-to-float v0, v10

    mul-float/2addr v4, v0

    mul-float v0, v0, p2

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_4

    move v15, v13

    goto :goto_5

    :cond_4
    move v6, v13

    :goto_5
    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    if-ge v6, v3, :cond_6

    goto :goto_6

    :cond_6
    move v3, v6

    :goto_6
    if-ge v3, v8, :cond_8

    sub-int/2addr v3, v12

    .line 1519
    invoke-virtual {v14, v3, v9}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int/2addr v0, v12

    sub-int v3, v0, v12

    xor-int/lit8 v4, v9, 0x1

    .line 1520
    invoke-virtual {v14, v3, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v3

    add-int/2addr v3, v12

    if-lt v3, v7, :cond_8

    if-ge v3, v8, :cond_8

    .line 1522
    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-ge v0, v8, :cond_7

    .line 1524
    invoke-virtual {v2, v0}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v6

    sub-float v6, v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v8, v6, v4

    if-gez v8, :cond_7

    move v4, v6

    move v6, v0

    goto :goto_7

    :cond_7
    move v6, v3

    :goto_7
    cmpg-float v0, v4, v5

    if-gez v0, :cond_8

    move/from16 v17, v6

    goto :goto_8

    :cond_8
    move v4, v5

    .line 1539
    :goto_8
    invoke-virtual {v2, v7}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v3, v0, v4

    if-gez v3, :cond_9

    move v5, v0

    move v6, v7

    goto :goto_9

    :cond_9
    move v5, v4

    move/from16 v6, v17

    :goto_9
    add-int/lit8 v1, v1, 0x2

    move-object/from16 v13, v18

    move-object/from16 v0, p0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    move/from16 v17, v6

    .line 1547
    invoke-virtual {v2, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_b

    goto :goto_a

    :cond_b
    move/from16 v11, v17

    .line 1553
    :goto_a
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v11
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1682
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p0

    return p0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1686
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p0

    return p0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 0

    .line 749
    iget-object p0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 3

    .line 1996
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1998
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 2000
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2001
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    const-class p1, Landroid/text/style/AlignmentSpan;

    .line 2000
    invoke-static {v1, v2, p0, p1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/AlignmentSpan;

    .line 2004
    array-length p1, p0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2006
    aget-object p0, p0, p1

    invoke-interface {p0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 2

    .line 2018
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2019
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2022
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getParagraphRight(I)I
    .locals 3

    .line 2029
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2030
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2031
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2034
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1126
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 1

    .line 1135
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1136
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p0

    return p0
.end method

.method public getRunRange(I)J
    .locals 8

    .line 989
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 990
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 991
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 994
    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 995
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move v4, v3

    .line 996
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 997
    aget v5, v1, v4

    add-int/2addr v5, v2

    add-int/lit8 v6, v4, 0x1

    .line 998
    aget v6, v1, v6

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    add-int/2addr v6, v5

    if-lt p1, v5, :cond_1

    if-ge p1, v6, :cond_1

    .line 1000
    invoke-static {v5, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1004
    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0

    .line 992
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 1

    .line 1154
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1155
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p0

    return p0
.end method

.method public final getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v1, v0, :cond_1

    move v8, v0

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    move v8, v1

    .line 1944
    :goto_0
    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 1945
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1947
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 1948
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v5

    if-ne v9, v10, :cond_2

    move-object/from16 v0, p0

    move v1, v9

    move v3, v8

    move v4, v11

    move-object/from16 v6, p3

    .line 1951
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_2

    .line 1953
    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v15, v0

    .line 1955
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 1956
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v9

    move v4, v11

    move-object/from16 v6, p3

    .line 1955
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 1958
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 1959
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v17

    int-to-float v0, v11

    const/16 v19, 0x0

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v21, 0x0

    move-object/from16 v16, p3

    move/from16 v18, v0

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v11, v15

    goto :goto_1

    .line 1962
    :cond_3
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v11

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v17, 0x1

    move-object/from16 v12, p3

    move v11, v15

    move/from16 v16, v0

    invoke-interface/range {v12 .. v17}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v10, :cond_5

    .line 1967
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1968
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 1969
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-ne v2, v6, :cond_4

    const/4 v13, 0x0

    int-to-float v14, v0

    int-to-float v0, v1

    const/16 v17, 0x0

    move-object/from16 v12, p3

    move v15, v11

    move/from16 v16, v0

    .line 1970
    invoke-interface/range {v12 .. v17}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    int-to-float v14, v0

    int-to-float v0, v1

    const/16 v17, 0x1

    move-object/from16 v12, p3

    move v15, v11

    move/from16 v16, v0

    .line 1972
    invoke-interface/range {v12 .. v17}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_1

    .line 1976
    :cond_5
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 1977
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v12

    .line 1979
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v10

    move v3, v8

    move v4, v9

    move v5, v12

    move v8, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 1981
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v8, :cond_6

    int-to-float v14, v9

    .line 1982
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v15

    int-to-float v0, v12

    const/16 v17, 0x0

    move-object/from16 v12, p3

    move v13, v11

    move/from16 v16, v0

    invoke-interface/range {v12 .. v17}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    int-to-float v3, v9

    .line 1985
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    int-to-float v5, v12

    const/4 v6, 0x1

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_2
    return-void
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    .line 1917
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1918
    new-instance v0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;

    invoke-direct {v0, p3}, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public final getSpacingAdd()F
    .locals 0

    .line 816
    iget p0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return p0
.end method

.method public final getSpacingMultiplier()F
    .locals 0

    .line 809
    iget p0, p0, Landroid/text/Layout;->mSpacingMult:F

    return p0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    .line 740
    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 0

    .line 824
    iget-object p0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 0

    .line 756
    iget p0, p0, Landroid/text/Layout;->mWidth:I

    return p0
.end method

.method public final increaseWidthTo(I)V
    .locals 1

    .line 773
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    .line 777
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    .line 774
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "attempted to reduce Layout width"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLevelBoundary(I)Z
    .locals 6

    .line 930
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 931
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 932
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 936
    :cond_0
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 937
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 938
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    move p0, v3

    .line 946
    :goto_0
    array-length v0, v1

    if-ge p0, v0, :cond_3

    .line 947
    aget v0, v1, p0

    if-ne p1, v0, :cond_2

    return v5

    :cond_2
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_3
    return v3

    .line 940
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, v5, :cond_5

    move p0, v3

    goto :goto_2

    :cond_5
    move p0, v5

    :goto_2
    if-ne p1, v2, :cond_6

    move p1, v3

    goto :goto_3

    .line 941
    :cond_6
    array-length p1, v1

    add-int/lit8 p1, p1, -0x2

    :goto_3
    add-int/2addr p1, v5

    .line 942
    aget p1, v1, p1

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    if-eq p1, p0, :cond_7

    move v3, v5

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v3
.end method

.method public isRtlCharAt(I)Z
    .locals 8

    .line 960
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 961
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 962
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 965
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    return v4

    .line 968
    :cond_1
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 969
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    move v0, v3

    .line 970
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 971
    aget v2, v1, v0

    add-int/2addr v2, p0

    add-int/lit8 v5, v0, 0x1

    .line 972
    aget v6, v1, v5

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    add-int/2addr v6, v2

    if-lt p1, v2, :cond_3

    if-ge p1, v6, :cond_3

    .line 974
    aget p0, v1, v5

    ushr-int/lit8 p0, p0, 0x1a

    and-int/lit8 p0, p0, 0x3f

    and-int/2addr p0, v4

    if-eqz p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return v3
.end method

.method protected final isSpanned()Z
    .locals 0

    .line 2231
    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 0

    if-ltz p3, :cond_0

    .line 286
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 287
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 288
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 289
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 290
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 291
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 292
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Layout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setJustificationMode(I)V
    .locals 0

    .line 273
    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 3

    .line 1780
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 1784
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
