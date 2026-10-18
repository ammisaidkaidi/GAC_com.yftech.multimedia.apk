.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# static fields
.field private static final OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private mCachedPaint:Landroid/text/TextPaint;

.field private mCopiedBuffer:[C

.field private mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private mLtrWithoutBidi:Z

.field private mNativeObjectCleaner:Ljava/lang/Runnable;

.field private mNativePtr:J

.field private mParaDir:I

.field private mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private mSpanned:Landroid/text/Spanned;

.field private mTextLength:I

.field private mTextStart:I

.field private mWholeWidth:F

.field private mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/text/MeasuredParagraph;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/text/MeasuredParagraph;->nGetReleaseFunc()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 70
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 120
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 124
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 128
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    .line 151
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    return-void
.end method

.method private applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V
    .locals 9

    .line 586
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 588
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    const-wide/16 v1, 0x0

    cmp-long p1, p5, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 592
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v2, :cond_1

    .line 593
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 598
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 599
    aget-object v3, p2, v0

    .line 600
    instance-of v4, v3, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_2

    .line 602
    move-object v2, v3

    check-cast v2, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    .line 605
    :cond_2
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v2

    .line 610
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v5, p3, p2

    .line 611
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v6, p4, p2

    if-eqz p1, :cond_4

    .line 614
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_4
    if-eqz v4, :cond_5

    move-object v3, p0

    move-wide v7, p5

    .line 618
    invoke-direct/range {v3 .. v8}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V

    goto :goto_3

    .line 621
    :cond_5
    invoke-direct {p0, v5, v6, p5, p6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IIJ)V

    :goto_3
    if-eqz v1, :cond_7

    .line 625
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-gez p1, :cond_6

    .line 626
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 627
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    .line 629
    :cond_6
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 630
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p3, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 633
    :goto_4
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 634
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 635
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 636
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p1, p0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    :cond_7
    return-void
.end method

.method private applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V
    .locals 7

    .line 524
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float v6, p1

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-nez p1, :cond_1

    .line 528
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p1, p2, v6}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    add-int/lit8 p2, p2, 0x1

    if-le p3, p2, :cond_0

    .line 530
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/util/Arrays;->fill([FIIF)V

    .line 532
    :cond_0
    iget p1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr p1, v6

    iput p1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    .line 534
    :cond_1
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    move-wide v0, p4

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->nAddReplacementRun(JJIIF)V

    :goto_0
    return-void
.end method

.method private applyStyleRun(IIJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v5, p2

    .line 543
    iget-boolean v3, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const-wide/16 v13, 0x0

    if-eqz v3, :cond_1

    cmp-long v3, p3, v13

    if-nez v3, :cond_0

    .line 546
    iget v10, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v6, v5, v9

    const/4 v7, 0x0

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 548
    invoke-virtual {v3}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    move/from16 v3, p1

    move v4, v6

    move/from16 v5, p1

    move/from16 v9, p1

    .line 546
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v10, v1

    iput v10, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_4

    .line 550
    :cond_0
    iget-object v0, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide/from16 v0, p3

    move-wide v2, v3

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    goto :goto_4

    .line 555
    :cond_1
    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v9}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    add-int/lit8 v4, v9, 0x1

    move/from16 v23, v9

    :goto_0
    if-eq v4, v5, :cond_2

    .line 559
    iget-object v6, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v6, v4}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v6

    if-eq v6, v3, :cond_6

    :cond_2
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move/from16 v21, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    cmp-long v3, p3, v13

    if-nez v3, :cond_4

    sub-int v20, v4, v23

    .line 563
    iget v3, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v15, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v6, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v7, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 565
    invoke-virtual {v7}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v23

    move/from16 v18, v20

    move/from16 v19, v23

    .line 563
    invoke-virtual/range {v15 .. v23}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_3

    .line 567
    :cond_4
    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v8

    move-wide/from16 v6, p3

    move/from16 v10, v23

    move v11, v4

    move/from16 v12, v21

    invoke-static/range {v6 .. v12}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    :goto_3
    if-ne v4, v5, :cond_5

    :goto_4
    return-void

    .line 574
    :cond_5
    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v4}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move/from16 v23, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private bindNativeObject(J)V
    .locals 1

    .line 138
    iput-wide p1, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    .line 139
    sget-object v0, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method public static buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 0

    if-nez p4, :cond_0

    .line 330
    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p4

    .line 331
    :cond_0
    invoke-direct {p4, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    return-object p4
.end method

.method public static buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 7

    if-nez p5, :cond_0

    .line 356
    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p5

    .line 357
    :cond_0
    invoke-direct {p5, p1, p2, p3, p4}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 359
    iget-object p1, p5, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget p4, p5, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p4}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 360
    iget p1, p5, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez p1, :cond_1

    return-object p5

    .line 364
    :cond_1
    iget-object p1, p5, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez p1, :cond_2

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p5

    move-object v1, p0

    move v3, p2

    move v4, p3

    .line 366
    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_0
    if-ge v3, p3, :cond_3

    .line 372
    iget-object p1, p5, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p1, v3, p3, p2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    .line 373
    iget-object p2, p5, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p2, v3, p1, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/MetricAffectingSpan;

    .line 375
    iget-object p4, p5, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {p2, p4, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    const-wide/16 v5, 0x0

    move-object v0, p5

    move-object v1, p0

    move v4, p1

    .line 376
    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    move v3, p1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p5
.end method

.method public static buildForStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;ZZLandroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 14

    move/from16 v0, p3

    move/from16 v8, p5

    move/from16 v9, p6

    if-nez p7, :cond_0

    .line 407
    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v1

    move/from16 v4, p2

    move-object/from16 v2, p4

    move-object v10, v1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p1

    move/from16 v4, p2

    move-object/from16 v2, p4

    move-object/from16 v10, p7

    .line 408
    :goto_0
    invoke-direct {v10, p1, v4, v0, v2}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 409
    iget v1, v10, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v1, :cond_1

    .line 412
    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v1

    .line 414
    :try_start_0
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 415
    invoke-static {v1, v2, v0, v8, v9}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v3

    .line 414
    invoke-direct {v10, v3, v4}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    return-object v10

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0

    .line 423
    :cond_1
    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v11

    .line 425
    :try_start_1
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v1, :cond_2

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v11

    .line 427
    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 428
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1, v0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v4, v0, :cond_3

    .line 434
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v4, v0, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    .line 436
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v4, v13, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 438
    iget-object v2, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    move-object v1, v10

    move-object v2, p0

    move v5, v13

    move-wide v6, v11

    .line 440
    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 442
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1, v13}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move v4, v13

    goto :goto_1

    .line 445
    :cond_3
    :goto_2
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v11, v12, v0, v8, v9}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 448
    invoke-static {v11, v12}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    return-object v10

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0
.end method

