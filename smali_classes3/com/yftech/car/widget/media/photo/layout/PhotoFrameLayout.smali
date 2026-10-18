.class public Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PhotoFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFrameLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
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

    .line 41
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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "VideoFrameLayout"

    const-string v1, " onAttachedToWindow: "

    .line 59
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "VideoFrameLayout"

    const-string v1, " onDetachedFromWindow: "

    .line 69
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 51
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoFrameLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
