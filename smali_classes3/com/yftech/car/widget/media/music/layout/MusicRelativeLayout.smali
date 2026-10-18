.class public Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MusicRelativeLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicRelativeLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    :cond_0
    const-string v0, "MusicRelativeLayout"

    const-string v1, "onAttachedToWindow: "

    .line 83
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "MusicRelativeLayout"

    const-string v1, "onDetachedFromWindow: "

    .line 90
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MusicRelativeLayout"

    const-string/jumbo v1, "release: "

    .line 97
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method
