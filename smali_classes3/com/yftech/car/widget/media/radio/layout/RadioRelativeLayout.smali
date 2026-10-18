.class public Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RadioRelativeLayout.java"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 45
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioRelativeLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
