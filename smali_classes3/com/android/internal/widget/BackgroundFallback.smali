.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    if-gtz p0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    if-lt p0, p1, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p0

    if-lt p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v13, v4

    move v14, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v15, p2

    .line 72
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move/from16 v16, v8

    .line 73
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v15, p4

    if-ne v9, v15, :cond_1

    if-nez v8, :cond_2

    .line 77
    instance-of v8, v9, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    move-object v8, v9

    check-cast v8, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3

    invoke-direct {v0, v8}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v8, v6

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 88
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 89
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v6

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 90
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v12, v9

    move v14, v13

    move v13, v8

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    move v7, v9

    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x2

    if-ge v6, v8, :cond_d

    if-nez v6, :cond_5

    move-object v8, v2

    goto :goto_3

    :cond_5
    move-object v8, v3

    :goto_3
    if-eqz v8, :cond_c

    .line 98
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_c

    .line 99
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v15

    if-nez v10, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_5

    .line 105
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_7

    .line 106
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v13, :cond_7

    const/4 v13, 0x0

    .line 110
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_8

    .line 111
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gt v10, v11, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_8

    move v11, v4

    .line 115
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v14, :cond_9

    .line 116
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_9

    const/4 v14, 0x0

    .line 120
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-gt v10, v12, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_a

    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_a

    move v12, v5

    .line 125
    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v14, :cond_b

    move v8, v9

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    and-int/2addr v7, v8

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v7, :cond_f

    .line 130
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 131
    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v14, 0x0

    :cond_f
    if-ge v13, v11, :cond_15

    if-lt v14, v12, :cond_10

    goto :goto_8

    :cond_10
    if-lez v14, :cond_11

    .line 141
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    :goto_7
    if-lez v13, :cond_12

    .line 145
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v14, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    if-ge v11, v4, :cond_13

    .line 149
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11, v14, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    if-ge v12, v5, :cond_14

    .line 153
    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v13, v12, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    return-void

    :cond_15
    :goto_8
    return-void
.end method

.method public hasFallback()Z
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method
