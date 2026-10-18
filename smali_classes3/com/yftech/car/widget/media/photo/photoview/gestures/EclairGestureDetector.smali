.class public Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;
.super Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;
.source "EclairGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 0

    .line 39
    :try_start_0
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 41
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    return p0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 0

    .line 48
    :try_start_0
    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 50
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/photoview/Compat;->getPointerIndex(I)I

    move-result v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 71
    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mLastTouchX:F

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mLastTouchY:F

    goto :goto_1

    .line 63
    :cond_2
    :pswitch_1
    iput v2, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    .line 82
    :cond_3
    :goto_1
    iget v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    if-eq v0, v2, :cond_4

    iget v3, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    .line 84
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
