.class Lcom/android/internal/app/PlatLogoActivity$PBackground;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBackground"
.end annotation


# instance fields
.field private darkest:I

.field private dp:F

.field private maxRadius:F

.field private offset:F

.field private palette:[I

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 103
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    .line 104
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v9, v2

    .line 106
    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    cmpl-float v2, v2, v8

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v2, :cond_1

    div-float v2, v1, v10

    div-float v3, v9, v10

    .line 107
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setPosition(FF)V

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setRadius(F)V

    .line 110
    :cond_1
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const v2, 0x3f2ac083    # 0.667f

    mul-float v11, v1, v2

    .line 112
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 113
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->x:F

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->y:F

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 117
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    invoke-virtual {v6, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 118
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v14, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v15, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const/high16 v18, -0x3ccc0000    # -180.0f

    const/high16 v19, 0x43870000    # 270.0f

    const/16 v20, 0x0

    move-object v13, v6

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 120
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fb4fdf4    # 1.414f

    mul-float/2addr v1, v2

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    move v13, v1

    move v14, v2

    .line 126
    :goto_0
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    mul-float/2addr v1, v10

    mul-float v15, v11, v10

    add-float/2addr v1, v15

    cmpl-float v1, v13, v1

    const/high16 v2, -0x1000000

    if-lez v1, :cond_2

    .line 127
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget-object v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v3, v3

    rem-int v3, v14, v3

    aget v1, v1, v3

    or-int/2addr v1, v2

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    neg-float v1, v13

    div-float v3, v1, v10

    div-float v5, v13, v10

    move-object/from16 v1, p1

    move v2, v3

    move v4, v5

    move-object v15, v6

    move-object v6, v12

    .line 131
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    float-to-double v1, v13

    float-to-double v3, v11

    const-wide v5, 0x3ff19999a0000000L    # 1.100000023841858

    int-to-float v13, v14

    const/high16 v16, 0x41a00000    # 20.0f

    div-float v13, v13, v16

    .line 132
    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->offset:F

    add-float/2addr v13, v10

    const v10, 0x40490fd0

    mul-float/2addr v13, v10

    move/from16 v21, v9

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    add-double/2addr v8, v5

    mul-double/2addr v3, v8

    sub-double/2addr v1, v3

    double-to-float v13, v1

    add-int/lit8 v14, v14, 0x1

    move-object v6, v15

    move/from16 v9, v21

    const/4 v8, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    move-object v8, v6

    move/from16 v21, v9

    .line 137
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v1, v1, v3

    or-int/2addr v1, v2

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v2, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v3, v1

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    move-object/from16 v1, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 140
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 141
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    move/from16 v2, v21

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v14, v1

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    const/high16 v18, -0x3ccc0000    # -180.0f

    const/high16 v19, 0x43870000    # 270.0f

    const/16 v20, 0x0

    move-object v13, v8

    move v10, v15

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 144
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    neg-float v1, v1

    add-float/2addr v1, v11

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v1, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    aget v0, v1, v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {v7, v8, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, -0x1

    .line 151
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {v7, v8, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lum(I)F
    .locals 2

    .line 76
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x43958000    # 299.0f

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x4412c000    # 587.0f

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42e40000    # 114.0f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public randomizePalette()V
    .locals 9

    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    const/4 v2, 0x3

    .line 85
    new-array v2, v2, [F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v3, v2, v6

    aput v3, v2, v1

    .line 86
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    .line 87
    iput v5, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v3, v1

    .line 90
    aget v3, v2, v5

    int-to-float v7, v0

    div-float v7, v4, v7

    add-float/2addr v3, v7

    aput v3, v2, v5

    .line 91
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->lum(I)F

    move-result v3

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    iget v8, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->lum(I)F

    move-result v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->darkest:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->palette:[I

    array-length v1, p0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const-string v4, "#%08x "

    .line 96
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "PlatLogoActivity"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color palette: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->offset:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->x:F

    .line 61
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->y:F

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 53
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->dp:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$PBackground;->radius:F

    return-void
.end method
