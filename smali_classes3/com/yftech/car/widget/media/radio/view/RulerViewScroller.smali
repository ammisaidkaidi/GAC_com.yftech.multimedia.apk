.class public Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;
.super Ljava/lang/Object;
.source "RulerViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field public static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollX:I

.field private lastTouchedX:F

.field private listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->MESSAGE_SCROLL:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->MESSAGE_JUSTIFY:I

    .line 53
    new-instance v1, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;-><init>(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 134
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;

    invoke-direct {v2, p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;-><init>(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->animationHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    .line 41
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->context:Landroid/content/Context;

    .line 42
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 43
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 44
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    .line 45
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    const p1, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFriction(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastScrollX:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastScrollX:I

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private justify()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;->onJustify()V

    const/4 v0, 0x1

    .line 166
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->setNextMessage(I)V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->clearMessages()V

    .line 105
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->isScrollingPerformed:Z

    .line 175
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    invoke-interface {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;->onStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;->onFinished()V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->isScrollingPerformed:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastTouchedX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->startScrolling()V

    .line 85
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->listener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    invoke-interface {v2, v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;->onScroll(I)V

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastTouchedX:F

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastTouchedX:F

    .line 77
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 78
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->clearMessages()V

    .line 91
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->justify()V

    :cond_3
    return v1
.end method

.method public scroll(II)V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->lastScrollX:I

    .line 126
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_0
    const/16 p2, 0x190

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 127
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->setNextMessage(I)V

    .line 128
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->startScrolling()V

    return-void
.end method
