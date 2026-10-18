.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field private mShowWallpaper:Z

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 112
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 118
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 124
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 137
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 142
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const-wide/16 v2, -0x1

    .line 147
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 164
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 169
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 176
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 202
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 207
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 211
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 212
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 215
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 216
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 217
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 219
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 231
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 112
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 118
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 124
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 137
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 142
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const-wide/16 v2, -0x1

    .line 147
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 164
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 169
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 176
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 202
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 207
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 211
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 212
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 214
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 215
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 216
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 217
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 219
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 242
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    .line 244
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x5

    .line 245
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 247
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const/16 v3, 0x9

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 248
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    const/4 v3, 0x3

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 249
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    const/4 v3, 0x4

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 251
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    const/4 v3, 0x6

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x7

    .line 252
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/16 v2, 0x8

    .line 254
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 256
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    const/16 v2, 0xa

    .line 259
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 258
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    const/16 v2, 0xb

    .line 261
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 260
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setShowWallpaper(Z)V

    .line 263
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 265
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    return-void
.end method

.method private fireAnimationEnd()V
    .locals 1

    .line 959
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 961
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationRepeat()V
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationStart()V
    .locals 1

    .line 945
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private isCanceled()Z
    .locals 4

    .line 941
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 312
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 315
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 318
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 276
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 278
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 279
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 280
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public computeDurationHint()J
    .locals 4

    .line 856
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 328
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 329
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .line 844
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1093
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 783
    iget p0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return p0
.end method

.method public getDetachWallpaper()Z
    .locals 0

    .line 791
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 708
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 0

    .line 763
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return p0
.end method

.method public getFillBefore()Z
    .locals 0

    .line 752
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 687
    iget-object p0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 2

    .line 1052
    iget-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1053
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 1055
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1056
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 1058
    invoke-virtual {p5, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1059
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1060
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1062
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1064
    iget-object p1, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1065
    iget-object p0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1067
    invoke-virtual {p1, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1068
    invoke-virtual {p6, p0}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1069
    invoke-virtual {p0, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    return-void
.end method

.method public getRepeatCount()I
    .locals 0

    .line 739
    iget p0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 728
    iget p0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return p0
.end method

.method protected getScaleFactor()F
    .locals 0

    .line 652
    iget p0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return p0
.end method

.method public getShowWallpaper()Z
    .locals 0

    .line 801
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    return p0
.end method

.method public getStartOffset()J
    .locals 2

    .line 718
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 698
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11

    .line 870
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 871
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 874
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    .line 875
    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    .line 878
    iget-wide v9, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v9, v0

    sub-long/2addr p1, v9

    long-to-float p1, p1

    long-to-float p2, v4

    div-float/2addr p1, p2

    goto :goto_0

    .line 882
    :cond_1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    move p1, v7

    goto :goto_0

    :cond_2
    move p1, v8

    :goto_0
    cmpl-float p2, p1, v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_4

    .line 885
    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v1

    :goto_2
    xor-int/lit8 v4, p2, 0x1

    .line 886
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 888
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v4, :cond_5

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_5
    cmpl-float v4, p1, v7

    if-gez v4, :cond_6

    .line 890
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v4, :cond_b

    :cond_6
    cmpg-float v4, p1, v8

    if-lez v4, :cond_7

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v4, :cond_b

    .line 891
    :cond_7
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v4, :cond_8

    .line 892
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 893
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 894
    sget-boolean v4, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v4, :cond_8

    .line 895
    iget-object v4, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v5, "cancel or detach or getTransformation"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 899
    :cond_8
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v4, :cond_9

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 901
    :cond_9
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v4, :cond_a

    sub-float p1, v8, p1

    .line 905
    :cond_a
    iget-object v4, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 906
    invoke-virtual {p0, p1, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :cond_b
    if-eqz p2, :cond_10

    .line 910
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget p2, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq p1, p2, :cond_f

    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 917
    :cond_c
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez p1, :cond_d

    .line 918
    iget p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 921
    :cond_d
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    .line 922
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 925
    :cond_e
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 926
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 928
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_4

    .line 911
    :cond_f
    :goto_3
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez p1, :cond_10

    .line 912
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 913
    iget-object p1, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 914
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 932
    :cond_10
    :goto_4
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz p1, :cond_11

    .line 933
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    return v1

    .line 937
    :cond_11
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mMore:Z

    return p0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 0

    .line 979
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 980
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p0

    return p0
.end method

.method public getZAdjustment()I
    .locals 0

    .line 775
    iget p0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return p0
.end method

.method public hasAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasEnded()Z
    .locals 0

    .line 998
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return p0
.end method

.method public hasStarted()Z
    .locals 0

    .line 989
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return p0
.end method

.method public initialize(IIII)V
    .locals 0

    .line 359
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 1

    .line 1081
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 1082
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1084
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1085
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz p1, :cond_0

    .line 1086
    iget-object p1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1087
    iget-object p2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 0

    .line 569
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return p0
.end method

.method public reset()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 291
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 293
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 294
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 296
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    int-to-float p0, p4

    mul-float/2addr p0, p2

    return p0

    :pswitch_1
    int-to-float p0, p3

    mul-float/2addr p0, p2

    return p0

    :pswitch_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 8

    .line 458
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-lez v0, :cond_0

    .line 459
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 460
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 461
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return-void

    .line 465
    :cond_0
    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v6, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long/2addr v4, v6

    cmp-long v0, v4, p1

    if-lez v0, :cond_1

    .line 467
    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v4, p1, v4

    iput-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    move-wide v4, p1

    .line 471
    :cond_1
    iget-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2

    .line 472
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 473
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return-void

    .line 479
    :cond_2
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-lez v0, :cond_4

    .line 483
    :cond_3
    div-long/2addr p1, v4

    long-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 484
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez p1, :cond_4

    .line 485
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    :cond_4
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 2

    .line 496
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 497
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 836
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 639
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0

    .line 665
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 444
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    return-void

    .line 442
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Animation duration cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFillAfter(Z)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0

    .line 404
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 415
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 377
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 384
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 392
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 559
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 543
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return-void
.end method

.method public setShowWallpaper(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    return-void
.end method

.method public setStartOffset(J)V
    .locals 0

    .line 428
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 511
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 513
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 514
    iput p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mMore:Z

    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0

    .line 629
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 523
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public startNow()V
    .locals 2

    .line 531
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
