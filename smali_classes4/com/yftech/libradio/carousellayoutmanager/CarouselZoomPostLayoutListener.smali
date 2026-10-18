.class public Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;
.super Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
.source "CarouselZoomPostLayoutListener.java"


# instance fields
.field private final mScaleMultiplier:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x3e6147ae    # 0.22f

    .line 18
    invoke-direct {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;-><init>()V

    .line 22
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;->mScaleMultiplier:F

    return-void
.end method


# virtual methods
.method public transformChild(Landroid/view/View;FI)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;->mScaleMultiplier:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v2, p3, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    .line 34
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p1

    neg-float p1, p1

    const p3, 0x3fa66666    # 1.3f

    mul-float/2addr p1, p3

    move v3, p2

    move p2, p1

    move p1, v3

    .line 41
    :goto_0
    new-instance p3, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    invoke-direct {p3, p0, p0, p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;-><init>(FFFF)V

    return-object p3
.end method