.method private static native nAddReplacementRun(JJIIF)V
.end method

.method private static native nAddStyleRun(JJIIZ)V
.end method

.method private static native nBuildNativeMeasuredParagraph(J[CZZ)J
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method

.method private static obtain()Landroid/text/MeasuredParagraph;
    .locals 1

    .line 73
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/text/MeasuredParagraph;

    invoke-direct {v0}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 170
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 172
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 173
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 174
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 175
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 176
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->unbindNativeObject()V

    return-void
.end method

.method private resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 5

    .line 466
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 467
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 468
    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v0, p3, p2

    .line 469
    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 471
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v0, v1, :cond_2

    .line 472
    :cond_1
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 474
    :cond_2
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 477
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz p1, :cond_5

    .line 478
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v0, Landroid/text/style/ReplacementSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ReplacementSpan;

    move p3, v1

    .line 480
    :goto_1
    array-length v0, p1

    if-ge p3, v0, :cond_5

    .line 481
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v2, p1, p3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    .line 482
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v3, p1, p3

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    if-gez v0, :cond_3

    move v0, v1

    .line 485
    :cond_3
    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v2, v3, :cond_4

    iget v2, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 486
    :cond_4
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v4, 0xfffc

    invoke-static {v3, v0, v2, v4}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 490
    :cond_5
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 p2, 0x1

    if-eq p4, p1, :cond_6

    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, p1, :cond_6

    sget-object p1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_7

    :cond_6
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 493
    invoke-static {p1, v1, p3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 494
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 495
    iput p2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 496
    iput-boolean p2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_4

    .line 499
    :cond_7
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 p3, -0x1

    if-ne p4, p1, :cond_8

    goto :goto_3

    .line 501
    :cond_8
    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_9

    :goto_2
    move p2, p3

    goto :goto_3

    .line 503
    :cond_9
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_a

    const/4 p2, 0x2

    goto :goto_3

    .line 505
    :cond_a
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_b

    const/4 p2, -0x2

    goto :goto_3

    .line 508
    :cond_b
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, p1, v1, v0}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    .line 511
    :cond_c
    :goto_3
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p3}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 512
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p3}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object p3

    invoke-static {p2, p1, p3}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result p1

    iput p1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 513
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    :goto_4
    return-void
