.class Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private mShouldReactToLongPress:Z

.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 2320
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2318
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    return-void
.end method


# virtual methods
.method doNotReactToLongPress()V
    .locals 1

    const/4 v0, 0x0

    .line 2328
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2338
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    if-nez v0, :cond_0

    return-void

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2343
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2345
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2348
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2352
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v1, v2, :cond_2

    .line 2353
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2354
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2355
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2356
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iput v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 2357
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iput p1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 2358
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    const/4 v2, 0x0

    iput v2, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 2363
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2364
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->select(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    return-void
.end method
