.class public Lcom/yftech/car/widget/media/photo/view/ZoomOutPageTransformer;
.super Landroid/view/animation/Animation;
.source "ZoomOutPageTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final MIN_ALPHA:F = 0.7f

.field private static final MIN_SCALE:F = 0.8f


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/photo/view/ZoomOutPageTransformer;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public animator_moveX(Landroid/view/View;FF)V
    .locals 2

    const-string/jumbo p0, "x"

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x1f4

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 6

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_2

    .line 37
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v0, v0

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    int-to-float p0, p0

    mul-float/2addr p0, v1

    div-float/2addr p0, v5

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    div-float/2addr v0, v5

    sub-float/2addr p0, v0

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    neg-float p0, p0

    div-float/2addr v0, v5

    add-float/2addr p0, v0

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 47
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    const p0, 0x3f333333    # 0.7f

    sub-float/2addr v3, v4

    const p2, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v3, p2

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr v3, p2

    add-float/2addr v3, p0

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method
