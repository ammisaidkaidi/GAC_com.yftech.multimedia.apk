.class public Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureListenerWrapper.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 21
    new-instance v0, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->mDelegate:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method
