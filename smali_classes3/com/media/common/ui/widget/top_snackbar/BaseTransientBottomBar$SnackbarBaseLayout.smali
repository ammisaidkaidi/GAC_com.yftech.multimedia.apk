.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 663
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 667
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 668
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 669
    sget p2, Lcom/media/common/ui/widget/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 670
    sget p2, Lcom/media/common/ui/widget/R$styleable;->SnackbarLayout_elevation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 675
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 688
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 689
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 693
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 698
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 699
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 680
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 681
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method
