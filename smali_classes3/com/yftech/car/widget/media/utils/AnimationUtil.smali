.class public Lcom/yftech/car/widget/media/utils/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# static fields
.field private static animCount:I

.field public static currentRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .line 13
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->animCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yftech/car/widget/media/utils/AnimationUtil;->animCount:I

    return v0
.end method

.method static synthetic access$010()I
    .locals 2

    .line 13
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->animCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/yftech/car/widget/media/utils/AnimationUtil;->animCount:I

    return v0
.end method

.method public static imageResetRotate(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 87
    sput v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    .line 88
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static imageRotateAnimation(Landroid/view/View;Z)V
    .locals 10

    .line 41
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->animCount:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    if-eqz p1, :cond_1

    .line 44
    sget v3, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_0

    .line 45
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    add-float/2addr v0, v2

    sput v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    goto :goto_0

    .line 47
    :cond_0
    sput v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    goto :goto_0

    .line 50
    :cond_1
    sget v3, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_2

    .line 51
    sput v1, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    sub-float/2addr v0, v2

    sput v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    .line 57
    :goto_0
    instance-of v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

    if-eqz v0, :cond_3

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

    sget v1, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setRotationLocation(FFF)V

    goto :goto_1

    .line 60
    :cond_3
    sget v0, Lcom/yftech/car/widget/media/utils/AnimationUtil;->currentRotation:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 62
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    if-eqz p1, :cond_4

    const/high16 v2, -0x3d4c0000    # -90.0f

    :cond_4
    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 63
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x2bc

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 65
    new-instance p1, Lcom/yftech/car/widget/media/utils/AnimationUtil$1;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/utils/AnimationUtil$1;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-void
.end method

.method public static setRotationAnimation(Landroid/view/View;I)V
    .locals 8

    .line 33
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v0, -0x1

    .line 34
    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 35
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v0, p1

    .line 36
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 37
    invoke-virtual {p0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showAlphaAnimation(Landroid/view/View;IZ)V
    .locals 4

    .line 19
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p1, p1

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showTranslateAnimation(Landroid/view/View;IFFFF)V
    .locals 1

    .line 26
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long p1, p1

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
