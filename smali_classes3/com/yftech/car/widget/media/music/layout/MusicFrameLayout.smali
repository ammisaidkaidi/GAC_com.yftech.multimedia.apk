.class public Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MusicFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicFrameLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "MusicFrameLayout"

    const-string v1, "onAttachedToWindow: "

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "MusicFrameLayout"

    const-string v1, "onDetachedFromWindow: "

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 65
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MusicFrameLayout"

    const-string/jumbo v1, "release: "

    .line 99
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method
