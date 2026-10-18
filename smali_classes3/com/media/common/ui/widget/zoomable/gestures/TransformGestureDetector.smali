.class public Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;
.super Ljava/lang/Object;
.source "TransformGestureDetector.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;
    }
.end annotation


# instance fields
.field private final mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

.field private mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    .line 41
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    .line 42
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->setListener(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector$Listener;)V

    return-void
.end method

.method private calcAverage([FI)F
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 98
    aget v2, p1, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    int-to-float p0, p2

    div-float p0, v1, p0

    :cond_1
    return p0
.end method

.method public static newInstance()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;
    .locals 2

    .line 47
    new-instance v0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    invoke-static {}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->newInstance()Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;-><init>(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V

    return-object v0
.end method


# virtual methods
.method public getNewPointerCount()I
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getNewPointerCount()I

    move-result p0

    return p0
.end method

.method public getPivotX()F
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result p0

    return p0
.end method

.method public getPivotY()F
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result p0

    return p0
.end method

.method public getPointerCount()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result p0

    return p0
.end method

.method public getRotation()F
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    .line 166
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v4}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v4

    aget v4, v4, v3

    sub-float/2addr v2, v4

    .line 167
    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v4}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentX()[F

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v5}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentX()[F

    move-result-object v5

    aget v5, v5, v3

    sub-float/2addr v4, v5

    .line 168
    iget-object v5, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v5}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentY()[F

    move-result-object v5

    aget v1, v5, v1

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentY()[F

    move-result-object p0

    aget p0, p0, v3

    sub-float/2addr v1, p0

    float-to-double v2, v2

    float-to-double v5, v0

    .line 169
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p0, v2

    float-to-double v0, v1

    float-to-double v2, v4

    .line 170
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getScale()F
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    .line 151
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v4}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v4

    aget v4, v4, v3

    sub-float/2addr v2, v4

    .line 152
    iget-object v4, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v4}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentX()[F

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v5}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentX()[F

    move-result-object v5

    aget v5, v5, v3

    sub-float/2addr v4, v5

    .line 153
    iget-object v5, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v5}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentY()[F

    move-result-object v5

    aget v1, v5, v1

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentY()[F

    move-result-object p0

    aget p0, p0, v3

    sub-float/2addr v1, p0

    float-to-double v5, v0

    float-to-double v2, v2

    .line 154
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p0, v2

    float-to-double v2, v4

    float-to-double v0, v1

    .line 155
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, p0

    return v0
.end method

.method public getTranslationX()F
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentX()[F

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    .line 136
    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartX()[F

    move-result-object v1

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getTranslationY()F
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getCurrentY()[F

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result v0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    .line 142
    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getStartY()[F

    move-result-object v1

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->getPointerCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->calcAverage([FI)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public isGestureInProgress()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->isGestureInProgress()Z

    move-result p0

    return p0
.end method

.method public onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;->onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    :cond_0
    return-void
.end method

.method public onGestureEnd(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;->onGestureEnd(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    :cond_0
    return-void
.end method

.method public onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;->onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->reset()V

    return-void
.end method

.method public restartGesture()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mDetector:Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/MultiPointerGestureDetector;->restartGesture()V

    return-void
.end method

.method public setListener(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->mListener:Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector$Listener;

    return-void
.end method
