.class public Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RadioLinearLayout.java"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 55
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 47
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
