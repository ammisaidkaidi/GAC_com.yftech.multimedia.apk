.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final INVALID_STROKE_ID:I = -0x1

.field static sIdCounter:I


# instance fields
.field mContinued:Z

.field mContinuedStrokeId:I

.field mEndTime:J

.field mId:I

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 229
    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;JJZ)V
    .locals 5

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 248
    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    const-wide/16 v0, 0x0

    cmp-long p6, p4, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p6, :cond_0

    move p6, v2

    goto :goto_0

    :cond_0
    move p6, v3

    :goto_0
    const-string v4, "Duration must be positive"

    .line 249
    invoke-static {p6, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long p6, p2, v0

    if-ltz p6, :cond_1

    move p6, v2

    goto :goto_1

    :cond_1
    move p6, v3

    :goto_1
    const-string v0, "Start time must not be negative"

    .line 250
    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p6

    xor-int/2addr p6, v2

    const-string v0, "Path is empty"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 252
    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    .line 253
    invoke-virtual {p1, p6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 254
    iget v0, p6, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p6, p6, v1

    if-ltz p6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const-string p6, "Path bounds must not be negative"

    invoke-static {v2, p6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 257
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 258
    new-instance p6, Landroid/graphics/PathMeasure;

    invoke-direct {p6, p1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 259
    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p6

    cmpl-float p6, p6, v1

    if-nez p6, :cond_3

    .line 261
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 262
    invoke-virtual {p6, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x2

    .line 263
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 264
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, p6, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 265
    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p6, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 267
    :cond_3
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_4

    .line 274
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p6, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 275
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    add-long/2addr p2, p4

    .line 276
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 277
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p1

    long-to-float p2, p4

    div-float/2addr p1, p2

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 278
    sget p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return-void

    .line 268
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path has more than one contour"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 8

    .line 335
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 341
    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput p0, v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return-object v0

    .line 336
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only strokes marked willContinue can be continued"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContinuedStrokeId()I
    .locals 0

    .line 361
    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return p0
.end method

.method public getDuration()J
    .locals 4

    .line 305
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .locals 0

    .line 316
    iget p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return p0
.end method

.method getLength()F
    .locals 0

    .line 365
    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    return p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 287
    new-instance v0, Landroid/graphics/Path;

    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, p0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method getPosForTime(J[F)Z
    .locals 4

    .line 370
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v0, :cond_0

    .line 371
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    aput p1, p3, p2

    .line 372
    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 p1, 0x1

    aget p0, p0, p1

    aput p0, p3, p1

    return p1

    .line 375
    :cond_0
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 377
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p0

    invoke-virtual {p1, p0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p0

    return p0

    .line 379
    :cond_1
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    mul-float/2addr v0, p1

    .line 380
    iget-object p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p0

    return p0
.end method

.method public getStartTime()J
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method hasPointForTime(J)Z
    .locals 2

    .line 384
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public willContinue()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return p0
.end method