.end method

.method private unbindNativeObject()V
    .locals 4

    .line 144
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    iput-wide v2, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    :cond_0
    return-void
.end method


# virtual methods
.method breakText(IZF)I
    .locals 5

    .line 649
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 653
    aget v3, v0, p2

    sub-float/2addr p3, v3

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 657
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 p3, p2, -0x1

    aget-char p1, p1, p3

    if-ne p1, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    add-int/lit8 p2, p1, -0x1

    move v3, p3

    move p3, p2

    :goto_2
    if-ltz p3, :cond_5

    .line 662
    aget v4, v0, p3

    sub-float/2addr v3, v4

    cmpg-float v4, v3, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge p3, p2, :cond_7

    .line 666
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, p3, 0x1

    aget-char v3, v3, v4

    if-eq v3, v1, :cond_6

    aget v3, v0, v4

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    :cond_6
    move p3, v4

    goto :goto_3

    :cond_7
    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getBounds(IILandroid/graphics/Rect;)V
    .locals 6

    .line 308
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getChars()[C
    .locals 0

    .line 194
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object p0
.end method

.method public getDirections(II)Landroid/text/Layout$Directions;
    .locals 6

    .line 213
    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p0

    :cond_0
    sub-int v5, p2, p1

    .line 218
    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v1

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v2, p1

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object p0

    return-object p0
.end method

.method public getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 0

    .line 263
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object p0
.end method

.method public getMemoryUsage()I
    .locals 2

    .line 692
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/MeasuredParagraph;->nGetMemoryUsage(J)I

    move-result p0

    return p0
.end method

.method public getNativePtr()J
    .locals 2

    .line 273
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    return-wide v0
.end method

.method public getParagraphDir()I
    .locals 0

    .line 203
    iget p0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return p0
.end method

.method public getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 0

    .line 251
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object p0
.end method

.method public getTextLength()I
    .locals 0

    .line 185
    iget p0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return p0
.end method

.method public getWholeWidth()F
    .locals 0

    .line 229
    iget p0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return p0
.end method

.method public getWidth(II)F
    .locals 4

    .line 286
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 288
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 291
    aget v1, p0, p1

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 296
    :cond_1
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/text/MeasuredParagraph;->nGetWidth(JII)F

    move-result p0

    return p0
.end method

.method public getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 0

    .line 239
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object p0
.end method

.method measure(II)F
    .locals 2

    .line 681
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 683
    aget v1, p0, p1

    add-float/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 84
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 159
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 160
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 161
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 162
    iget-object p0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    return-void
.end method
