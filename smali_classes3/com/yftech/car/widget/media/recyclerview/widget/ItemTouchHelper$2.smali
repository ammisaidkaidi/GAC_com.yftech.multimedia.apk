.class Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 326
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 327
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 328
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 329
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelected:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez p1, :cond_4

    .line 330
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 332
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    iget v4, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 333
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    iget v4, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 334
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 335
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    iget p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v2, v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->select(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 339
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-eq v2, v3, :cond_4

    .line 348
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 353
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v3, p1, p2, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_1

    .line 343
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iput v3, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 344
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->select(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 356
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    .line 357
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelected:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->select(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 364
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 369
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 376
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 378
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelected:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 397
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 398
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :pswitch_1
    if-ltz v1, :cond_7

    .line 388
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 389
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 390
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p2, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 391
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 392
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 402
    :cond_4
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->select(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 403
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    goto :goto_1

    .line 406
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 407
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_6

    const/4 v4, 0x1

    .line 412
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 413
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$2;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v0, p2, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
