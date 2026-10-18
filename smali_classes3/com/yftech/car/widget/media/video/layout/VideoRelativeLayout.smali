.class public Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "VideoRelativeLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRelativeLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 68
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 51
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
