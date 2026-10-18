.class public Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;
.super Landroid/widget/LinearLayout;
.source "VideoLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoLinearLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "VideoLinearLayout"

    const-string v1, " onAttachedToWindow: "

    .line 95
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 105
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 53
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
