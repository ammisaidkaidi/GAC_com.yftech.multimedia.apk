.class public Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RadioConstraintLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioFrameLayout"


# instance fields
.field private mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

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

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->initView(Landroid/view/ViewGroup;)V

    const-string p0, "RadioFrameLayout"

    const-string v0, " onAttachedToWindow: "

    .line 62
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    .line 68
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->unregister()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onWindowFocusChanged(Z)V

    .line 50
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/RadioConstraintLayout;->mLayoutChildManager:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
