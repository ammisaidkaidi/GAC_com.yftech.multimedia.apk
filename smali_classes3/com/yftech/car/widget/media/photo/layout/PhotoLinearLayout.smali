.class public Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;
.super Landroid/widget/LinearLayout;
.source "PhotoLinearLayout.java"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 48
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLinearLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
