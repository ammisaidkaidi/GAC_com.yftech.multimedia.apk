.class public Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "PhotoRelativeLayout.java"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 46
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
