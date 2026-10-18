.class public Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;
.super Ljava/lang/Object;
.source "MultiPointerGestureDetector.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final MAX_POINTERS:I = 0x2


# instance fields
.field private final mCurrentX:[F

.field private final mCurrentY:[F

.field private mGestureInProgress:Z

.field private final mId:[I

.field private mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNewPointerCount:I

.field private mPointerCount:I

.field private final mStartX:[F

.field private final mStartY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 41
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mId:[I

    .line 42
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartX:[F

    .line 43
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartY:[F

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentX:[F

    .line 45
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentY:[F

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    .line 50
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->reset()V

    return-void
.end method

.method private static getPressedPointerCount(Landroid/view/MotionEvent;)I
    .locals 2

    .line 125
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private getPressedPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    if-lt p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    if-ge p2, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    return p2
.end method

.method public static newInstance()Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;
    .locals 1

    .line 55
    new-instance v0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-direct {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;-><init>()V

    return-object v0
.end method

.method private startGesture()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;->onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V

    :cond_0
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    :cond_1
    return-void
.end method

.method private stopGesture()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    .line 99
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;->onGestureEnd(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V

    :cond_0
    return-void
.end method

.method private updatePointersOnMove(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mId:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentX:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 153
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentY:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePointersOnTap(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPressedPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mId:[I

    aput v2, v1, v0

    goto :goto_1

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mId:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 141
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentX:[F

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartX:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v0

    aput v4, v2, v0

    .line 142
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentY:[F

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartY:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v3, v0

    aput v1, v2, v0

    .line 143
    iget v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentX()[F
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentX:[F

    return-object p0
.end method

.method public getCurrentY()[F
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentY:[F

    return-object p0
.end method

.method public getNewPointerCount()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mNewPointerCount:I

    return p0
.end method

.method public getPointerCount()I
    .locals 0

    .line 232
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    return p0
.end method

.method public getStartX()[F
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartX:[F

    return-object p0
.end method

.method public getStartY()[F
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartY:[F

    return-object p0
.end method

.method public isGestureInProgress()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 198
    iput p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mNewPointerCount:I

    .line 199
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->stopGesture()V

    .line 200
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->reset()V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->updatePointersOnMove(Landroid/view/MotionEvent;)V

    .line 171
    iget-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->shouldStartGesture()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->startGesture()V

    .line 175
    :cond_0
    iget-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;->onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-static {p1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPressedPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mNewPointerCount:I

    .line 188
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->stopGesture()V

    .line 189
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->updatePointersOnTap(Landroid/view/MotionEvent;)V

    .line 190
    iget p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->shouldStartGesture()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->startGesture()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    .line 70
    iput v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mPointerCount:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restartGesture()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mGestureInProgress:Z

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->stopGesture()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartX:[F

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentX:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 215
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mStartY:[F

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mCurrentY:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->startGesture()V

    return-void
.end method

.method public setListener(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;

    return-void
.end method

.method protected shouldStartGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
