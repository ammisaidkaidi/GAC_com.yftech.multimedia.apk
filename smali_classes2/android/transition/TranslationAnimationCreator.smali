.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move/from16 v4, p6

    move/from16 v5, p7

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 56
    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v9, 0x102047b

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-eqz v8, :cond_0

    const/4 v9, 0x0

    .line 58
    aget v9, v8, v9

    sub-int/2addr v9, p2

    int-to-float v9, v9

    add-float/2addr v9, v6

    const/4 v10, 0x1

    .line 59
    aget v8, v8, v10

    sub-int v8, v8, p3

    int-to-float v8, v8

    add-float/2addr v8, v7

    goto :goto_0

    :cond_0
    move/from16 v9, p4

    move/from16 v8, p5

    :goto_0
    sub-float v10, v9, v6

    .line 62
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, p2

    sub-float v2, v8, v7

    .line 63
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v11, p3, v2

    .line 65
    invoke-virtual {p0, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {p0, v8}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v2, v9, v4

    if-nez v2, :cond_1

    cmpl-float v2, v8, v5

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 71
    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 76
    new-instance v9, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v12, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, v10

    move v4, v11

    move v5, v6

    move v6, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    move-object/from16 v0, p9

    .line 78
    invoke-virtual {v0, v9}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 79
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p8

    .line 81
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v8
.end method
