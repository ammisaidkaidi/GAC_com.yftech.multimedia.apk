.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 7

    .line 174
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 176
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 p3, 0x0

    .line 177
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 178
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p7

    move v5, p8

    .line 180
    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 10

    move-object v7, p0

    move-object/from16 v3, p9

    move/from16 v8, p10

    .line 209
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    .line 213
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v8

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    .line 219
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 222
    iput v8, v7, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    move v6, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p3

    .line 214
    iput v0, v7, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 215
    iput v9, v7, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 216
    iput v9, v7, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v6, v0

    .line 226
    :goto_1
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method private static hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 7

    const/16 v0, 0x1f4

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    add-int/lit16 v3, v2, 0x1f4

    .line 297
    :try_start_0
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 301
    invoke-static {p0, v2, v4, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    .line 305
    aget-char v5, v0, v2

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 306
    invoke-static {v5}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    const/4 p0, 0x1

    return p0

    :cond_2
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    throw p0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    return v1
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2

    .line 276
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    .line 285
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 9

    .line 325
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 326
    invoke-static {p0, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 329
    invoke-interface {p2, p0, v0, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 332
    :cond_1
    instance-of p2, p0, Landroid/text/Spanned;

    if-eqz p2, :cond_2

    .line 333
    move-object p2, p0

    check-cast p2, Landroid/text/Spanned;

    .line 334
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {p2, v0, v4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 335
    array-length p2, p2

    if-lez p2, :cond_2

    return-object v1

    :cond_2
    if-nez p3, :cond_3

    .line 342
    new-instance p3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {p3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {p3}, Landroid/text/BoringLayout$Metrics;->access$000(Landroid/text/BoringLayout$Metrics;)V

    .line 347
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 348
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 350
    invoke-virtual {p2, p3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Landroid/text/BoringLayout$Metrics;->width:I

    .line 351
    invoke-static {p2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-object p3
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10

    .line 56
    new-instance v9, Landroid/text/BoringLayout;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v9
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12

    .line 82
    new-instance v11, Landroid/text/BoringLayout;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v11
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 1

    .line 441
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 442
    iget-object p2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 p3, 0x0

    iget p4, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iget-object p0, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method public ellipsized(II)V
    .locals 0

    .line 452
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    sub-int/2addr p2, p1

    .line 453
    iput p2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return-void
.end method

.method public getBottomPadding()I
    .locals 0

    .line 419
    iget p0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return p0
.end method

.method public getEllipsisCount(I)I
    .locals 0

    .line 424
    iget p0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return p0
.end method

.method public getEllipsisStart(I)I
    .locals 0

    .line 429
    iget p0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return p0
.end method

.method public getEllipsizedWidth()I
    .locals 0

    .line 434
    iget p0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 358
    iget p0, p0, Landroid/text/BoringLayout;->mBottom:I

    return p0
.end method

.method public getLineContainsTab(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLineDescent(I)I
    .locals 0

    .line 376
    iget p0, p0, Landroid/text/BoringLayout;->mDesc:I

    return p0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 0

    .line 409
    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p0
.end method

.method public getLineMax(I)F
    .locals 0

    .line 399
    iget p0, p0, Landroid/text/BoringLayout;->mMax:F

    return p0
.end method

.method public getLineStart(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public getLineTop(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 371
    :cond_0
    iget p0, p0, Landroid/text/BoringLayout;->mBottom:I

    return p0
.end method

.method public getLineWidth(I)F
    .locals 0

    if-nez p1, :cond_0

    .line 404
    iget p0, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getParagraphDirection(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 414
    iget p0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return p0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object v5, p1

    .line 233
    instance-of v3, v5, Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v4, p3

    if-ne v4, v3, :cond_0

    .line 234
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_0
    iput-object v12, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    :goto_0
    move-object/from16 v4, p2

    .line 239
    iput-object v4, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz p5, :cond_1

    .line 242
    iget v3, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v6, v1, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v3, v6

    .line 243
    iget v6, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v6, v0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_1

    .line 245
    :cond_1
    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v6, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v3, v6

    .line 246
    iget v6, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v6, v0, Landroid/text/BoringLayout;->mDesc:I

    .line 249
    :goto_1
    iput v3, v0, Landroid/text/BoringLayout;->mBottom:I

    if-eqz p6, :cond_2

    .line 252
    iget v3, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v3, v3

    iput v3, v0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_2

    .line 259
    :cond_2
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    const/4 v6, 0x0

    .line 260
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v5, p1

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 262
    invoke-virtual {v13, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroid/text/BoringLayout;->mMax:F

    .line 263
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    :goto_2
    if-eqz p5, :cond_3

    .line 267
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 268
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    :cond_3
    return-void
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 7

    .line 105
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 107
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 p3, 0x0

    .line 108
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 109
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p7

    move v5, p8

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZ)V

    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 10

    move-object v7, p0

    move-object/from16 v3, p9

    move/from16 v8, p10

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    .line 141
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v8

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    .line 149
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 152
    iput v8, v7, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    move v6, v9

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move v0, p3

    .line 144
    iput v0, v7, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 145
    iput v9, v7, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 146
    iput v9, v7, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v6, v0

    .line 156
    :goto_1
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZ)V

    return-object v7
.end method
