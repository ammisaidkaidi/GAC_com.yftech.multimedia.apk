.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007c

    .line 119
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x5

    .line 78
    iput v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 91
    sget-object v0, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    iget p2, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 94
    iget-boolean p3, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 95
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-lez p2, :cond_0

    .line 99
    iget p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq p2, p1, :cond_0

    .line 100
    invoke-virtual {p0, p2}, Landroid/widget/RatingBar;->setNumStars(I)V

    :cond_0
    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-ltz p2, :cond_1

    .line 104
    invoke-virtual {p0, p3}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 106
    invoke-virtual {p0, p2}, Landroid/widget/RatingBar;->setStepSize(F)V

    :goto_0
    cmpl-float p1, p4, p1

    if-ltz p1, :cond_2

    .line 110
    invoke-virtual {p0, p4}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_2
    const p1, 0x3f19999a    # 0.6f

    .line 115
    iput p1, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    return-void
.end method

.method private getProgressPerStar()F
    .locals 2

    .line 243
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    return v1
.end method

.method private updateSecondaryProgress(I)V
    .locals 5

    .line 277
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v1, p1

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    float-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int p1, v1

    .line 281
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    .line 352
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method dispatchRatingChange(Z)V
    .locals 2

    .line 319
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 337
    const-class p0, Landroid/widget/RatingBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 0

    .line 253
    new-instance p0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object p0
.end method

.method public getNumStars()I
    .locals 0

    .line 192
    iget p0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return p0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 0

    .line 140
    iget-object p0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object p0
.end method

.method public getRating()F
    .locals 1

    .line 210
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 236
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public isIndicator()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 345
    invoke-virtual {p0}, Landroid/widget/RatingBar;->canUserSetProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 346
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method onKeyChange()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    const/4 v0, 0x1

    .line 315
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 289
    iget p2, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    if-lez p2, :cond_0

    .line 290
    iget p2, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    .line 291
    invoke-static {p2, p1, v0}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result p1

    .line 292
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result p2

    .line 291
    invoke-virtual {p0, p1, p2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 286
    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 0

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    .line 261
    invoke-direct {p0, p3}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 298
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 300
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 307
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 152
    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setFocusable(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setFocusable(I)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    if-gtz p1, :cond_0

    .line 329
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 327
    monitor-exit p0

    throw p1
.end method

.method public setNumStars(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 181
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 184
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    return-void
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-void
.end method

.method public setRating(F)V
    .locals 1

    .line 201
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setProgress(I)V

    return-void
.end method

.method public setStepSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 225
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    float-to-int v0, v0

    .line 226
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setMax(I)V

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setProgress(I)V

    return-void
.end method
