.class public Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "VideoConstraintLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFrameLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    const-string v0, "VideoFrameLayout"

    const-string v1, " onAttachedToWindow: "

    .line 72
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    const-string v0, "VideoFrameLayout"

    const-string v1, " onDetachedFromWindow: "

    .line 82
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onWindowFocusChanged(Z)V

    .line 55
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
