.class public Lcom/yftech/car/widget/media/layout/MediaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MediaLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicLinearLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->media_layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->media_layout_layout_media_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 67
    new-instance p1, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    goto :goto_0

    .line 64
    :pswitch_0
    new-instance p1, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    goto :goto_0

    .line 61
    :pswitch_1
    new-instance p1, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "MusicLinearLayout"

    const-string v1, "onAttachedToWindow: "

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "MusicLinearLayout"

    const-string v1, "onDetachedFromWindow: "

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 75
    iget-object v0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MusicLinearLayout"

    const-string/jumbo v1, "release: "

    .line 105
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/yftech/car/widget/media/layout/MediaLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method
