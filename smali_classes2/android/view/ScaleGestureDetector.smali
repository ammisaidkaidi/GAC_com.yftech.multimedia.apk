.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 164
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 197
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 199
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1050057

    .line 202
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 203
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    const/4 p3, 0x1

    if-le p1, p2, :cond_1

    .line 207
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_1
    const/16 p2, 0x16

    if-le p1, p2, :cond_2

    .line 211
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    .line 40
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    .line 40
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    .line 40
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .locals 0

    .line 387
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 0

    .line 483
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return p0
.end method

.method public getCurrentSpanX()F
    .locals 0

    .line 493
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return p0
.end method

.method public getCurrentSpanY()F
    .locals 0

    .line 503
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return p0
.end method

.method public getEventTime()J
    .locals 2

    .line 573
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 0

    .line 459
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return p0
.end method

.method public getFocusY()F
    .locals 0

    .line 473
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return p0
.end method

.method public getPreviousSpan()F
    .locals 0

    .line 513
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return p0
.end method

.method public getPreviousSpanX()F
    .locals 0

    .line 523
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return p0
.end method

.method public getPreviousSpanY()F
    .locals 0

    .line 533
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return p0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 544
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 548
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 551
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 552
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v2, v3

    goto :goto_1

    :cond_4
    sub-float/2addr v2, v3

    :goto_1
    return v2

    .line 554
    :cond_5
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float v2, v0, p0

    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    .line 564
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return p0
.end method

.method public isQuickScaleEnabled()Z
    .locals 0

    .line 419
    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return p0
.end method

.method public isStylusScaleEnabled()Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 228
    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 232
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 237
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_1

    .line 238
    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v3

    .line 245
    :goto_0
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    if-nez v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    if-eq v2, v6, :cond_5

    const/4 v9, 0x3

    if-eq v2, v9, :cond_5

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v6

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    if-eqz v9, :cond_9

    .line 254
    :cond_6
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_7

    .line 255
    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 256
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 257
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 258
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 259
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v9, :cond_8

    .line 260
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 261
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 262
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    return v6

    .line 270
    :cond_9
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_a

    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_a

    if-nez v9, :cond_a

    if-eqz v5, :cond_a

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 275
    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 276
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_a
    const/4 v5, 0x6

    if-eqz v2, :cond_c

    if-eq v2, v5, :cond_c

    const/4 v9, 0x5

    if-eq v2, v9, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    move v7, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v7, v6

    :goto_6
    if-ne v2, v5, :cond_d

    move v5, v6

    goto :goto_7

    :cond_d
    move v5, v3

    :goto_7
    if-eqz v5, :cond_e

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_e
    const/4 v9, -0x1

    :goto_8
    if-eqz v5, :cond_f

    add-int/lit8 v5, v4, -0x1

    goto :goto_9

    :cond_f
    move v5, v4

    .line 291
    :goto_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 294
    iget v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 295
    iget v12, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_10

    .line 297
    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 299
    :cond_10
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_11
    move v11, v3

    move v12, v10

    move v13, v12

    :goto_a
    if-ge v11, v4, :cond_13

    if-ne v9, v11, :cond_12

    goto :goto_b

    .line 304
    :cond_12
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 305
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    int-to-float v11, v5

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    :goto_c
    move v13, v10

    move v14, v13

    move v10, v3

    :goto_d
    if-ge v10, v4, :cond_15

    if-ne v9, v10, :cond_14

    goto :goto_e

    .line 318
    :cond_14
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    .line 319
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_15
    int-to-float v1, v5

    div-float/2addr v13, v1

    div-float/2addr v14, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float/2addr v14, v1

    .line 330
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v14

    goto :goto_f

    :cond_16
    float-to-double v4, v13

    float-to-double v9, v14

    .line 333
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 339
    :goto_f
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 340
    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 341
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 342
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v5

    if-nez v5, :cond_18

    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v5, :cond_18

    iget v5, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_17

    if-eqz v7, :cond_18

    .line 343
    :cond_17
    iget-object v5, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 344
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 345
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_18
    if-eqz v7, :cond_19

    .line 348
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 349
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 350
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 353
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_10

    :cond_1a
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 354
    :goto_10
    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v5, :cond_1c

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1c

    if-nez v4, :cond_1b

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 355
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    .line 356
    :cond_1b
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 357
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 358
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 359
    iget-wide v3, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v3, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 360
    iget-object v3, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_1c
    if-ne v2, v8, :cond_1e

    .line 365
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 366
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 367
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 371
    iget-boolean v1, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_1d

    .line 372
    iget-object v1, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_11

    :cond_1d
    move v1, v6

    :goto_11
    if-eqz v1, :cond_1e

    .line 376
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 377
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 378
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 379
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    :cond_1e
    return v6
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 397
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 398
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 399
    new-instance p1, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {p1, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 410
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
