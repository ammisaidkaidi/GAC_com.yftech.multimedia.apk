.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12174
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12191
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12248
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 12249
    instance-of v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v0, :cond_0

    .line 12250
    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12251
    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RecyclerView"

    .line 12253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12254
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12253
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 0

    .line 12385
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 12378
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mLayout:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0

    .line 12371
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12264
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public getTargetPosition()I
    .locals 0

    .line 12316
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return p0
.end method

.method public instantScrollToPosition(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12394
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 0

    .line 12298
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 12306
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return p0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12412
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 12414
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 12415
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method onAnimation(II)V
    .locals 5

    .line 12320
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 12321
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 12322
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 12330
    :cond_1
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 12331
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12332
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 12333
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 12334
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 12335
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 12333
    invoke-virtual {v0, v3, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 12340
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12342
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 12344
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v3, :cond_4

    .line 12345
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12346
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 12347
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    .line 12349
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12350
    iput-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12353
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_6

    .line 12354
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12355
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result p1

    .line 12356
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_6

    .line 12359
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 12360
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12361
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_6
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 12398
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12399
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setTargetPosition(I)V
    .locals 0

    .line 12234
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method start(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 3

    .line 12209
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 12211
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "RecyclerView"

    .line 12212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12212
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12218
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 12219
    iput-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12220
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 12223
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    iget p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iput p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 p1, 0x1

    .line 12224
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 12225
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12226
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12227
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 12228
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 12230
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    return-void

    .line 12221
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final stop()V
    .locals 3

    .line 12274
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12277
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 12278
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 12279
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->mState:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, 0x0

    .line 12280
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12281
    iput v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12282
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12284
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 12286
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12287
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    return-void
.end method
