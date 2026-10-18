.class public Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeGestureDetector"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    return p0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    return p0
.end method

.method public isScaling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 101
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 103
    iput-object v2, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 77
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 78
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v2

    .line 79
    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float v5, v2, v5

    .line 81
    iget-boolean v6, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v6, :cond_1

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    .line 87
    :cond_1
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;

    invoke-interface {v1, v4, v5}, Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;->onDrag(FF)V

    .line 89
    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 90
    iput v2, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 92
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 109
    :pswitch_2
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 112
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 114
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 115
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 117
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 118
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;

    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v1, v4, v5, p1, v0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 132
    iput-object v2, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 63
    :pswitch_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 64
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    const-string v0, "CupcakeGestureDetector"

    const-string v2, "Velocity tracker is null"

    .line 67
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 71
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 72
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    :cond_4
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnGestureListener(Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;

    return-void
.end method
