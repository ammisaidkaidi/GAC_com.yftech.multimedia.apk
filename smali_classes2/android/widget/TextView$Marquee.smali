.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerMs:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 12412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12400
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 12419
    new-instance v0, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 12426
    new-instance v0, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 12435
    new-instance v0, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 12413
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 12414
    iput v0, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    .line 12415
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 12416
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$600(Landroid/widget/TextView$Marquee;)B
    .locals 0

    .line 12387
    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p0
.end method

.method static synthetic access$602(Landroid/widget/TextView$Marquee;B)B
    .locals 0

    .line 12387
    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p1
.end method

.method static synthetic access$702(Landroid/widget/TextView$Marquee;J)J
    .locals 0

    .line 12387
    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method static synthetic access$800(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .locals 0

    .line 12387
    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$900(Landroid/widget/TextView$Marquee;)I
    .locals 0

    .line 12387
    iget p0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p0
.end method

.method static synthetic access$910(Landroid/widget/TextView$Marquee;)I
    .locals 2

    .line 12387
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method private resetScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 12480
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 12481
    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 12482
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 0

    .line 12511
    iget p0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return p0
.end method

.method getMaxFadeScroll()F
    .locals 0

    .line 12519
    iget p0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return p0
.end method

.method getScroll()F
    .locals 0

    .line 12515
    iget p0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return p0
.end method

.method isRunning()Z
    .locals 1

    .line 12531
    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isStopped()Z
    .locals 0

    .line 12535
    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldDrawGhost()Z
    .locals 2

    .line 12527
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget p0, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldDrawLeftFade()Z
    .locals 1

    .line 12523
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget p0, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method start(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 12487
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    return-void

    .line 12490
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 12491
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 12492
    invoke-static {p1}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 12493
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v0, 0x0

    .line 12494
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 12495
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 12496
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 12497
    invoke-static {p1}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    sub-float v3, v1, v0

    add-float/2addr v3, v2

    .line 12499
    iput v3, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 12500
    iget v3, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v3, v0

    iput v3, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    add-float/2addr v2, v1

    .line 12501
    iput v2, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 12502
    iput v0, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 12503
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 12505
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 12506
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method

.method stop()V
    .locals 2

    const/4 v0, 0x0

    .line 12472
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 12473
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12474
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12475
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12476
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    return-void
.end method

.method tick()V
    .locals 5

    .line 12448
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 12452
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12454
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 12455
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12456
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    .line 12457
    iget-wide v3, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    sub-long v3, v1, v3

    .line 12458
    iput-wide v1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    long-to-float v1, v3

    .line 12459
    iget v2, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    mul-float/2addr v1, v2

    .line 12460
    iget v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 12461
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 12462
    iget v1, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 12463
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_0

    .line 12465
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12467
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method
