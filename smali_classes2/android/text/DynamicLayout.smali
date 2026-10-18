.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;,
        Landroid/text/DynamicLayout$Builder;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final EXTRA:I = 0x3

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mJustificationMode:I

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1175
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/text/DynamicLayout$Builder;)V
    .locals 10

    .line 387
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 388
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$600(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$700(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$800(Landroid/text/DynamicLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$900(Landroid/text/DynamicLayout$Builder;)F

    move-result v9

    move-object v2, p0

    .line 387
    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 390
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 391
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1000(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 392
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1100(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 393
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1200(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 394
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1300(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 396
    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 313
    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 326
    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p2

    move-object/from16 v10, p13

    .line 366
    invoke-static {v10, p2}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p3

    move v2, p4

    .line 369
    invoke-static {p1, p3, p4}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p5

    .line 370
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    .line 371
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    move/from16 v1, p7

    move/from16 v2, p8

    .line 372
    invoke-virtual {v0, v2, v1}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    move/from16 v1, p14

    .line 373
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 375
    iput-object v9, v8, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move/from16 v1, p9

    .line 376
    iput-boolean v1, v8, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v1, p10

    .line 377
    iput v1, v8, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v1, p12

    .line 378
    iput v1, v8, Landroid/text/DynamicLayout;->mJustificationMode:I

    move/from16 v1, p11

    .line 379
    iput v1, v8, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 381
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 383
    invoke-static {v0}, Landroid/text/DynamicLayout$Builder;->access$100(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 3

    .line 774
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result p1

    .line 775
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 777
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 778
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput p1, v0, v2

    .line 779
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 780
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-le p1, v0, :cond_1

    .line 786
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 787
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 788
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :cond_1
    return-void
.end method

.method private contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 3

    .line 698
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 699
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 700
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    return v1

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 707
    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1

    .line 708
    check-cast p1, Landroid/text/PrecomputedText;

    .line 709
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, v2}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 713
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 714
    iget-object p2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt p2, p3, :cond_3

    iget-object p0, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method private createBlocks()V
    .locals 4

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 724
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/16 v2, 0x190

    :goto_0
    const/16 v3, 0xa

    .line 727
    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    if-gez v2, :cond_1

    .line 729
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 738
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 739
    :goto_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 740
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    .line 732
    :cond_1
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    add-int/lit16 v2, v2, 0x190

    goto :goto_0
.end method

.method private static createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    .line 404
    :cond_0
    instance-of p0, p1, Landroid/text/Spanned;

    if-eqz p0, :cond_1

    .line 405
    new-instance p0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 407
    :cond_1
    new-instance p0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private generate(Landroid/text/DynamicLayout$Builder;)V
    .locals 6

    .line 412
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1400(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 413
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1500(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 414
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 416
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 417
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 433
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 434
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 435
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 436
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 437
    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 440
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 444
    :goto_0
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 451
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    new-array v0, v1, [I

    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_1

    .line 455
    :cond_1
    new-array v0, v2, [I

    .line 458
    :goto_1
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 460
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1700(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 461
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 462
    iget p1, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 463
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 465
    aput v5, v0, v4

    .line 466
    aput v4, v0, v3

    const/4 v5, 0x2

    .line 467
    aput v2, v0, v5

    .line 468
    iget-object v5, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v5, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    sub-int/2addr v2, p1

    .line 470
    aput v2, v0, v3

    .line 471
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 473
    iget-object p1, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {p1, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 475
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 477
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4, v4, p1}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 479
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_4

    .line 480
    iget-object v0, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v0, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 484
    :cond_2
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 485
    const-class v1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v0, v4, p1, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/DynamicLayout$ChangeWatcher;

    move v2, v4

    .line 486
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 487
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 490
    :cond_3
    iget-object p0, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v1, 0x800012

    invoke-interface {v0, p0, v4, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return-void
.end method

.method private getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 1

    .line 1056
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateAlwaysNeedsToBeRedrawn(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 753
    :goto_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    :goto_1
    if-gt v0, v1, :cond_3

    .line 755
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 756
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 759
    :cond_1
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    :cond_3
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    .line 764
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 0

    .line 948
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object p0
.end method

.method public getBlockIndex(I)I
    .locals 0

    .line 962
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget p0, p0, p1

    return p0
.end method

.method public getBlockIndices()[I
    .locals 0

    .line 955
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object p0
.end method

.method public getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getBottomPadding()I
    .locals 0

    .line 1044
    iget p0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return p0
.end method

.method public getEllipsisCount(I)I
    .locals 1

    .line 1128
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1132
    :cond_0
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public getEllipsisStart(I)I
    .locals 1

    .line 1119
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1123
    :cond_0
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public getEllipsizedWidth()I
    .locals 0

    .line 1062
    iget p0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return p0
.end method

.method public getHyphen(I)I
    .locals 1

    .line 1052
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 0

    .line 984
    iget p0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return p0
.end method

.method public getLineContainsTab(I)Z
    .locals 1

    .line 1024
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 0

    .line 996
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLineDescent(I)I
    .locals 1

    .line 1006
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    .line 1034
    iget-object p0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Layout$Directions;

    return-object p0
.end method

.method public getLineExtra(I)I
    .locals 1

    .line 1014
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public getLineStart(I)I
    .locals 1

    .line 1019
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    const p1, 0x1fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public getLineTop(I)I
    .locals 1

    .line 1001
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    return p0
.end method

.method public getNumberOfBlocks()I
    .locals 0

    .line 977
    iget p0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return p0
.end method

.method public getParagraphDirection(I)I
    .locals 1

    .line 1029
    iget-object p0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 1039
    iget p0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return p0
.end method

.method public reflow(Ljava/lang/CharSequence;III)V
    .locals 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    .line 499
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v2, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 503
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    const/16 v5, 0xa

    .line 507
    invoke-static {v2, v5, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    const/4 v7, 0x1

    if-gez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr v4, v7

    :goto_0
    sub-int v4, p2, v4

    add-int v8, p3, v4

    add-int v9, p4, v4

    sub-int v1, p2, v4

    add-int v4, v1, v9

    .line 522
    invoke-static {v2, v5, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    add-int/2addr v5, v7

    :goto_1
    sub-int/2addr v5, v4

    add-int/2addr v8, v5

    add-int/2addr v9, v5

    .line 534
    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    .line 535
    move-object v4, v2

    check-cast v4, Landroid/text/Spanned;

    :goto_2
    add-int v5, v1, v9

    .line 541
    const-class v10, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v4, v1, v5, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move v11, v8

    move v10, v9

    const/4 v9, 0x0

    move v8, v1

    const/4 v1, 0x0

    .line 544
    :goto_3
    array-length v12, v5

    if-ge v1, v12, :cond_5

    .line 545
    aget-object v12, v5, v1

    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 546
    aget-object v13, v5, v1

    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    if-ge v12, v8, :cond_3

    sub-int v9, v8, v12

    add-int/2addr v11, v9

    add-int/2addr v10, v9

    sub-int/2addr v8, v9

    move v9, v7

    :cond_3
    add-int v12, v8, v10

    if-le v13, v12, :cond_4

    sub-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/2addr v10, v13

    move v9, v7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-nez v9, :cond_6

    move v1, v8

    move v9, v10

    goto :goto_4

    :cond_6
    move v1, v8

    move v9, v10

    move v8, v11

    goto :goto_2

    :cond_7
    move v11, v8

    .line 570
    :goto_4
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v4

    .line 571
    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v5

    add-int v8, v1, v11

    .line 573
    invoke-virtual {v0, v8}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v8

    add-int v10, v1, v9

    if-ne v10, v3, :cond_8

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v8

    .line 576
    :cond_8
    invoke-virtual {v0, v8}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v12

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    if-ne v8, v13, :cond_9

    move v13, v7

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    .line 584
    :goto_5
    sget-object v14, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v14

    .line 585
    :try_start_0
    sget-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 586
    sget-object v16, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    const/4 v6, 0x0

    .line 587
    sput-object v6, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 588
    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 589
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v15, :cond_a

    .line 592
    new-instance v15, Landroid/text/StaticLayout;

    invoke-direct {v15, v6}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v14

    invoke-static {v2, v1, v10, v6, v14}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v16

    :cond_a
    move-object/from16 v6, v16

    .line 596
    invoke-virtual {v6, v2, v1, v10}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v7

    invoke-virtual {v1, v14, v7}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v7, v0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 601
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v7, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 602
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v7, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 603
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v7, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 604
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v7, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 605
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v7, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 606
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    xor-int/lit8 v7, v13, 0x1

    .line 607
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 609
    invoke-virtual {v15, v6, v7, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 610
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-eq v10, v3, :cond_b

    add-int/lit8 v3, v1, -0x1

    .line 615
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    if-ne v3, v10, :cond_b

    add-int/lit8 v1, v1, -0x1

    .line 619
    :cond_b
    iget-object v3, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v7, v8, v4

    invoke-virtual {v3, v4, v7}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 620
    iget-object v3, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v3, v4, v7}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 624
    invoke-virtual {v15, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    .line 627
    iget-boolean v7, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v7, :cond_c

    if-nez v4, :cond_c

    .line 628
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v7

    .line 629
    iput v7, v0, Landroid/text/DynamicLayout;->mTopPadding:I

    sub-int/2addr v3, v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    .line 632
    :goto_6
    iget-boolean v14, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v14, :cond_d

    if-eqz v13, :cond_d

    .line 633
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v13

    .line 634
    iput v13, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    add-int/2addr v3, v13

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 638
    :goto_7
    iget-object v14, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v14, v4, v11, v9}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 639
    iget-object v9, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v11, v5, v12

    add-int/2addr v11, v3

    const/4 v3, 0x1

    invoke-virtual {v9, v4, v3, v11}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 645
    iget-boolean v9, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v11, 0x5

    if-eqz v9, :cond_e

    const/4 v9, 0x7

    .line 646
    new-array v9, v9, [I

    const/high16 v12, -0x80000000

    aput v12, v9, v11

    goto :goto_8

    .line 649
    :cond_e
    new-array v9, v11, [I

    .line 652
    :goto_8
    new-array v12, v3, [Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_15

    .line 655
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v14

    const/16 v17, 0x0

    .line 656
    aput v14, v9, v17

    .line 657
    aget v16, v9, v17

    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v19

    shl-int/lit8 v19, v19, 0x1e

    or-int v16, v16, v19

    aput v16, v9, v17

    .line 658
    aget v16, v9, v17

    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000000

    goto :goto_a

    :cond_f
    move/from16 v19, v17

    :goto_a
    or-int v16, v16, v19

    aput v16, v9, v17

    .line 660
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v16

    add-int v16, v16, v5

    if-lez v3, :cond_10

    sub-int v16, v16, v7

    :cond_10
    const/16 v18, 0x1

    .line 663
    aput v16, v9, v18

    .line 665
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v16

    add-int/lit8 v11, v1, -0x1

    if-ne v3, v11, :cond_11

    add-int v16, v16, v13

    :cond_11
    const/16 v19, 0x2

    .line 669
    aput v16, v9, v19

    const/16 v16, 0x3

    .line 670
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v19

    aput v19, v9, v16

    .line 671
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v12, v17

    if-ne v3, v11, :cond_12

    move/from16 v20, v5

    move v11, v10

    goto :goto_b

    :cond_12
    add-int/lit8 v11, v3, 0x1

    .line 673
    invoke-virtual {v15, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v11

    move/from16 v20, v5

    .line 674
    :goto_b
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v16, 0x4

    aput v5, v9, v16

    .line 675
    aget v5, v9, v16

    .line 676
    invoke-direct {v0, v2, v14, v11}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_13

    const/16 v11, 0x100

    goto :goto_c

    :cond_13
    move/from16 v11, v17

    :goto_c
    or-int/2addr v5, v11

    .line 677
    aput v5, v9, v16

    .line 679
    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_14

    .line 680
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v5

    const/4 v11, 0x5

    aput v5, v9, v11

    const/4 v5, 0x6

    .line 681
    invoke-virtual {v15, v3}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v14

    aput v14, v9, v5

    goto :goto_d

    :cond_14
    const/4 v11, 0x5

    .line 684
    :goto_d
    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v14, v4, v3

    invoke-virtual {v5, v14, v9}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 685
    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v5, v14, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v20

    goto/16 :goto_9

    :cond_15
    const/4 v3, 0x1

    sub-int/2addr v8, v3

    .line 688
    invoke-virtual {v0, v4, v8, v1}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 690
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 691
    sget-object v1, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_1
    sput-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 693
    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 694
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 589
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setBlockIndex(II)V
    .locals 0

    .line 970
    iget-object p0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, p0, p1

    return-void
.end method

.method public setBlocksDataForTest([I[III)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 934
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 935
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 936
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 939
    :goto_0
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    move-result p1

    if-ge p1, p4, :cond_0

    .line 940
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    iget-object p2, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p2}, Landroid/text/PackedIntVector;->size()I

    move-result p2

    const/4 p3, 0x5

    new-array p3, p3, [I

    invoke-virtual {p1, p2, p3}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0

    .line 991
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method public updateBlocks(III)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 811
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v4, :cond_0

    .line 812
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    return-void

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 818
    :goto_0
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    const/4 v7, -0x1

    if-ge v5, v6, :cond_2

    .line 819
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v5

    if-lt v6, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_1
    move v6, v5

    .line 824
    :goto_2
    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v6, v8, :cond_4

    .line 825
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v8, v8, v6

    if-lt v8, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v7

    .line 830
    :goto_3
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v8, v8, v6

    const/4 v9, 0x1

    if-nez v5, :cond_5

    move v10, v4

    goto :goto_4

    .line 833
    :cond_5
    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v11, v5, -0x1

    aget v10, v10, v11

    add-int/2addr v10, v9

    :goto_4
    if-le v1, v10, :cond_6

    move v10, v9

    goto :goto_5

    :cond_6
    move v10, v4

    :goto_5
    if-lez p3, :cond_7

    move v11, v9

    goto :goto_6

    :cond_7
    move v11, v4

    .line 835
    :goto_6
    iget-object v12, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v12, v12, v6

    if-ge v2, v12, :cond_8

    move v12, v9

    goto :goto_7

    :cond_8
    move v12, v4

    :goto_7
    if-eqz v10, :cond_9

    move v13, v9

    goto :goto_8

    :cond_9
    move v13, v4

    :goto_8
    if-eqz v11, :cond_a

    add-int/lit8 v13, v13, 0x1

    :cond_a
    if-eqz v12, :cond_b

    add-int/lit8 v13, v13, 0x1

    :cond_b
    sub-int v14, v6, v5

    add-int/2addr v14, v9

    .line 843
    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v15, v13

    sub-int/2addr v15, v14

    if-nez v15, :cond_c

    .line 847
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aput v4, v1, v4

    .line 848
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v7, v1, v4

    .line 849
    iput v9, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    .line 853
    :cond_c
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v7, v7

    if-le v15, v7, :cond_d

    .line 854
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    .line 855
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 854
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    .line 856
    array-length v9, v7

    new-array v9, v9, [I

    move/from16 v17, v8

    .line 857
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v8, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v8, v4, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v4, v6, 0x1

    move/from16 v18, v12

    add-int v12, v5, v13

    move/from16 v19, v11

    iget v11, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v11, v6

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v8, v4, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v11, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x1

    invoke-static {v8, v4, v9, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 864
    iput-object v9, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    goto :goto_9

    :cond_d
    move/from16 v17, v8

    move/from16 v19, v11

    move/from16 v18, v12

    add-int v4, v13, v14

    if-eqz v4, :cond_e

    .line 866
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v7, v6, 0x1

    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v9, v5, v13

    iget v11, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v11, v6

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v4, v7, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v11, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v11, v6

    sub-int/2addr v11, v12

    invoke-static {v4, v7, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_9
    add-int v4, v13, v14

    if-eqz v4, :cond_12

    .line 872
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v4, :cond_12

    .line 873
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sub-int v7, v13, v14

    const/4 v8, 0x0

    .line 875
    :goto_a
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 876
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 877
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v5, :cond_f

    .line 879
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v6, :cond_10

    .line 883
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 884
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 887
    :cond_11
    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 890
    :cond_12
    iput v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    sub-int v2, p3, v2

    if-eqz v2, :cond_13

    add-int/2addr v13, v5

    move v4, v13

    .line 897
    :goto_b
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v4, v6, :cond_14

    .line 898
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v7, v6, v4

    add-int/2addr v7, v2

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 901
    :cond_13
    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 903
    :cond_14
    iget v4, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    if-eqz v10, :cond_15

    .line 907
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v6, v1, -0x1

    aput v6, v4, v5

    .line 908
    invoke-direct {v0, v5}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 909
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v6, -0x1

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    :cond_15
    if-eqz v19, :cond_16

    .line 914
    iget-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v1, v1, p3

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aput v1, v4, v5

    .line 915
    invoke-direct {v0, v5}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 916
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v3, -0x1

    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    const/4 v3, -0x1

    :goto_c
    if-eqz v18, :cond_17

    .line 921
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v8, v17, v2

    aput v8, v1, v5

    .line 922
    invoke-direct {v0, v5}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 923
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v3, v0, v5

    :cond_17
    return-void
.end method
