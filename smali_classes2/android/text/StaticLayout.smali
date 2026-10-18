.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLeftPaddings:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mRightPaddings:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10

    .line 572
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 573
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 574
    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 575
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :goto_1
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    move-object v2, p0

    .line 572
    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    .line 1400
    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    .line 1416
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 579
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 582
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 583
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 584
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 585
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x7

    .line 587
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    .line 589
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 590
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 593
    :goto_2
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 594
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 595
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 597
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 598
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 599
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftPaddings:[I

    .line 600
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightPaddings:[I

    .line 601
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    .line 603
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 564
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 p1, -0x1

    .line 1400
    iput p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const p1, 0x7fffffff

    .line 1416
    iput p1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 p1, 0x7

    .line 566
    iput p1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 567
    const-class p1, Landroid/text/Layout$Directions;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Layout$Directions;

    iput-object p1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 568
    iget p1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p1, v0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 479
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    move-object v1, v9

    goto :goto_1

    .line 511
    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 512
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 513
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 509
    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    .line 1400
    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    .line 1416
    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 516
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    .line 517
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p7

    .line 518
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p8

    move/from16 v2, p9

    .line 519
    invoke-virtual {v0, v2, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p10

    .line 520
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_2

    .line 538
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Ellipsizer;

    .line 540
    iput-object v8, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 541
    iput v11, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 542
    iput-object v10, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 543
    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x7

    .line 545
    iput v1, v8, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    .line 547
    iput v1, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v1, p5

    .line 548
    iput v1, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 551
    :goto_2
    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 552
    iget v1, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v8, Landroid/text/StaticLayout;->mLines:[I

    .line 553
    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 555
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 557
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 5

    .line 1063
    invoke-direct {p0, p7}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v0

    sub-float/2addr p5, v0

    cmpg-float p8, p8, p5

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-gtz p8, :cond_0

    if-nez p10, :cond_0

    .line 1066
    iget-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p2, p7

    add-int/2addr p2, v0

    aput v1, p1, p2

    .line 1067
    iget-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p7

    add-int/lit8 p0, p0, 0x6

    aput v1, p1, p0

    return-void

    .line 1071
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p9, p8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p8

    sub-int/2addr p2, p1

    .line 1077
    sget-object p9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p6, p9, :cond_4

    .line 1078
    iget p6, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne p6, v3, :cond_3

    move p6, p2

    move p9, v2

    :goto_0
    if-lez p6, :cond_2

    add-int/lit8 p10, p6, -0x1

    add-int/2addr p10, p1

    sub-int/2addr p10, p4

    .line 1083
    aget p10, p3, p10

    add-float/2addr p9, p10

    add-float p10, p9, p8

    cmpl-float p10, p10, p5

    if-lez p10, :cond_1

    :goto_1
    if-ge p6, p2, :cond_2

    add-int p5, p6, p1

    sub-int/2addr p5, p4

    .line 1085
    aget p5, p3, p5

    cmpl-float p5, p5, v2

    if-nez p5, :cond_2

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, -0x1

    goto :goto_0

    :cond_2
    move p1, p6

    goto/16 :goto_9

    :cond_3
    const-string p1, "StaticLayout"

    .line 1097
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "StaticLayout"

    const-string p2, "Start Ellipsis only supported with one line"

    .line 1098
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1101
    :cond_4
    sget-object p9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq p6, p9, :cond_c

    sget-object p9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p6, p9, :cond_c

    sget-object p9, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p6, p9, :cond_5

    goto :goto_7

    .line 1124
    :cond_5
    iget p6, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne p6, v3, :cond_a

    sub-float/2addr p5, p8

    const/high16 p6, 0x40000000    # 2.0f

    div-float p6, p5, p6

    move p8, p2

    move p9, v2

    :goto_2
    if-lez p8, :cond_7

    add-int/lit8 p10, p8, -0x1

    add-int/2addr p10, p1

    sub-int/2addr p10, p4

    .line 1130
    aget p10, p3, p10

    add-float/2addr p10, p9

    cmpl-float v4, p10, p6

    if-lez v4, :cond_6

    :goto_3
    if-ge p8, p2, :cond_7

    add-int p6, p8, p1

    sub-int/2addr p6, p4

    .line 1133
    aget p6, p3, p6

    cmpl-float p6, p6, v2

    if-nez p6, :cond_7

    add-int/lit8 p8, p8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 p8, p8, -0x1

    move p9, p10

    goto :goto_2

    :cond_7
    sub-float/2addr p5, p9

    :goto_4
    if-ge v1, p8, :cond_9

    add-int p2, v1, p1

    sub-int/2addr p2, p4

    .line 1143
    aget p2, p3, p2

    add-float/2addr v2, p2

    cmpl-float p2, v2, p5

    if-lez p2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    sub-int p1, p8, v1

    goto :goto_9

    :cond_a
    const-string p1, "StaticLayout"

    .line 1155
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "StaticLayout"

    const-string p2, "Middle Ellipsis only supported with one line"

    .line 1156
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    move p1, v1

    goto :goto_9

    :cond_c
    :goto_7
    if-ge v1, p2, :cond_e

    add-int p6, v1, p1

    sub-int/2addr p6, p4

    .line 1107
    aget p6, p3, p6

    add-float/2addr v2, p6

    add-float p6, v2, p8

    cmpl-float p6, p6, p5

    if-lez p6, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    sub-int p1, p2, v1

    if-eqz p10, :cond_f

    if-nez p1, :cond_f

    if-lez p2, :cond_f

    sub-int/2addr p2, v3

    move v1, p2

    move p1, v3

    .line 1160
    :cond_f
    :goto_9
    iput-boolean v3, p0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1161
    iget-object p2, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p3, p7

    add-int/2addr p3, v0

    aput v1, p2, p3

    .line 1162
    iget-object p2, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p7

    add-int/lit8 p0, p0, 0x6

    aput p1, p2, p0

    return-void
.end method

.method private getTotalInsets(I)F
    .locals 2

    .line 1167
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1170
    :goto_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v1, p0

    add-int/2addr v0, p0

    :cond_1
    int-to-float p0, v0

    return p0
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I
.end method

.method private static native nFinish(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[I[I[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 26

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v8, p11

    move-object/from16 v10, p13

    move/from16 v7, p17

    move/from16 v6, p23

    move-object/from16 v5, p24

    .line 920
    iget v4, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 921
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v4, v0

    .line 922
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v0, v16, v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 923
    iget-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 924
    invoke-virtual/range {p16 .. p16}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    .line 926
    array-length v2, v1

    const/4 v15, 0x0

    if-lt v0, v2, :cond_0

    .line 927
    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 928
    array-length v2, v1

    invoke-static {v1, v15, v0, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iput-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v1

    .line 933
    :goto_0
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v4, v0, :cond_1

    .line 934
    const-class v0, Landroid/text/Layout$Directions;

    .line 935
    invoke-static {v4}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 934
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    .line 936
    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    invoke-static {v1, v15, v0, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    if-eqz v8, :cond_4

    move/from16 v0, p4

    .line 941
    iput v0, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v1, p5

    .line 942
    iput v1, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v2, p6

    .line 943
    iput v2, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    .line 944
    iput v0, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v2, v15

    .line 946
    :goto_1
    array-length v0, v8

    if-ge v2, v0, :cond_3

    .line 947
    aget-object v0, v8, v2

    instance-of v0, v0, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v0, :cond_2

    .line 948
    aget-object v0, v8, v2

    check-cast v0, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v19, p12, v2

    move-object/from16 v1, p1

    move/from16 v20, v2

    move/from16 v2, p2

    move v15, v3

    move/from16 v3, p3

    move/from16 v21, v4

    move/from16 v4, v19

    move-object v15, v5

    move/from16 v5, p8

    move v14, v6

    move-object/from16 v6, p13

    move v12, v7

    move-object/from16 v7, p27

    .line 949
    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_2
    move/from16 v20, v2

    move/from16 v21, v4

    move-object v15, v5

    move v14, v6

    move v12, v7

    .line 951
    aget-object v0, v8, v20

    aget v4, p12, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v2, v20, 0x1

    move v7, v12

    move v6, v14

    move-object v5, v15

    move/from16 v4, v21

    const/4 v3, 0x1

    move/from16 v12, p2

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    move/from16 v21, v4

    move-object v15, v5

    move v14, v6

    move v12, v7

    .line 955
    iget v0, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 956
    iget v1, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 957
    iget v2, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 958
    iget v3, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v23, v3

    goto :goto_3

    :cond_4
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v21, v4

    move-object v15, v5

    move v14, v6

    move v12, v7

    move/from16 v23, p7

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v22, v2

    :goto_3
    if-nez v21, :cond_5

    const/16 v24, 0x1

    goto :goto_4

    :cond_5
    const/16 v24, 0x0

    :goto_4
    add-int/lit8 v4, v21, 0x1

    .line 962
    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v4, v0, :cond_6

    const/16 v25, 0x1

    goto :goto_5

    :cond_6
    const/16 v25, 0x0

    :goto_5
    if-eqz v15, :cond_f

    if-eqz p28, :cond_7

    .line 967
    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v2, :cond_8

    move v10, v1

    goto :goto_6

    :cond_7
    const/4 v1, 0x1

    :cond_8
    const/4 v10, 0x0

    .line 969
    :goto_6
    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v1, :cond_9

    if-nez p28, :cond_a

    :cond_9
    if-eqz v24, :cond_b

    if-nez p28, :cond_b

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v15, v0, :cond_d

    :cond_b
    if-nez v24, :cond_e

    if-nez v25, :cond_c

    if-nez p28, :cond_e

    :cond_c
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v15, v0, :cond_e

    :cond_d
    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p22

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v8, p26

    move-object/from16 v9, p27

    .line 975
    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 982
    :cond_f
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_10

    :goto_8
    const/4 v0, 0x1

    move/from16 v1, p2

    goto :goto_a

    :cond_10
    if-eq v14, v12, :cond_11

    if-lez v12, :cond_11

    add-int/lit8 v0, v12, -0x1

    move-object/from16 v1, p1

    .line 986
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    if-ne v13, v12, :cond_12

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    move v2, v12

    move/from16 v1, p2

    if-ne v1, v2, :cond_13

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_a
    if-eqz v24, :cond_15

    if-eqz p19, :cond_14

    sub-int v2, v22, v19

    .line 998
    iput v2, v11, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_14
    if-eqz p18, :cond_15

    move/from16 v19, v22

    :cond_15
    if-eqz v0, :cond_17

    if-eqz p19, :cond_16

    sub-int v2, v23, v20

    .line 1010
    iput v2, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_16
    if-eqz p18, :cond_17

    move/from16 v20, v23

    :cond_17
    if-eqz p15, :cond_1a

    if-nez p20, :cond_18

    if-nez v0, :cond_1a

    :cond_18
    sub-int v0, v20, v19

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p9, v2

    mul-float/2addr v0, v2

    add-float v0, v0, p10

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-ltz v0, :cond_19

    add-double/2addr v2, v4

    double-to-int v0, v2

    :goto_b
    move v15, v0

    goto :goto_c

    :cond_19
    neg-double v2, v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    neg-int v0, v0

    goto :goto_b

    :cond_1a
    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v0, v16, 0x0

    .line 1029
    aput v1, v18, v0

    add-int/lit8 v2, v16, 0x1

    move v4, v14

    .line 1030
    aput p8, v18, v2

    add-int/lit8 v2, v16, 0x2

    add-int v5, v20, v15

    .line 1031
    aput v5, v18, v2

    add-int/lit8 v2, v16, 0x3

    .line 1032
    aput v15, v18, v2

    .line 1036
    iget-boolean v2, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_1c

    if-eqz v25, :cond_1c

    if-eqz p18, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v23, v20

    :goto_d
    sub-int v23, v23, v19

    add-int v2, p8, v23

    .line 1040
    iput v2, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1c
    sub-int v20, v20, v19

    add-int v20, v20, v15

    add-int v2, p8, v20

    .line 1044
    iget v3, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v3, v16, v3

    const/4 v5, 0x0

    add-int/2addr v3, v5

    aput v13, v18, v3

    .line 1045
    iget v3, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v3, v16, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aput v2, v18, v3

    .line 1049
    aget v3, v18, v0

    const/high16 v5, 0x20000000

    and-int v5, p14, v5

    or-int/2addr v3, v5

    aput v3, v18, v0

    add-int/lit8 v16, v16, 0x4

    .line 1050
    aput p14, v18, v16

    .line 1051
    aget v3, v18, v0

    shl-int/lit8 v5, v17, 0x1e

    or-int/2addr v3, v5

    aput v3, v18, v0

    .line 1052
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int/2addr v1, v4

    sub-int v3, v13, v4

    move-object/from16 v4, p16

    invoke-virtual {v4, v1, v3}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v1

    aput-object v1, v0, v21

    .line 1054
    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    return v2
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 93

    move-object/from16 v0, p0

    .line 607
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 608
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)I

    move-result v14

    .line 609
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    .line 610
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v12

    .line 611
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    .line 612
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v11

    .line 613
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Z

    move-result v31

    .line 614
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v32

    .line 615
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v33

    .line 616
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    int-to-float v10, v1

    .line 617
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v9

    .line 618
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)Z

    move-result v34

    .line 619
    new-instance v8, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v8}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 620
    new-instance v7, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v7}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    const/4 v6, 0x0

    .line 622
    iput v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 623
    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 624
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v32, v1

    const/16 v55, 0x0

    if-nez v1, :cond_2

    cmpl-float v1, v33, v55

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v56, v6

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v56, v5

    .line 629
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 633
    iget-object v1, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    goto :goto_8

    .line 634
    :cond_4
    :goto_3
    iget-object v1, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_5

    move v1, v6

    goto :goto_4

    :cond_5
    iget-object v1, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    .line 635
    :goto_4
    iget-object v2, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_6

    move v2, v6

    goto :goto_5

    :cond_6
    iget-object v2, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    .line 636
    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 637
    new-array v3, v3, [I

    move v5, v6

    :goto_6
    if-ge v5, v1, :cond_7

    .line 639
    iget-object v6, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v5

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_8

    .line 642
    aget v5, v3, v1

    iget-object v6, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v19, v3

    .line 649
    :goto_8
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v17

    .line 651
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    if-eqz v1, :cond_9

    const/16 v18, 0x1

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    :goto_9
    iget-object v1, v0, Landroid/text/StaticLayout;->mLeftPaddings:[I

    iget-object v2, v0, Landroid/text/StaticLayout;->mRightPaddings:[I

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 648
    invoke-static/range {v16 .. v21}, Landroid/text/StaticLayout;->nInit(IIZ[I[I[I)J

    move-result-wide v60

    .line 655
    instance-of v1, v15, Landroid/text/Spanned;

    if-eqz v1, :cond_a

    move-object v3, v15

    check-cast v3, Landroid/text/Spanned;

    move-object v6, v3

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    .line 656
    :goto_a
    instance-of v1, v15, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_b

    .line 657
    move-object/from16 v16, v15

    check-cast v16, Landroid/text/PrecomputedText;

    .line 659
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v18

    move-object/from16 v1, v16

    move v2, v14

    const/4 v5, 0x0

    move v3, v13

    move/from16 v62, v10

    move-object v10, v4

    move-object v4, v11

    move-object/from16 v63, v10

    const/4 v10, 0x1

    move-object v5, v12

    move-object v10, v6

    move-object/from16 v64, v9

    const/4 v9, 0x0

    move/from16 v6, v17

    move-object/from16 v65, v7

    move/from16 v7, v18

    .line 658
    invoke-virtual/range {v1 .. v7}, Landroid/text/PrecomputedText;->canUseMeasuredResult(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 661
    invoke-virtual/range {v16 .. v16}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v3

    goto :goto_b

    :cond_b
    move-object/from16 v63, v4

    move-object/from16 v65, v7

    move-object/from16 v64, v9

    move/from16 v62, v10

    const/4 v9, 0x0

    move-object v10, v6

    :cond_c
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_d

    .line 666
    new-instance v1, Landroid/text/PrecomputedText$Params;

    .line 667
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-direct {v1, v12, v11, v2, v3}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 668
    invoke-static {v15, v1, v14, v13, v9}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v3

    :cond_d
    move-object v7, v3

    move v2, v9

    move v6, v2

    const/4 v1, 0x0

    .line 673
    :goto_c
    :try_start_0
    array-length v3, v7

    if-ge v6, v3, :cond_2e

    if-nez v6, :cond_e

    move v5, v14

    goto :goto_d

    :cond_e
    add-int/lit8 v3, v6, -0x1

    .line 675
    aget-object v3, v7, v3

    iget v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    move v5, v3

    .line 676
    :goto_d
    aget-object v3, v7, v6

    iget v4, v3, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    if-eqz v10, :cond_16

    .line 685
    const-class v3, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v10, v5, v4, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v67, v11

    move-object/from16 v68, v12

    move/from16 v16, v30

    move/from16 v17, v16

    const/4 v11, 0x1

    .line 687
    :goto_e
    array-length v12, v3

    if-ge v9, v12, :cond_10

    .line 688
    aget-object v12, v3, v9

    move/from16 v69, v14

    .line 689
    aget-object v14, v3, v9

    move-object/from16 v70, v15

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int v16, v16, v14

    .line 690
    aget-object v14, v3, v9

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int v17, v17, v14

    .line 694
    instance-of v14, v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_f

    .line 695
    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 697
    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 696
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v69

    move-object/from16 v15, v70

    goto :goto_e

    :cond_10
    move/from16 v69, v14

    move-object/from16 v70, v15

    .line 701
    const-class v3, Landroid/text/style/LineHeightSpan;

    invoke-static {v10, v5, v4, v3}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LineHeightSpan;

    .line 703
    array-length v9, v3

    if-nez v9, :cond_11

    move-object/from16 v57, v1

    move/from16 v42, v11

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_11

    :cond_11
    if-eqz v1, :cond_12

    .line 706
    array-length v9, v1

    array-length v12, v3

    if-ge v9, v12, :cond_13

    .line 707
    :cond_12
    array-length v1, v3

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    :cond_13
    const/4 v9, 0x0

    .line 710
    :goto_f
    array-length v12, v3

    if-ge v9, v12, :cond_15

    .line 711
    aget-object v12, v3, v9

    invoke-interface {v10, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-ge v12, v5, :cond_14

    .line 717
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v12

    aput v12, v1, v9

    goto :goto_10

    .line 721
    :cond_14
    aput v2, v1, v9

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_15
    move-object/from16 v57, v1

    move-object/from16 v58, v3

    move/from16 v42, v11

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_12

    :cond_16
    move-object/from16 v67, v11

    move-object/from16 v68, v12

    move/from16 v69, v14

    move-object/from16 v70, v15

    move-object/from16 v57, v1

    move/from16 v1, v30

    move v3, v1

    const/16 v42, 0x1

    :goto_11
    const/16 v58, 0x0

    :goto_12
    if-eqz v10, :cond_18

    .line 730
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v10, v5, v4, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 732
    array-length v11, v9

    if-lez v11, :cond_18

    .line 733
    array-length v11, v9

    new-array v11, v11, [I

    const/4 v12, 0x0

    .line 734
    :goto_13
    array-length v14, v9

    if-ge v12, v14, :cond_17

    .line 735
    aget-object v14, v9, v12

    invoke-interface {v14}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v14

    aput v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 737
    :cond_17
    array-length v9, v11

    const/4 v15, 0x0

    invoke-static {v11, v15, v9}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v44, v11

    goto :goto_14

    :cond_18
    const/4 v15, 0x0

    const/16 v44, 0x0

    .line 742
    :goto_14
    aget-object v9, v7, v6

    iget-object v14, v9, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 743
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v12

    .line 744
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v59

    .line 745
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v66

    .line 747
    array-length v9, v12

    move-object/from16 v11, v65

    invoke-virtual {v11, v9}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 758
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v38

    sub-int v40, v4, v5

    int-to-float v1, v1

    int-to-float v3, v3

    const/16 v45, 0x14

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    iget-object v15, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v15, v15

    move/from16 v71, v2

    iget-object v2, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move/from16 v72, v6

    iget-object v6, v8, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v73, v7

    iget-object v7, v8, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v74, v10

    iget-object v10, v8, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v75, v14

    iget-object v14, v8, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    .line 775
    invoke-virtual {v11}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v54

    move-wide/from16 v35, v60

    move-object/from16 v37, v12

    move/from16 v41, v1

    move/from16 v43, v3

    move/from16 v46, v9

    move-object/from16 v47, v8

    move/from16 v48, v15

    move-object/from16 v49, v2

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v10

    move-object/from16 v53, v14

    .line 753
    invoke-static/range {v35 .. v54}, Landroid/text/StaticLayout;->nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I

    move-result v1

    .line 777
    iget-object v15, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    .line 778
    iget-object v14, v8, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    .line 779
    iget-object v10, v8, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    .line 780
    iget-object v9, v8, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    .line 781
    iget-object v7, v8, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    .line 783
    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v3, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v2, v3

    if-eqz v64, :cond_1a

    .line 784
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v6, v64

    if-eq v6, v3, :cond_19

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v76, v12

    const/4 v12, 0x1

    if-ne v3, v12, :cond_1b

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v6, v3, :cond_1b

    goto :goto_15

    :cond_19
    move-object/from16 v76, v12

    const/4 v12, 0x1

    :goto_15
    move v3, v12

    goto :goto_16

    :cond_1a
    move-object/from16 v76, v12

    move-object/from16 v6, v64

    const/4 v12, 0x1

    :cond_1b
    const/4 v3, 0x0

    :goto_16
    if-lez v2, :cond_20

    if-ge v2, v1, :cond_20

    if-eqz v3, :cond_20

    add-int/lit8 v3, v2, -0x1

    move v12, v3

    move/from16 v16, v55

    const/16 v17, 0x0

    :goto_17
    if-ge v12, v1, :cond_1f

    move/from16 v77, v2

    add-int/lit8 v2, v1, -0x1

    if-ne v12, v2, :cond_1c

    .line 795
    aget v2, v14, v12

    add-float v16, v16, v2

    move-object/from16 v78, v6

    goto :goto_1a

    :cond_1c
    if-nez v12, :cond_1d

    const/4 v2, 0x0

    goto :goto_18

    :cond_1d
    add-int/lit8 v2, v12, -0x1

    .line 797
    aget v2, v15, v2

    :goto_18
    move-object/from16 v78, v6

    :goto_19
    aget v6, v15, v12

    if-ge v2, v6, :cond_1e

    .line 798
    invoke-virtual {v11, v2}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v6

    add-float v16, v16, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 801
    :cond_1e
    :goto_1a
    aget v2, v7, v12

    const/high16 v6, 0x20000000

    and-int/2addr v2, v6

    or-int v17, v17, v2

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v77

    move-object/from16 v6, v78

    goto :goto_17

    :cond_1f
    move/from16 v77, v2

    move-object/from16 v78, v6

    add-int/lit8 v1, v1, -0x1

    .line 804
    aget v1, v15, v1

    aput v1, v15, v3

    .line 805
    aput v16, v14, v3

    .line 806
    aput v17, v7, v3

    move/from16 v12, v77

    goto :goto_1b

    :cond_20
    move-object/from16 v78, v6

    move v12, v1

    :goto_1b
    move v1, v5

    move/from16 v17, v1

    move-object/from16 v79, v8

    move-object/from16 v80, v14

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_1c
    if-ge v1, v4, :cond_2c

    add-int/lit8 v35, v2, 0x1

    .line 821
    aget v2, v59, v2

    mul-int/lit8 v18, v3, 0x4

    add-int/lit8 v19, v18, 0x0

    move/from16 v81, v4

    .line 824
    aget v4, v66, v19

    move-object/from16 v82, v11

    move-object/from16 v11, v63

    iput v4, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/lit8 v4, v18, 0x1

    .line 825
    aget v4, v66, v4

    iput v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/lit8 v4, v18, 0x2

    .line 826
    aget v4, v66, v4

    iput v4, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 v18, v18, 0x3

    .line 827
    aget v4, v66, v18

    iput v4, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v36, v3, 0x1

    .line 830
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v3, v6, :cond_21

    .line 831
    iget v6, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 833
    :cond_21
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v3, v8, :cond_22

    .line 834
    iget v8, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 836
    :cond_22
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v3, v0, :cond_23

    .line 837
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 839
    :cond_23
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v14, :cond_24

    .line 840
    iget v14, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_24
    move/from16 v3, v16

    :goto_1d
    if-ge v3, v12, :cond_25

    .line 844
    aget v4, v15, v3

    add-int/2addr v4, v5

    if-ge v4, v1, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_25
    move v1, v8

    move v8, v6

    move/from16 v92, v3

    move v3, v0

    move/from16 v0, v92

    :goto_1e
    if-ge v0, v12, :cond_2b

    .line 848
    aget v4, v15, v0

    add-int/2addr v4, v5

    if-gt v4, v2, :cond_2b

    .line 849
    aget v4, v15, v0

    add-int v6, v5, v4

    if-ge v6, v13, :cond_26

    const/16 v29, 0x1

    goto :goto_1f

    :cond_26
    const/16 v29, 0x0

    :goto_1f
    if-eqz v31, :cond_27

    .line 854
    aget v4, v10, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_27
    move/from16 v16, v1

    if-eqz v31, :cond_28

    .line 857
    aget v1, v9, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v18, v1

    goto :goto_20

    :cond_28
    move/from16 v18, v3

    .line 859
    :goto_20
    aget v19, v7, v0

    .line 863
    invoke-virtual/range {v82 .. v82}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v23

    aget v27, v80, v0

    move-object/from16 v1, p0

    move v4, v2

    move-object/from16 v2, v70

    move/from16 v3, v17

    move/from16 v84, v0

    move v0, v4

    move/from16 v83, v81

    move v4, v6

    move/from16 v37, v5

    move/from16 v5, v16

    move/from16 v85, v0

    move v0, v6

    move/from16 v38, v72

    move-object/from16 v16, v78

    move/from16 v6, v18

    move-object/from16 v39, v7

    move-object/from16 v40, v73

    move v7, v8

    move-object/from16 v41, v79

    move v8, v14

    move-object/from16 v43, v9

    move-object/from16 v42, v16

    const/16 v44, 0x0

    move/from16 v9, v71

    move-object/from16 v47, v10

    move-object v14, v11

    move/from16 v45, v62

    move-object/from16 v46, v74

    const/16 v48, 0x1

    move/from16 v10, v32

    move-object/from16 v86, v67

    move-object/from16 v49, v82

    move/from16 v11, v33

    move/from16 v77, v12

    move-object/from16 v87, v68

    move-object/from16 v50, v76

    move-object/from16 v12, v58

    move/from16 v88, v13

    move-object/from16 v13, v57

    move-object/from16 v90, v14

    move/from16 v89, v69

    move-object/from16 v51, v75

    move-object/from16 v52, v80

    move-object/from16 v53, v15

    move-object/from16 v91, v70

    move/from16 v15, v19

    move/from16 v16, v56

    move-object/from16 v17, v51

    move/from16 v18, v88

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v34

    move-object/from16 v22, v50

    move/from16 v24, v37

    move-object/from16 v25, v42

    move/from16 v26, v45

    move-object/from16 v28, v87

    .line 859
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v71

    move/from16 v2, v85

    if-ge v0, v2, :cond_29

    move-object/from16 v11, v90

    .line 869
    iget v6, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 870
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 871
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 872
    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v14, v1

    move v1, v3

    move v3, v4

    move v8, v6

    goto :goto_21

    :cond_29
    move-object/from16 v11, v90

    move/from16 v1, v44

    move v3, v1

    move v8, v3

    move v14, v8

    :goto_21
    add-int/lit8 v4, v84, 0x1

    move-object/from16 v5, p0

    .line 880
    iget v6, v5, Landroid/text/StaticLayout;->mLineCount:I

    iget v7, v5, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_2a

    iget-boolean v6, v5, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2a

    .line 908
    invoke-static/range {v60 .. v61}, Landroid/text/StaticLayout;->nFinish(J)V

    return-void

    :cond_2a
    move/from16 v17, v0

    move v0, v4

    move/from16 v5, v37

    move/from16 v72, v38

    move-object/from16 v7, v39

    move-object/from16 v73, v40

    move-object/from16 v79, v41

    move-object/from16 v78, v42

    move-object/from16 v9, v43

    move/from16 v62, v45

    move-object/from16 v74, v46

    move-object/from16 v10, v47

    move-object/from16 v82, v49

    move-object/from16 v76, v50

    move-object/from16 v75, v51

    move-object/from16 v80, v52

    move-object/from16 v15, v53

    move/from16 v12, v77

    move/from16 v81, v83

    move-object/from16 v67, v86

    move-object/from16 v68, v87

    move/from16 v13, v88

    move/from16 v69, v89

    move-object/from16 v70, v91

    goto/16 :goto_1e

    :cond_2b
    move/from16 v84, v0

    move/from16 v37, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v9

    move-object/from16 v47, v10

    move/from16 v77, v12

    move/from16 v88, v13

    move-object/from16 v53, v15

    move/from16 v45, v62

    move-object/from16 v86, v67

    move-object/from16 v87, v68

    move/from16 v89, v69

    move-object/from16 v91, v70

    move/from16 v38, v72

    move-object/from16 v40, v73

    move-object/from16 v46, v74

    move-object/from16 v51, v75

    move-object/from16 v50, v76

    move-object/from16 v42, v78

    move-object/from16 v41, v79

    move-object/from16 v52, v80

    move/from16 v83, v81

    move-object/from16 v49, v82

    move-object/from16 v5, p0

    const/16 v44, 0x0

    const/16 v48, 0x1

    move v0, v3

    move v6, v8

    move-object/from16 v63, v11

    move/from16 v3, v36

    move/from16 v5, v37

    move/from16 v72, v38

    move-object/from16 v7, v39

    move-object/from16 v73, v40

    move-object/from16 v79, v41

    move-object/from16 v78, v42

    move-object/from16 v9, v43

    move/from16 v62, v45

    move-object/from16 v74, v46

    move-object/from16 v10, v47

    move-object/from16 v11, v49

    move-object/from16 v76, v50

    move-object/from16 v75, v51

    move-object/from16 v80, v52

    move-object/from16 v15, v53

    move/from16 v12, v77

    move/from16 v4, v83

    move/from16 v16, v84

    move-object/from16 v67, v86

    move-object/from16 v68, v87

    move/from16 v13, v88

    move/from16 v69, v89

    move-object/from16 v70, v91

    move v8, v1

    move v1, v2

    move/from16 v2, v35

    goto/16 :goto_1c

    :cond_2c
    move v1, v4

    move-object/from16 v49, v11

    move v0, v13

    move/from16 v45, v62

    move-object/from16 v11, v63

    move-object/from16 v86, v67

    move-object/from16 v87, v68

    move/from16 v89, v69

    move-object/from16 v91, v70

    move/from16 v38, v72

    move-object/from16 v40, v73

    move-object/from16 v46, v74

    move-object/from16 v42, v78

    move-object/from16 v41, v79

    move-object/from16 v5, p0

    const/16 v44, 0x0

    const/16 v48, 0x1

    if-ne v1, v0, :cond_2d

    move/from16 v9, v71

    move/from16 v14, v89

    goto :goto_22

    :cond_2d
    add-int/lit8 v6, v38, 0x1

    move v13, v0

    move-object v0, v5

    move-object/from16 v63, v11

    move-object/from16 v7, v40

    move-object/from16 v8, v41

    move-object/from16 v64, v42

    move/from16 v9, v44

    move/from16 v62, v45

    move-object/from16 v10, v46

    move-object/from16 v65, v49

    move-object/from16 v1, v57

    move/from16 v2, v71

    move-object/from16 v11, v86

    move-object/from16 v12, v87

    move/from16 v14, v89

    move-object/from16 v15, v91

    goto/16 :goto_c

    :cond_2e
    move-object v5, v0

    move/from16 v71, v2

    move-object/from16 v86, v11

    move-object/from16 v87, v12

    move v0, v13

    move-object/from16 v91, v15

    move/from16 v45, v62

    move-object/from16 v11, v63

    move-object/from16 v42, v64

    move/from16 v9, v71

    :goto_22
    if-eq v0, v14, :cond_2f

    add-int/lit8 v13, v0, -0x1

    move-object/from16 v2, v91

    .line 891
    :try_start_1
    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_30

    goto :goto_23

    :cond_2f
    move-object/from16 v2, v91

    :goto_23
    iget v1, v5, Landroid/text/StaticLayout;->mLineCount:I

    iget v3, v5, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v1, v3, :cond_30

    move-object/from16 v1, v86

    const/4 v3, 0x0

    .line 894
    invoke-static {v2, v0, v0, v1, v3}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v17

    move-object/from16 v10, v87

    .line 895
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 896
    iget v6, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v7, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v8, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v1, p0

    move v3, v0

    move/from16 v16, v4

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    move-object/from16 v28, v10

    move/from16 v10, v32

    move-object/from16 v16, v11

    move/from16 v11, v33

    move/from16 v24, v14

    move-object/from16 v14, v16

    move/from16 v16, v56

    move/from16 v18, v0

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v34

    move-object/from16 v25, v42

    move/from16 v26, v45

    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :cond_30
    invoke-static/range {v60 .. v61}, Landroid/text/StaticLayout;->nFinish(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v60 .. v61}, Landroid/text/StaticLayout;->nFinish(J)V

    throw v0
.end method

.method public getBottomPadding()I
    .locals 0

    .line 1254
    iget p0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return p0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    .line 1299
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1303
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x6

    aget p0, v0, p0

    return p0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    .line 1308
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1312
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x5

    aget p0, v0, p0

    return p0
.end method

.method public getEllipsizedWidth()I
    .locals 0

    .line 1317
    iget p0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return p0
.end method

.method public getHeight(Z)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1328
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    .line 1329
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StaticLayout"

    .line 1330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 1335
    iget p1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_1

    iget p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq p1, v0, :cond_1

    .line 1336
    iget p0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getHyphen(I)I
    .locals 1

    .line 1262
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 2

    .line 1270
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1271
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez p2, :cond_0

    return v1

    .line 1274
    :cond_0
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object p0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, p2, p0

    return p0

    .line 1276
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    .line 1277
    iget-object p2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez p2, :cond_2

    return v1

    .line 1280
    :cond_2
    iget-object p2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, p2, p0

    neg-int p0, p0

    return p0

    .line 1282
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    .line 1284
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz p2, :cond_4

    .line 1285
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget p2, p2, v0

    goto :goto_0

    :cond_4
    move p2, v1

    .line 1288
    :goto_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v0, :cond_5

    .line 1289
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object p0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget v1, v0, p0

    :cond_5
    sub-int/2addr p2, v1

    shr-int/lit8 p0, p2, 0x1

    return p0

    .line 1293
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unhandled alignment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getLineContainsTab(I)Z
    .locals 1

    .line 1236
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    const/4 p1, 0x0

    add-int/2addr p0, p1

    aget p0, v0, p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public getLineCount()I
    .locals 0

    .line 1203
    iget p0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return p0
.end method

.method public getLineDescent(I)I
    .locals 1

    .line 1221
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1244
    iget-object p0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object p0, p0, p1

    return-object p0

    .line 1242
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getLineExtra(I)I
    .locals 1

    .line 1216
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x3

    aget p0, v0, p0

    return p0
.end method

.method public getLineForVertical(I)I
    .locals 6

    .line 1182
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1185
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v2

    shr-int/2addr v3, v4

    .line 1188
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v1, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public getLineStart(I)I
    .locals 1

    .line 1226
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x0

    aget p0, v0, p0

    const p1, 0x1fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public getLineTop(I)I
    .locals 1

    .line 1208
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public getParagraphDirection(I)I
    .locals 1

    .line 1231
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x0

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 1249
    iget p0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return p0
.end method
