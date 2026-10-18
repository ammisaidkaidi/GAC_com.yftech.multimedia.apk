.class public Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MusicLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicLinearLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


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

    .line 70
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "MusicLinearLayout"

    const-string v1, "onAttachedToWindow: "

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "MusicLinearLayout"

    const-string v1, "onDetachedFromWindow: "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MusicLinearLayout"

    const-string/jumbo v1, "release: "

    .line 96
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method
