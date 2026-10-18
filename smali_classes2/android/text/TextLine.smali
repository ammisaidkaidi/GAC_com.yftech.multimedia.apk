.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mComputed:Landroid/text/PrecomputedText;

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 70
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 71
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 73
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 75
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 78
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$1;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 0

    if-lez p1, :cond_0

    and-int/lit8 p3, p3, -0x19

    .line 1042
    :cond_0
    iget p0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, p0, :cond_1

    and-int/lit8 p3, p3, -0x8

    :cond_1
    return p3
.end method

.method private countStretchableSpaces(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 1295
    iget-boolean v1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v1, v1, p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1296
    :goto_1
    invoke-direct {p0, v1}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 13

    move-object v6, p0

    .line 505
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    move/from16 v7, p4

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-ne v1, v7, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    .line 506
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v12, v0

    add-float v8, p5, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v5, p1

    move v6, v8

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 507
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v12

    :cond_1
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    .line 512
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 7

    .line 823
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float/2addr p7, v0

    add-float v2, p7, p3

    .line 825
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p3

    .line 826
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p7

    .line 827
    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v6

    .line 829
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 832
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v2, p4

    move-object v0, p1

    move v1, p5

    move v3, p6

    move-object v5, p0

    .line 833
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 835
    invoke-virtual {p0, p7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 836
    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 837
    invoke-virtual {p0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v5, p9

    .line 1261
    iget-boolean v6, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v6, :cond_0

    sub-int v6, p4, p3

    sub-int v7, p6, p5

    .line 1264
    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v5

    move-object/from16 v0, p1

    move/from16 v2, p3

    move v3, v6

    move/from16 v4, p5

    move v5, v7

    move/from16 v6, p8

    move v7, v8

    move/from16 v8, p7

    move-object/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1267
    :cond_0
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    .line 1268
    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v9, v6, p3

    add-int v10, v6, p4

    add-int v11, v6, p5

    add-int v12, v6, p6

    int-to-float v14, v5

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    .line 800
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 801
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 802
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 803
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 804
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 806
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 808
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 1

    .line 1072
    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result p0

    iput-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1073
    iget-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1074
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 1076
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result p0

    iput-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1077
    iget-boolean p0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz p0, :cond_1

    .line 1078
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1080
    :cond_1
    iget p0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput p0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1081
    iget p0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput p0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 p0, 0x0

    .line 1082
    invoke-virtual {p1, v0, p0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 8

    if-ltz p1, :cond_b

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    .line 732
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-ne p5, v0, :cond_1

    goto/16 :goto_8

    .line 742
    :cond_1
    iget-object v1, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 743
    iget-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 744
    iget v0, p0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 748
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_3

    :cond_2
    move v3, p2

    goto :goto_5

    :cond_3
    if-eqz p6, :cond_4

    add-int/lit8 v0, p5, 0x1

    goto :goto_1

    :cond_4
    move v0, p5

    .line 752
    :goto_1
    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p3

    .line 754
    :goto_2
    iget-object p3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p2

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, v3, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p3, v3

    if-lt p3, v0, :cond_a

    .line 762
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p2

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p3

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 764
    iget-object v2, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 766
    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move-object v3, v2

    move v2, p1

    .line 768
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 769
    aget-object v4, v0, v2

    .line 770
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_5

    .line 771
    check-cast v4, Landroid/text/style/ReplacementSpan;

    move-object v3, v4

    goto :goto_4

    .line 773
    :cond_5
    invoke-virtual {v4, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_2

    if-eqz p6, :cond_7

    move p2, p3

    :cond_7
    return p2

    :goto_5
    if-eqz p6, :cond_8

    :goto_6
    move v7, p1

    goto :goto_7

    :cond_8
    const/4 p1, 0x2

    goto :goto_6

    .line 787
    :goto_7
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_9

    .line 788
    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, p3, v3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result p0

    return p0

    .line 791
    :cond_9
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p1

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int v4, p1, p3

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int v6, p1, p5

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p0

    return p1

    :cond_a
    move p2, p3

    goto :goto_2

    :cond_b
    :goto_8
    if-eqz p6, :cond_c

    .line 737
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p5, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p0

    return p1

    .line 739
    :cond_c
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p5, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p0, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 13

    move-object v0, p0

    .line 842
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    move-object v0, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v0

    return v0

    .line 845
    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    .line 846
    iget-object v4, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v4, :cond_1

    .line 848
    iget-object v6, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v7, v1, p2

    add-int v8, v1, p3

    add-int v9, v1, p4

    add-int v10, v1, p5

    add-int v12, v1, p7

    move-object v5, p1

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v0

    return v0

    .line 851
    :cond_1
    iget-object v0, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v2, p2, v1

    add-int v1, p3, v1

    invoke-virtual {v0, v2, v1}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    .line 997
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v9, v3, p3

    .line 998
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v3, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v3

    :goto_2
    if-eqz v11, :cond_3

    .line 1010
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1011
    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1012
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1013
    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1014
    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto :goto_3

    :cond_3
    move v12, v3

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 1017
    :goto_3
    iget-object v5, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v6, v9

    move v7, v10

    move-object/from16 v8, p11

    invoke-virtual/range {v3 .. v8}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    int-to-float v8, v3

    if-eqz v11, :cond_4

    move-object/from16 v3, p11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move v1, v8

    move/from16 v8, v16

    .line 1020
    invoke-static/range {v3 .. v8}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_0

    :goto_4
    if-eqz p6, :cond_6

    if-eqz p5, :cond_5

    sub-float v1, p7, v11

    move v6, v1

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    .line 1029
    :goto_5
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v9

    move v5, v10

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_6
    if-eqz p5, :cond_7

    neg-float v11, v11

    :cond_7
    return v11
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 30

    move-object/from16 v15, p0

    move/from16 v4, p1

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p10

    if-lt v14, v4, :cond_19

    if-gt v14, v13, :cond_19

    if-ne v4, v14, :cond_1

    .line 1115
    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1116
    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v12, :cond_0

    .line 1118
    invoke-static {v12, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_1
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v0, :cond_3

    :cond_2
    move/from16 v0, v17

    goto :goto_0

    .line 1127
    :cond_3
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v4

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1128
    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v4

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1129
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_2

    :cond_4
    move/from16 v0, v16

    :goto_0
    if-nez v0, :cond_5

    .line 1134
    iget-object v1, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1135
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1136
    invoke-virtual {v1}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v15, v4, v13, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p2

    move-object/from16 v15, v16

    .line 1137
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    :cond_5
    move/from16 v18, p6

    move v11, v4

    :goto_1
    if-ge v11, v14, :cond_18

    .line 1148
    iget-object v10, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1149
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1151
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v11

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    .line 1153
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    move-object v1, v0

    move/from16 v0, v17

    .line 1157
    :goto_2
    iget-object v2, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v2, :cond_9

    .line 1160
    iget-object v2, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v0

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v8

    if-ge v2, v3, :cond_8

    iget-object v2, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v11

    if-gt v2, v3, :cond_6

    goto :goto_3

    .line 1162
    :cond_6
    iget-object v2, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v0

    .line 1163
    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_7

    .line 1164
    move-object v1, v2

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_3

    .line 1168
    :cond_7
    invoke-virtual {v2, v10}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_c

    if-nez p11, :cond_b

    if-ge v8, v14, :cond_a

    goto :goto_4

    :cond_a
    move/from16 v19, v17

    goto :goto_5

    :cond_b
    :goto_4
    move/from16 v19, v16

    :goto_5
    move-object/from16 v0, p0

    move-object v2, v10

    move v3, v11

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v18

    move/from16 v8, p7

    move/from16 v20, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, v19

    .line 1173
    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float v18, v18, v0

    goto/16 :goto_f

    :cond_c
    move/from16 v20, v9

    .line 1178
    iget-object v12, v15, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 1179
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1182
    iget-object v9, v15, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 1183
    iget-object v0, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v3, v8

    move v2, v11

    move v7, v2

    :goto_6
    if-ge v7, v8, :cond_15

    .line 1185
    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v7

    iget v4, v15, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, v20

    invoke-virtual {v0, v1, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    sub-int v6, v0, v1

    .line 1188
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1189
    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v1, v17

    .line 1190
    :goto_7
    iget-object v4, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v4, v4, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v4, :cond_f

    .line 1192
    iget-object v4, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanStarts:[I

    aget v4, v4, v1

    iget v5, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v0

    if-ge v4, v5, :cond_e

    iget-object v4, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanEnds:[I

    aget v4, v4, v1

    iget v5, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v7

    if-gt v4, v5, :cond_d

    goto :goto_8

    .line 1195
    :cond_d
    iget-object v4, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v4, [Landroid/text/style/CharacterStyle;

    aget-object v4, v4, v1

    .line 1196
    invoke-virtual {v4, v10}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1199
    :cond_f
    invoke-direct {v15, v10, v9}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v7, v11, :cond_11

    .line 1205
    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :cond_10
    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object v0, v10

    move/from16 v28, v11

    move-object v1, v12

    goto/16 :goto_b

    .line 1206
    :cond_11
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1210
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1211
    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    .line 1210
    invoke-direct {v15, v2, v3, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_13

    if-ge v3, v14, :cond_12

    goto :goto_9

    :cond_12
    move/from16 v19, v17

    goto :goto_a

    :cond_13
    :goto_9
    move/from16 v19, v16

    .line 1214
    :goto_a
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v21

    iget-object v5, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object v1, v12

    move v4, v11

    move-object/from16 v22, v5

    move/from16 v5, v20

    move/from16 v23, v6

    move/from16 v6, p4

    move/from16 v24, v7

    move-object/from16 v7, p5

    move/from16 v25, v8

    move/from16 v8, v18

    move-object/from16 v26, v9

    move/from16 v9, p7

    move-object/from16 v27, v10

    move/from16 v10, p8

    move/from16 v28, v11

    move/from16 v11, p9

    move-object/from16 v29, v12

    move-object/from16 v12, p10

    move/from16 v13, v19

    move/from16 v14, v21

    move-object/from16 v15, v22

    .line 1212
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v18, v18, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    .line 1217
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v15, p0

    .line 1218
    iget-object v2, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move/from16 v2, v24

    .line 1227
    :goto_b
    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1228
    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v3

    move/from16 v11, v24

    .line 1229
    iput v11, v3, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v4, v23

    .line 1230
    iput v4, v3, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 1231
    iget-object v5, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    move/from16 v4, v23

    :goto_c
    move-object v10, v0

    move-object v12, v1

    move v3, v4

    move v7, v3

    move/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v11, v28

    move/from16 v13, p3

    move/from16 v14, p2

    goto/16 :goto_6

    :cond_15
    move/from16 v25, v8

    move/from16 v28, v11

    move-object v1, v12

    .line 1235
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1236
    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    .line 1235
    invoke-direct {v15, v2, v3, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_17

    move/from16 v14, p2

    if-ge v3, v14, :cond_16

    goto :goto_d

    :cond_16
    move/from16 v13, v17

    goto :goto_e

    :cond_17
    move/from16 v14, p2

    :goto_d
    move/from16 v13, v16

    :goto_e
    move/from16 v0, v25

    .line 1239
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    iget-object v12, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v4, v28

    move/from16 v5, v20

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, v18

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v21, v12

    move-object/from16 v12, p10

    move/from16 v14, v19

    move-object/from16 v15, v21

    .line 1237
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v18, v18, v0

    :goto_f
    move-object/from16 v12, p10

    move/from16 v11, v20

    move/from16 v13, p3

    move/from16 v14, p2

    move-object/from16 v15, p0

    goto/16 :goto_1

    :cond_18
    sub-float v18, v18, p6

    return v18

    .line 1109
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is out of start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") and limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p10

    move-object/from16 v0, p12

    move-object/from16 v13, p0

    move-object/from16 v14, p15

    .line 882
    iget v1, v13, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setWordSpacing(F)V

    if-eqz v0, :cond_0

    .line 885
    invoke-static {v0, v8}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v0, 0x0

    move/from16 v7, p3

    if-ne v7, v9, :cond_1

    return v0

    :cond_1
    const/4 v15, 0x0

    if-nez v14, :cond_2

    move v6, v15

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v1

    :goto_0
    if-nez p13, :cond_4

    if-eqz p7, :cond_3

    .line 896
    iget v1, v8, Landroid/text/TextPaint;->bgColor:I

    if-nez v1, :cond_4

    if-nez v6, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v7, v0

    move v13, v6

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v13, v6

    move/from16 v6, p6

    move/from16 v7, p14

    .line 897
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v0

    move v7, v0

    :goto_2
    if-eqz p7, :cond_c

    if-eqz p6, :cond_5

    sub-float v0, p8, v7

    move/from16 v16, p8

    move v11, v0

    goto :goto_3

    :cond_5
    add-float v0, p8, v7

    move/from16 v11, p8

    move/from16 v16, v0

    .line 910
    :goto_3
    iget v0, v8, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_6

    .line 911
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 912
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v5

    .line 914
    iget v0, v8, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 915
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p9

    int-to-float v2, v0

    move/from16 v0, p11

    int-to-float v4, v0

    move-object/from16 v0, p7

    move v1, v11

    move/from16 v3, v16

    move/from16 v17, v7

    move-object v7, v5

    move-object/from16 v5, p1

    .line 916
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 918
    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 919
    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_4

    :cond_6
    move/from16 v17, v7

    :goto_4
    if-eqz v13, :cond_b

    move v7, v15

    :goto_5
    if-ge v7, v13, :cond_b

    .line 924
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/text/TextLine$DecorationInfo;

    .line 926
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 927
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v6

    move/from16 v6, p6

    move/from16 v10, v17

    move/from16 v17, v7

    move v7, v15

    .line 928
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v15

    move/from16 v7, v18

    .line 930
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v0

    if-eqz p6, :cond_7

    sub-float v0, v16, v0

    sub-float v1, v16, v15

    move v15, v0

    move/from16 v18, v1

    goto :goto_6

    :cond_7
    add-float/2addr v15, v11

    add-float/2addr v0, v11

    move/from16 v18, v0

    .line 944
    :goto_6
    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_8

    .line 945
    iget v2, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v9, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v12

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v5, v15

    move/from16 v6, v18

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 948
    :cond_8
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v5, v15

    move/from16 v19, v6

    move/from16 v6, v18

    move/from16 v20, v13

    move v13, v7

    move/from16 v7, v19

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_7

    :cond_9
    move/from16 v20, v13

    move v13, v7

    .line 955
    :goto_7
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_a

    .line 957
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 958
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v12

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v5, v15

    move/from16 v6, v18

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_a
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v10

    move/from16 v13, v20

    move/from16 v9, p2

    goto/16 :goto_5

    :cond_b
    move/from16 v10, v17

    .line 964
    iget v0, v8, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, v11

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    goto :goto_8

    :cond_c
    move v10, v7

    :goto_8
    if-eqz p6, :cond_d

    neg-float v7, v10

    goto :goto_9

    :cond_d
    move v7, v10

    :goto_9
    return v7
.end method

.method public static isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

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

.method private isStretchableWhitespace(I)Z
    .locals 0

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    .line 531
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 91
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 93
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    .line 95
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 96
    monitor-exit v0

    return-object v2

    .line 99
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 99
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 117
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 118
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 119
    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 120
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 121
    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 122
    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 124
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 125
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 126
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 128
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    .line 129
    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 130
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 131
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    .line 814
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 815
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 816
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 817
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 818
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 21

    move-object/from16 v10, p0

    .line 242
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_1

    .line 243
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 244
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    .line 247
    :cond_0
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 248
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 254
    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 256
    array-length v1, v11

    add-int/lit8 v12, v1, -0x2

    const/4 v14, 0x0

    .line 257
    :goto_0
    array-length v1, v11

    if-ge v14, v1, :cond_e

    .line 258
    aget v1, v11, v14

    add-int/lit8 v2, v14, 0x1

    .line 259
    aget v3, v11, v2

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 260
    iget v4, v10, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_2

    .line 261
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    :cond_2
    move v15, v3

    .line 263
    iget v3, v10, Landroid/text/TextLine;->mLen:I

    if-le v1, v3, :cond_3

    goto/16 :goto_9

    .line 264
    :cond_3
    aget v2, v11, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    const/16 v16, 0x1

    if-eqz v2, :cond_4

    move/from16 v17, v16

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    .line 267
    :goto_1
    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v15

    :goto_2
    move/from16 v18, v0

    move v9, v2

    move v2, v1

    :goto_3
    if-gt v9, v15, :cond_d

    .line 269
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v0, :cond_7

    if-ge v9, v15, :cond_7

    .line 270
    iget-object v0, v10, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v0, v9

    const v1, 0xd800

    if-lt v0, v1, :cond_6

    const v1, 0xdc00

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v9, 0x1

    if-ge v1, v15, :cond_6

    .line 272
    iget-object v0, v10, Landroid/text/TextLine;->mChars:[C

    invoke-static {v0, v9}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v3, 0xffff

    if-le v0, v3, :cond_6

    goto :goto_8

    :cond_6
    move v8, v0

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    const/16 v7, 0x9

    if-eq v9, v15, :cond_9

    if-ne v8, v7, :cond_8

    goto :goto_5

    :cond_8
    move v1, v9

    goto :goto_8

    :cond_9
    :goto_5
    add-float v5, p2, v18

    if-ne v14, v12, :cond_b

    .line 281
    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v9, v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v19, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v19, v16

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v4, v17

    move/from16 v6, p3

    move v13, v7

    move/from16 v7, p4

    move v13, v8

    move/from16 v8, p5

    move/from16 v20, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v18, v18, v0

    const/16 v0, 0x9

    if-ne v13, v0, :cond_c

    .line 285
    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v18

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    move/from16 v18, v0

    :cond_c
    add-int/lit8 v2, v20, 0x1

    move/from16 v1, v20

    :goto_8
    add-int/lit8 v9, v1, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v14, v14, 0x2

    move/from16 v0, v18

    goto/16 :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 20

    move-object/from16 v7, p0

    move/from16 v5, p1

    move/from16 v8, p2

    .line 565
    iget v9, v7, Landroid/text/TextLine;->mLen:I

    .line 566
    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v11

    .line 567
    :goto_0
    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v14, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const v16, 0x3ffffff

    if-nez v5, :cond_1

    move v0, v10

    move v12, v11

    const/4 v10, -0x2

    goto/16 :goto_9

    :cond_1
    if-ne v5, v9, :cond_2

    .line 575
    array-length v0, v14

    move v12, v11

    move/from16 v19, v10

    move v10, v0

    move/from16 v0, v19

    goto/16 :goto_9

    :cond_2
    move v1, v9

    move v0, v11

    move v2, v0

    .line 579
    :goto_1
    array-length v3, v14

    if-ge v0, v3, :cond_a

    .line 580
    aget v2, v14, v0

    add-int/2addr v2, v11

    if-lt v5, v2, :cond_9

    add-int/lit8 v1, v0, 0x1

    .line 582
    aget v3, v14, v1

    and-int v3, v3, v16

    add-int/2addr v3, v2

    if-le v3, v9, :cond_3

    move v3, v9

    :cond_3
    if-ge v5, v3, :cond_8

    .line 587
    aget v1, v14, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x3f

    if-ne v5, v2, :cond_7

    add-int/lit8 v4, v5, -0x1

    move v6, v11

    .line 595
    :goto_2
    array-length v15, v14

    if-ge v6, v15, :cond_6

    .line 596
    aget v15, v14, v6

    add-int/2addr v15, v11

    if-lt v4, v15, :cond_5

    add-int/lit8 v17, v6, 0x1

    .line 598
    aget v18, v14, v17

    and-int v18, v18, v16

    add-int v12, v15, v18

    if-le v12, v9, :cond_4

    move v12, v9

    :cond_4
    if-ge v4, v12, :cond_5

    .line 604
    aget v17, v14, v17

    ushr-int/lit8 v17, v17, 0x1a

    and-int/lit8 v10, v17, 0x3f

    if-ge v10, v1, :cond_5

    move v0, v6

    move v1, v10

    move v3, v12

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x2

    const/4 v10, -0x1

    goto :goto_2

    :cond_6
    move v15, v2

    move v2, v11

    :goto_3
    move v10, v0

    move v12, v1

    move/from16 v17, v15

    move v15, v3

    goto :goto_4

    :cond_7
    move v10, v0

    move v12, v1

    move/from16 v17, v2

    move v15, v3

    move v2, v11

    goto :goto_4

    :cond_8
    move v1, v3

    :cond_9
    add-int/lit8 v0, v0, 0x2

    const/4 v10, -0x1

    goto :goto_1

    :cond_a
    move v10, v0

    move v15, v1

    move/from16 v17, v2

    move v2, v11

    move v12, v2

    .line 629
    :goto_4
    array-length v0, v14

    if-eq v10, v0, :cond_10

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move v4, v11

    :goto_5
    if-ne v8, v4, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    move v6, v11

    :goto_6
    if-eqz v6, :cond_d

    move v0, v15

    goto :goto_7

    :cond_d
    move/from16 v0, v17

    :goto_7
    if-ne v5, v0, :cond_e

    if-eq v6, v2, :cond_10

    :cond_e
    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v17

    move v3, v15

    move/from16 v5, p1

    move/from16 v18, v6

    .line 634
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v18, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v15, v17

    :goto_8
    if-eq v0, v15, :cond_11

    return v0

    :cond_10
    const/4 v0, -0x1

    :cond_11
    :goto_9
    if-ne v8, v13, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    move v1, v11

    :goto_a
    if-eqz v1, :cond_13

    const/4 v15, 0x2

    goto :goto_b

    :cond_13
    const/4 v15, -0x2

    :goto_b
    add-int/2addr v10, v15

    if-ltz v10, :cond_1b

    .line 653
    array-length v2, v14

    if-ge v10, v2, :cond_1b

    .line 654
    aget v1, v14, v10

    add-int v15, v11, v1

    add-int/lit8 v1, v10, 0x1

    .line 655
    aget v2, v14, v1

    and-int v2, v2, v16

    add-int/2addr v2, v15

    if-le v2, v9, :cond_14

    move/from16 v17, v9

    goto :goto_c

    :cond_14
    move/from16 v17, v2

    .line 660
    :goto_c
    aget v1, v14, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v6, v1, 0x3f

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    move v4, v11

    :goto_d
    if-ne v8, v4, :cond_16

    const/4 v1, -0x1

    const/16 v18, 0x1

    goto :goto_e

    :cond_16
    move/from16 v18, v11

    const/4 v1, -0x1

    :goto_e
    if-ne v0, v1, :cond_19

    if-eqz v18, :cond_17

    move v5, v15

    goto :goto_f

    :cond_17
    move/from16 v5, v17

    :goto_f
    move-object/from16 v0, p0

    move v1, v10

    move v2, v15

    move/from16 v3, v17

    move v12, v6

    move/from16 v6, v18

    .line 666
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v18, :cond_18

    move/from16 v15, v17

    :cond_18
    if-ne v0, v15, :cond_1f

    goto :goto_9

    :cond_19
    move v1, v6

    if-ge v1, v12, :cond_1f

    if-eqz v18, :cond_1a

    move v0, v15

    goto :goto_10

    :cond_1a
    move/from16 v0, v17

    goto :goto_10

    :cond_1b
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    if-eqz v1, :cond_1c

    .line 691
    iget v0, v7, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x1

    add-int/lit8 v10, v0, 0x1

    move v0, v10

    goto :goto_10

    :cond_1c
    move v0, v2

    goto :goto_10

    :cond_1d
    if-gt v0, v9, :cond_1f

    if-eqz v1, :cond_1e

    move v0, v9

    goto :goto_10

    :cond_1e
    move v0, v11

    :cond_1f
    :goto_10
    return v0
.end method

.method public justify(F)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 218
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_0
    if-lez v0, :cond_0

    .line 219
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, v1, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v0, v1, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 229
    iput p1, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v7, -0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    const/4 v0, 0x0

    if-gez v8, :cond_1

    return v0

    .line 325
    :cond_1
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    .line 326
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 327
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 329
    :cond_2
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 330
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 334
    :cond_3
    iget-object v9, v6, Landroid/text/TextLine;->mChars:[C

    .line 335
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v10, v1, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v12, 0x0

    .line 336
    :goto_1
    array-length v1, v10

    if-ge v12, v1, :cond_16

    .line 337
    aget v1, v10, v12

    add-int/lit8 v2, v12, 0x1

    .line 338
    aget v3, v10, v2

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 339
    iget v4, v6, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_4

    .line 340
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    :cond_4
    move v13, v3

    .line 342
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    if-le v1, v3, :cond_5

    goto/16 :goto_e

    .line 343
    :cond_5
    aget v2, v10, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    .line 346
    :goto_2
    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v13

    :goto_3
    move/from16 v16, v0

    move v4, v1

    move v5, v2

    :goto_4
    if-gt v5, v13, :cond_15

    .line 348
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v0, :cond_9

    if-ge v5, v13, :cond_9

    .line 349
    aget-char v0, v9, v5

    const v1, 0xd800

    if-lt v0, v1, :cond_8

    const v1, 0xdc00

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v5, 0x1

    if-ge v1, v13, :cond_8

    .line 351
    invoke-static {v9, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v2, 0xffff

    if-le v0, v2, :cond_8

    goto :goto_6

    :cond_8
    move v3, v0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    const/16 v2, 0x9

    if-eq v5, v13, :cond_b

    if-ne v3, v2, :cond_a

    goto :goto_7

    :cond_a
    move v1, v5

    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_d

    :cond_b
    :goto_7
    if-lt v8, v4, :cond_c

    if-ge v8, v5, :cond_c

    const/16 v17, 0x1

    goto :goto_8

    :cond_c
    const/16 v17, 0x0

    .line 362
    :goto_8
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-ne v0, v15, :cond_e

    const/16 v18, 0x1

    goto :goto_a

    :cond_e
    const/16 v18, 0x0

    :goto_a
    if-eqz v17, :cond_f

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, p1

    move v3, v5

    move v4, v15

    move-object/from16 v5, p3

    .line 364
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v16, v16, v0

    return v16

    :cond_f
    move-object/from16 v0, p0

    move v1, v4

    move v11, v2

    move v2, v5

    move v14, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v15

    move/from16 v20, v5

    move-object/from16 v5, p3

    .line 367
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    if-eqz v18, :cond_10

    goto :goto_b

    :cond_10
    neg-float v0, v0

    :goto_b
    add-float v16, v16, v0

    if-eqz v17, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, v20

    move v4, v15

    .line 371
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v16, v16, v0

    return v16

    :cond_11
    if-ne v14, v11, :cond_14

    move/from16 v2, v20

    if-ne v7, v2, :cond_12

    return v16

    .line 378
    :cond_12
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    invoke-virtual {v6, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    if-ne v8, v2, :cond_13

    return v0

    :cond_13
    move/from16 v16, v0

    goto :goto_c

    :cond_14
    move/from16 v2, v20

    :goto_c
    add-int/lit8 v4, v2, 0x1

    move v1, v2

    goto :goto_6

    :goto_d
    add-int/lit8 v5, v1, 0x1

    goto/16 :goto_4

    :cond_15
    add-int/lit8 v12, v12, 0x2

    move/from16 v0, v16

    goto/16 :goto_1

    :cond_16
    :goto_e
    return v0
.end method

.method measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 21

    move-object/from16 v6, p0

    .line 397
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    new-array v8, v0, [F

    .line 399
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    add-int/2addr v0, v7

    new-array v9, v0, [I

    const/4 v10, 0x0

    move v0, v10

    .line 400
    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_1

    .line 401
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    aget v0, v9, v10

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 404
    aput v1, v8, v10

    .line 409
    :cond_2
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_6

    .line 410
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v2, :cond_4

    .line 411
    :goto_2
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v10, v0, :cond_3

    const/4 v1, 0x0

    .line 412
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    return-object v8

    .line 416
    :cond_4
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v2, :cond_6

    .line 417
    :goto_3
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v10, v0, :cond_5

    const/4 v1, 0x0

    .line 418
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v2, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    return-object v8

    .line 424
    :cond_6
    iget-object v11, v6, Landroid/text/TextLine;->mChars:[C

    .line 425
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v12, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move v13, v10

    .line 426
    :goto_4
    array-length v0, v12

    if-ge v13, v0, :cond_1a

    .line 427
    aget v0, v12, v13

    add-int/lit8 v2, v13, 0x1

    .line 428
    aget v3, v12, v2

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 429
    iget v4, v6, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_7

    .line 430
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    :cond_7
    move v14, v3

    .line 432
    iget v3, v6, Landroid/text/TextLine;->mLen:I

    if-le v0, v3, :cond_8

    goto/16 :goto_14

    .line 433
    :cond_8
    aget v2, v12, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    move v15, v7

    goto :goto_5

    :cond_9
    move v15, v10

    .line 436
    :goto_5
    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_a

    move v2, v0

    goto :goto_6

    :cond_a
    move v2, v14

    :goto_6
    move v4, v0

    move/from16 v16, v1

    move v5, v2

    :goto_7
    if-gt v5, v14, :cond_19

    .line 438
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v0, :cond_c

    if-ge v5, v14, :cond_c

    .line 439
    aget-char v0, v11, v5

    const v1, 0xd800

    if-lt v0, v1, :cond_b

    const v1, 0xdc00

    if-ge v0, v1, :cond_b

    add-int/lit8 v1, v5, 0x1

    if-ge v1, v14, :cond_b

    .line 441
    invoke-static {v11, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v2, 0xffff

    if-le v0, v2, :cond_b

    goto :goto_9

    :cond_b
    move v3, v0

    goto :goto_8

    :cond_c
    move v3, v10

    :goto_8
    const/16 v2, 0x9

    if-eq v5, v14, :cond_e

    if-ne v3, v2, :cond_d

    goto :goto_a

    :cond_d
    move v1, v5

    :goto_9
    move v0, v7

    move-object/from16 v18, v11

    goto/16 :goto_13

    .line 451
    :cond_e
    :goto_a
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    move v0, v7

    goto :goto_b

    :cond_f
    move v0, v10

    :goto_b
    if-ne v0, v15, :cond_10

    move/from16 v17, v7

    goto :goto_c

    :cond_10
    move/from16 v17, v10

    :goto_c
    move-object/from16 v0, p0

    move v1, v4

    move v10, v2

    move v2, v5

    move v7, v3

    move v3, v5

    move v10, v4

    move v4, v15

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v5, p2

    .line 452
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    if-eqz v17, :cond_11

    goto :goto_d

    :cond_11
    neg-float v0, v0

    :goto_d
    add-float v19, v16, v0

    if-eqz v17, :cond_12

    goto :goto_e

    :cond_12
    move/from16 v16, v19

    :goto_e
    if-eqz v17, :cond_13

    move-object/from16 v17, p2

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    move-object/from16 v17, v0

    :goto_f
    move v5, v10

    :goto_10
    if-gt v5, v11, :cond_15

    .line 457
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v5, v0, :cond_15

    .line 458
    aget v0, v9, v5

    if-lt v0, v10, :cond_14

    aget v0, v9, v5

    if-ge v0, v11, :cond_14

    move-object/from16 v0, p0

    move v1, v10

    move v2, v5

    move v3, v11

    move v4, v15

    move/from16 v20, v5

    move-object/from16 v5, v17

    .line 460
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v16, v0

    aput v0, v8, v20

    goto :goto_11

    :cond_14
    move/from16 v20, v5

    :goto_11
    add-int/lit8 v5, v20, 0x1

    goto :goto_10

    :cond_15
    const/16 v0, 0x9

    if-ne v7, v0, :cond_18

    .line 465
    aget v0, v9, v11

    if-ne v0, v11, :cond_16

    .line 466
    aput v19, v8, v11

    .line 468
    :cond_16
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v19

    invoke-virtual {v6, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-int/lit8 v5, v11, 0x1

    .line 469
    aget v1, v9, v5

    if-ne v1, v11, :cond_17

    .line 470
    aput v0, v8, v5

    :cond_17
    move/from16 v16, v0

    goto :goto_12

    :cond_18
    move/from16 v16, v19

    :goto_12
    add-int/lit8 v4, v11, 0x1

    move v1, v11

    const/4 v0, 0x1

    :goto_13
    add-int/lit8 v5, v1, 0x1

    move v7, v0

    move-object/from16 v11, v18

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_19
    move v0, v7

    move-object/from16 v18, v11

    add-int/lit8 v13, v13, 0x2

    move/from16 v1, v16

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 478
    :cond_1a
    :goto_14
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aget v0, v9, v0

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    if-ne v0, v2, :cond_1b

    .line 479
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aput v1, v8, v0

    :cond_1b
    return-object v8
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 301
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    return p0
.end method

.method nextTab(F)F
    .locals 1

    .line 1280
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1281
    iget-object p0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {p0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x14

    .line 1283
    invoke-static {p1, p0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result p0

    return p0
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 154
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 155
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 156
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    sub-int v0, p4, p3

    .line 157
    iput v0, p0, Landroid/text/TextLine;->mLen:I

    .line 158
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 159
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 160
    iget-object p5, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz p5, :cond_8

    .line 163
    iput-boolean p7, p0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 p5, 0x0

    .line 164
    iput-object p5, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 167
    instance-of v0, p2, Landroid/text/Spanned;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 169
    iget-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v0, v3, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 170
    iget-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 173
    :goto_0
    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 174
    instance-of v3, p2, Landroid/text/PrecomputedText;

    if-eqz v3, :cond_1

    .line 177
    move-object v3, p2

    check-cast v3, Landroid/text/PrecomputedText;

    iput-object v3, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 178
    iget-object v3, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v3}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_1
    if-nez v0, :cond_3

    if-nez p7, :cond_3

    .line 183
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 185
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_7

    .line 186
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    array-length p1, p1

    iget p5, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, p5, :cond_5

    .line 187
    :cond_4
    iget p1, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/TextLine;->mChars:[C

    .line 189
    :cond_5
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    invoke-static {p2, p3, p4, p1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v0, :cond_7

    .line 196
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    move p2, p3

    :goto_3
    if-ge p2, p4, :cond_7

    .line 198
    iget-object p5, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p5, p2, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result p5

    .line 199
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p6, p2, p5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result p6

    if-eqz p6, :cond_6

    sub-int/2addr p2, p3

    const p6, 0xfffc

    .line 201
    aput-char p6, p1, p2

    add-int/2addr p2, v1

    sub-int p6, p5, p3

    :goto_4
    if-ge p2, p6, :cond_6

    const p7, 0xfeff

    .line 203
    aput-char p7, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    move p2, p5

    goto :goto_3

    .line 209
    :cond_7
    iput-object p8, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void

    .line 161
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Directions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
