.class public Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleTapGestureListener.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_SCROLL_THRESHOLD:I = 0x14

.field private static final DURATION_MS:I = 0x12c


# instance fields
.field private final mDoubleTapImagePoint:Landroid/graphics/PointF;

.field private mDoubleTapScale:F

.field private mDoubleTapScroll:Z

.field private final mDoubleTapViewPoint:Landroid/graphics/PointF;

.field private final mDraweeView:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

.field private mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;


# direct methods
.method public constructor <init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapImagePoint:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScale:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    .line 35
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDraweeView:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    return-void
.end method

.method private calcScale(Landroid/graphics/PointF;)F
    .locals 2

    .line 128
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    .line 129
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 130
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScale:F

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScale:F

    mul-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method private shouldStartDoubleTapScroll(Landroid/graphics/PointF;)Z
    .locals 2

    .line 122
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    float-to-double p0, p1

    .line 123
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 73
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDraweeView:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    .line 74
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;

    .line 75
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v4, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 76
    invoke-virtual {v1, v4}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mapViewToImage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 87
    :pswitch_0
    iget-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    if-nez p1, :cond_0

    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->shouldStartDoubleTapScroll(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v9

    :cond_1
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    .line 88
    iget-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    if-eqz p1, :cond_4

    .line 89
    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->calcScale(Landroid/graphics/PointF;)F

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapImagePoint:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1

    .line 96
    :pswitch_1
    iget-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    if-eqz p1, :cond_2

    .line 97
    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->calcScale(Landroid/graphics/PointF;)F

    move-result p1

    .line 98
    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapImagePoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v2, v3}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getScaleFactor()F

    move-result p1

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v5, 0x7

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    .line 106
    invoke-virtual/range {v1 .. v8}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    .line 109
    invoke-virtual/range {v1 .. v8}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    .line 113
    :goto_0
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScroll:Z

    goto :goto_1

    .line 79
    :pswitch_2
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapViewPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 80
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapImagePoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 81
    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mDoubleTapScale:F

    :cond_4
    :goto_1
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " velocityX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "  velocityY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/high16 p1, -0x3b860000    # -1000.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x1

    if-gez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;->onNext()V

    :cond_0
    return p2

    :cond_1
    const/high16 p1, 0x447a0000    # 1000.0f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    if-eqz p1, :cond_2

    .line 55
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;->onPrev()V

    :cond_2
    return p2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    invoke-interface {v0}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;->onDoubleTapMoving()V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;->onSingleClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setOnSingleClick(Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->mListener:Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;

    return-void
.end method
