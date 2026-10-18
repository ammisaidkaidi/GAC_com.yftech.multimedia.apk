.class public final Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;
.super Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.source "TopSnackBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 394
    invoke-super {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onMeasure(II)V

    .line 399
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;->getChildCount()I

    move-result p1

    .line 400
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 402
    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 404
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 405
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 404
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
